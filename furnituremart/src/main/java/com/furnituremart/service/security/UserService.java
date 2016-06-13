package com.furnituremart.service.security;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.UsesSunHttpServer;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furnituremart.dao.security.UserDAO;
import com.furnituremart.dao.security.UserDAOImpl;
import com.furnituremart.model.security.User;

@Service("userService")
@Transactional
public class UserService {
	
@Autowired
 UserDAOImpl userDAOImpl;
	 
	public UserDAOImpl getUserDAO() {
	return userDAOImpl;
}
public void setUserDAO(UserDAOImpl userDAO) {
	this.userDAOImpl = userDAO;
}
	public void registerUser(User user)
	{
		userDAOImpl.addUser(user);
	}
	public int getUserIdByName(String userName)
	{
		System.out.println(userName);
		return userDAOImpl.findUserByName(userName).getUserId();
	}
	
}
