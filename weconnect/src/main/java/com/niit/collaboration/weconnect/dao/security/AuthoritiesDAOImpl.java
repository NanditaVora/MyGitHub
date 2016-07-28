package com.niit.collaboration.weconnect.dao.security;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.collaboration.weconnect.model.security.Authorities;

@Repository
public class AuthoritiesDAOImpl implements AuthoritiesDAO {
	@Autowired
	SessionFactory mysessionFactory;
	public Authorities getAuthorityById(int id) {
		Session session = mysessionFactory.openSession();
		Authorities authority = (Authorities)session.get(Authorities.class, id);
		return authority;
	}

}
