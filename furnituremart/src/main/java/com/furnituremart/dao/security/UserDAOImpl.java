package com.furnituremart.dao.security;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.furnituremart.model.security.Authorities;
import com.furnituremart.model.security.User;
@Repository("userDAOImpl")
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory mysessionFactory;
	
	public SessionFactory getMysessionFactory() {
		return mysessionFactory;
	}

	public void setMysessionFactory(SessionFactory mysessionFactory) {
		this.mysessionFactory = mysessionFactory;
	}

	public void addUser(User user) {
		Session session = mysessionFactory.openSession();
		session.save(user);
		session.flush();
		session.close();
		session=mysessionFactory.openSession();
		Authorities authority = new Authorities();
		authority.setRolename("ROLE_USER");
		authority.setUserId(user);
		session.save(authority);
		session.flush();
	}

	public User findUser(int userId) {
		// TODO Auto-generated method stub
		return (User)mysessionFactory.getCurrentSession().get(User.class, userId);
	}

	public User findUserByName(String userName) {
		Session session=mysessionFactory.openSession();
		Criteria c = session.createCriteria(User.class);
		c.add(Restrictions.eq("userName", userName));
		List<User> user = c.list();
		
		return user.get(0);
	}

}
