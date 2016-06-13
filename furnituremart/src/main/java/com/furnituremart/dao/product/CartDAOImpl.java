package com.furnituremart.dao.product;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.furnituremart.dao.ProductDAOImpl;
import com.furnituremart.model.Product;
import com.furnituremart.model.product.Cart;
import com.furnituremart.service.ProductService;


@Repository
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	SessionFactory mySessionFactory;

	public SessionFactory getMySessionFactory() {
		return mySessionFactory;
	}

	public void setMySessionFactory(SessionFactory mySessionFactory) {
		this.mySessionFactory = mySessionFactory;
	}

	public void addToCart(Cart cart) {
		Session session=mySessionFactory.openSession();
		 
		Product product = (Product)session.get(Product.class, cart.getProductId());
		cart.setName(product.getName());
		cart.setPrice(product.getPrice());
		session.save(cart);
		
	}

	public String updateCart(Cart c, int cartId) {
		Session session=mySessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class,cartId);
		 
		cart.setStreetNo(c.getStreetNo());
		cart.setHouseNo(c.getHouseNo());
		cart.setCity(c.getCity());
		cart.setPhone(c.getPhone());
		 
		 
		session.update(cart);
		 
		session.close();
		 
		
		return "success";
	}

	public void deleteCart(int cartId) {
		Session session=mySessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class,cartId);
		session.delete(cart);
	//	session.flush();
		session.close();
	}

	public Cart getCartById(int cartId) {
		Session session=mySessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class, cartId);
		if(cart!=null)
			return cart;
		else
		return null;
	}

	public List getCart(int userId) {
		Session session=mySessionFactory.openSession();
		Criteria criteria = session.createCriteria(Cart.class);
		criteria=criteria.add(Restrictions.eq("userId",userId));
		return criteria.list();		
	}

	
	public boolean validate(int cartId)
	{
		Session session = mySessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class, cartId);
		if (cart!=null)
			return true;
		else
			return false;
	}
	
	public String modifyCart(Cart cart) {
		System.out.println("Updating Cart");
		Session session=mySessionFactory.openSession();
		
		Criteria c = session.createCriteria(Cart.class);
		c.add(Restrictions.eq("userId", cart.getUserId()));
		List<Cart> cartUser = c.list();
		System.out.println(cartUser);
		for(Cart user : cartUser)
		{
			user.setStreetNo(cart.getStreetNo());
			user.setCity(cart.getCity());
			user.setHouseNo(cart.getHouseNo());
			user.setZip(cart.getZip());
			user.setPhone(cart.getPhone());
			session.update(user);
		}
		//session.saveOrUpdate(cart);
		session.flush();
		return "success";
	}
	
}
