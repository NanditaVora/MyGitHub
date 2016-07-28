package com.niit.collaboration.weconnect.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.collaboration.weconnect.messaging.Message;
import com.niit.collaboration.weconnect.messaging.OutputMessage;
import com.niit.collaboration.weconnect.model.messaging.Blog;
import com.niit.collaboration.weconnect.model.security.User;
import com.niit.collaboration.weconnect.service.messaging.BlogService;
import com.niit.collaboration.weconnect.service.security.UserService;

@Controller
public class MessageController {

		@Autowired
		BlogService blogService;
		
		@Autowired
		UserService userService;
		
		@ModelAttribute
		public Blog initBlog()
		{
			return new Blog();
		}
	
	      @MessageMapping("/chat")
	      @SendTo("/topic/message")
	      
	      public OutputMessage sendMessage(Message message,Principal principal)
	      {
	    	  System.out.println(principal.getName());
	    	  return new OutputMessage(message,new Date(),principal.getName());
	      }
	      
	      
	      @RequestMapping("/user/startBlog")
	  	//public ModelAndView chat(@ModelAttribute("user") User user,BindingResult result,HttpServletRequest request)
	  	public ModelAndView blog(@ModelAttribute("blog") Blog blog)
	  	{
	  	System.out.println("loading blog page");
	  	List<Blog> bloglist = blogService.getAllBlogs();
	  	System.out.println(bloglist);
	  	ModelAndView model = new ModelAndView("blog");
	  	model.addObject("blogs",bloglist);
	  	return model;
//	  	return "redirect:/";

	  }
	      
	      @RequestMapping("/user/saveBlog")
	      public ModelAndView postBlog(@ModelAttribute Blog blog,@RequestParam("userName")String username)
	      {
	    	  User user = userService.getUserIdByName(username);
	    	  blog.setUserId(user);
	    	  blogService.savePost(blog);
	    	  return new ModelAndView("blog");
	      }
	      
	      
	}

