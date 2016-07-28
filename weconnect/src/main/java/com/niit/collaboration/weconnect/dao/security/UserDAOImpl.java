package com.niit.collaboration.weconnect.dao.security;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.collaboration.weconnect.model.security.Authorities;
import com.niit.collaboration.weconnect.model.security.User;

@Transactional
@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	SessionFactory mysessionFactory;
	
	public SessionFactory getMysessionFactory() {
		return mysessionFactory;
	}

	public void setMysessionFactory(SessionFactory mysessionFactory) {
		this.mysessionFactory = mysessionFactory;
	}

	public void addUser(User user) {
		System.out.println(mysessionFactory);
		Session session = mysessionFactory.openSession();
		
		//user.setAuthorityId(2);
		session.save(user);
		session.flush();
		session.close();
		session=mysessionFactory.openSession();
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
