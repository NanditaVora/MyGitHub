package com.niit.collaboration.weconnect.model.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.collaboration.weconnect.dao.security.AuthoritiesDAO;

@Service
public class AuthorityService {
	
	@Autowired
	AuthoritiesDAO authorityDAO;
	public Authorities getAuthority(int id)
	{
		return authorityDAO.getAuthorityById(id);
	}
}
