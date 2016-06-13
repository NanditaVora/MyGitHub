package com.furnituremart.dao.security;

import com.furnituremart.model.security.User;

public interface UserDAO {
	
	void addUser(User user);
	User findUser(int userId);
	User findUserByName(String userName);

}
