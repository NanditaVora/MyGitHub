package com.furnituremart.model.security;

 
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotEmpty;



@Entity
public class User implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int userId;
	@NotEmpty(message="UserName cannot be left Blank")
	private String userName;
	@NotEmpty(message="Password cannot be left Blank")
	private String password;
	
	public int getUserId() {
		return userId;
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
