package com.niit.collaboration.weconnect.dao.messaging;

import java.util.List;

import com.niit.collaboration.weconnect.model.messaging.Blog;

public interface BlogDAO {
	
	public void saveBlog(Blog blog);
	public List<Blog> getBlogList();

}
