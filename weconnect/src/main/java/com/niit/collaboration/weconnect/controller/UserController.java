package com.niit.collaboration.weconnect.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.MessagingException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.collaboration.weconnect.model.security.AuthorityService;
import com.niit.collaboration.weconnect.model.security.User;
import com.niit.collaboration.weconnect.service.mail.EMailService;
import com.niit.collaboration.weconnect.service.security.UserService;


 

@Controller("userController")
public class UserController {

	@Autowired
	UserService userService;
	@Autowired
	AuthorityService authorityService;
	
	@Autowired
	EMailService emailService;
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping(value="/loginpage",method=RequestMethod.GET)
	public ModelAndView login(@RequestParam(value="error", required = false)
    String error,@RequestParam(value="logout", required = false)String logout,Model model){

		if(error != null){
		    model.addAttribute("error", "Invalid username or password");
		    System.out.println(error);
		}
		
		if (logout !=null){
		    model.addAttribute("msg", "You have been logged out successfully !!!!");
		}

		return new ModelAndView("login");
	}
	
	//1.b Logout 
	
	@RequestMapping(value="/perform_logout")
	public ModelAndView logoutPage (HttpServletRequest request, HttpServletResponse response) {
	//public ModelAndView logoutPage () {
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	System.out.println("logging out");
	if (auth != null){
		System.out.println("logging out");
	new SecurityContextLogoutHandler().logout(request, response, auth);
	}
	return new ModelAndView("redirect:/?logout");//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}
	
	@ModelAttribute
	public User initUser()
	{
		return new User();
	}
//	
	//2 New User
	@RequestMapping("/register")
	public ModelAndView newuser()
	{
		System.out.println("reached controller");
		return new ModelAndView("login");
	}
	@RequestMapping("/registeruser")
	public ModelAndView register(@ModelAttribute("user") User user,BindingResult result,HttpServletRequest request)
	{
		if(result.hasErrors())
			return new ModelAndView("login");
		//	return "login";
		else
		{
			System.out.println("Saving user");
			user.setAuthorityId(authorityService.getAuthority(2));
			userService.registerUser(user);
//			userDAO.addUser(cartuser);
			try {
				emailService.send(user, "Account Activation with weconnect", "Congratulations!! Your Account is now active with <strong>weconnect.com</strong>");
			} catch (MessagingException e) {
				System.out.println("EMail Sending Failed");
				e.printStackTrace();
			} catch (javax.mail.MessagingException e) {
				System.out.println("Sorry...EMail Sending Failed");
				e.printStackTrace();
			}
			return new ModelAndView("redirect:/");
//			return "redirect:/";
		}
	}
	
	@RequestMapping("/user/startChat")
	//public ModelAndView chat(@ModelAttribute("user") User user,BindingResult result,HttpServletRequest request)
	public ModelAndView startchat()
	{
			System.out.println("loading chart page");
			return new ModelAndView("chat");
//			return "redirect:/";
		
	}
	
	
	
	@RequestMapping("/user/discuss")
	//public ModelAndView chat(@ModelAttribute("user") User user,BindingResult result,HttpServletRequest request)
	public ModelAndView discuss()
	{
	System.out.println("loading forum page");
	return new ModelAndView("forum");
//	return "redirect:/";

}
}
