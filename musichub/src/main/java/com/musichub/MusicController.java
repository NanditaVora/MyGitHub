package com.musichub;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
 



@Controller
public class MusicController {
@RequestMapping("/index.html")
public String getHome(org.springframework.ui.Model model)
{
	 
	return "index";
}
@RequestMapping("/contactus.html")
public String getContact(org.springframework.ui.Model model)
{
	 
	return "contactus";
}
@RequestMapping("/signup.html")
public String getSignup(org.springframework.ui.Model model)
{
	 
	return "signup";
}
@RequestMapping("/login.html")
public String getLogin(org.springframework.ui.Model model)
{
	 
	return "login";
}
@RequestMapping("/aboutus.html")
public String getAboutUs(org.springframework.ui.Model model)
{
	 
	return "aboutus";
}
@RequestMapping("/products.html")
public String getAllProducts(org.springframework.ui.Model model)
{
	 
	return "products";
}
}
