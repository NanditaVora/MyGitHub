package com.niit.collaboration.weconnect.dao.messaging;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.collaboration.weconnect.model.messaging.Blog;


@Repository
public class BlogDAOImpl implements BlogDAO {

	@Autowired
	SessionFactory mysessionFactory;
	@Transactional
	public void saveBlog(Blog blog) {
		Session session = mysessionFactory.openSession();
		session.save(blog);
		session.close();
	}
	@Override
	public List<Blog> getBlogList() {
		Session session = mysessionFactory.openSession();
		return session.createCriteria(Blog.class).list();
	}

}
