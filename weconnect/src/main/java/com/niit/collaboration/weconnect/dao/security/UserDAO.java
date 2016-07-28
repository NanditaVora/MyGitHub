package com.niit.collaboration.weconnect.dao.security;

import com.niit.collaboration.weconnect.model.security.User;

public interface UserDAO {
	
	void addUser(User user);
	User findUser(int userId);
	User findUserByName(String userName);

}
