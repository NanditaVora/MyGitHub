package com.furnituremart.dao.product;

import java.util.List;

import com.furnituremart.model.product.Cart;

public interface CartDAO {

	void addToCart(Cart cart);
	String updateCart(Cart cart, int cartId);
	String modifyCart(Cart cart);
	void deleteCart(int cartId);
	Cart getCartById(int cartId);
	List getCart(int userId);
}
