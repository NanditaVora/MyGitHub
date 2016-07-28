package com.niit.collaboration.weconnect.model.messaging;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import com.niit.collaboration.weconnect.model.security.User;

@Entity
public class Blog implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int blogId;
	public int getBlogId() {
		return blogId;
	}

	public void setBlogId(int blogId) {
		this.blogId = blogId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUserId() {
		return userId;
	}

	public void setUserId(User userId) {
		this.userId = userId;
	}

	String title;
	String content;
	
	@ManyToOne(cascade=javax.persistence.CascadeType.ALL)
	User userId;
	
	public String toString()
	{
		return "{title : '" + title + "', content : '" + content + "'}";
	}
}
