package com.niit.collaboration.weconnect.service.security;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.collaboration.weconnect.dao.security.UserDAO;
import com.niit.collaboration.weconnect.dao.security.UserDAOImpl;
import com.niit.collaboration.weconnect.model.security.User;



@Service
@Transactional
public class UserService {
	
@Autowired 
UserDAO userDAO;
	 
	 public UserDAO getUserDAO() {
	return userDAO;
}

public void setUserDAO(UserDAO userDAO) {
	this.userDAO = userDAO;
}

	public UserService(){}

	public void registerUser(User user)
	{
		System.out.println(user.getUserName());
		System.out.println(getUserDAO());
		getUserDAO().addUser(user);
	}
	public User getUserIdByName(String userName)
	{
		System.out.println(userName);
		return userDAO.findUserByName(userName);//.getUserId();
	}
	
}
