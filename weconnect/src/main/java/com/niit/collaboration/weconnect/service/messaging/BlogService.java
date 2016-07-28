package com.niit.collaboration.weconnect.service.messaging;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.collaboration.weconnect.dao.messaging.BlogDAO;
import com.niit.collaboration.weconnect.model.messaging.Blog;

@Service
public class BlogService {
	@Autowired
	BlogDAO blogDAO;
	
	public void savePost(Blog blog)
	{
		blogDAO.saveBlog(blog);
	}
	public List<Blog> getAllBlogs()
	{
		return blogDAO.getBlogList();
	}
}
