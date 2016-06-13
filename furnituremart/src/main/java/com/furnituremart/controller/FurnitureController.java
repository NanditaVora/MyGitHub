package com.furnituremart.controller;

 
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.io.FileUtils;

//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.furnituremart.model.Product;
import com.furnituremart.model.ProductList;
import com.furnituremart.model.product.Cart;
import com.furnituremart.model.security.User;
import com.furnituremart.service.product.CartService;
import com.furnituremart.service.security.UserService;
import com.furnituremart.dao.ProductDAO;
import com.furnituremart.dao.product.CartDAOImpl;
import com.furnituremart.dao.security.UserDAO;

 

@Controller
public class FurnitureController {
	
	@Autowired
	private
    UserService userService;
     
	private ServletContext servletContext;
	
	@Autowired
	private ProductDAO productDAO;
	
	public ProductDAO getProductDAO() {
		return productDAO;
	}
	public void setProductDAO(ProductDAO productDAO) {
		this.productDAO = productDAO;
	}
	public ServletContext getServletContext() {
		return servletContext;
	}
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	//-------------------To HOME-------------------------------
	
	@RequestMapping("/")
	public ModelAndView getHome()
	{
		return new ModelAndView("index");
	}
	
	//---------------Model ATTRIBUTES--------------------------
	
	@ModelAttribute("product")
	public Product construct()
	{
		return new Product();
	}
	@ModelAttribute("cartuser")
	public User init()
	{
		return new User();
	}
	@ModelAttribute("cart")
	public Cart create()
	{
		return new Cart();
	}
	
	
	//------------------PRODUCTS PAGES-------------------------
	
	//1. ALL Products 
	
	@RequestMapping(value={"/allproducts","/admin/allproducts","/user/allproducts"})
	public ModelAndView getProductList()
	{
		ProductList plist = productDAO.getAllProducts();
		ModelAndView model = new ModelAndView("allproducts");
	 
		model.addObject("productlist",plist.toString());
		return model;
	}
	
	//2. View Selected Product
	@RequestMapping(value={"/viewproductdetails--{productId}--product","/admin/viewproductdetails--{productId}--product","/user/viewproductdetails--{productId}--product"})
	public ModelAndView viewproductdetails(@ModelAttribute Product product,@PathVariable int productId)
	{
		
		Product P = productDAO.getProductById(productId);
		
		ModelAndView model=new ModelAndView("viewproductdetails");
		model.addObject("product",P);
		return model;
	}
	
	//3.a Add Product Page
	@RequestMapping("/admin/addproduct")
	public ModelAndView addProduct()
	{
		ModelAndView model = new ModelAndView("addproduct");
	 
		return model;
	}
	//3.b Save Product
	@RequestMapping(value={"/saveproduct","/admin/saveproduct"})
	public ModelAndView saveproduct(@Valid @ModelAttribute Product product,BindingResult result,HttpServletRequest request)
	{
		if(result.hasErrors())
			return new ModelAndView("addproduct");
		else{
			  
			productDAO.addProduct(product);
		 	File file = new File(request.getServletContext().getRealPath("./resources/images/"+ product.getProductId()+".jpg"));//---in server
			System.out.println(request.getServletContext().getRealPath("./resources/images/"+ product.getProductId()+".jpg"));
//			File file = new File("resources/images/"+ product.getProductId()+".jpg");
			System.out.println(file.getAbsolutePath() + " " + file.getName());
		
			if(!product.getImg().isEmpty())	 
			try {
				FileUtils.writeByteArrayToFile(file, product.getImg().getBytes());
				System.out.println("File Uploaded");
			} catch (IOException e) {
			e.printStackTrace();
			}	
		}
		return getProductList();
	}
	
	//4.a EDIT Product	
	
	@RequestMapping(value={"/editproduct--{productId}--product","/admin/editproduct--{productId}--product"})
	public ModelAndView editProduct(@ModelAttribute Product product,@PathVariable int productId)
	{
		Product P = productDAO.getProductById(productId);
		
		ModelAndView model=new ModelAndView("editproduct");
		model.addObject("product",P);
		model.addObject("productId",productId);
		return model;
	}
	//4.b Save Edit Changes
	@RequestMapping(value={"/updateproduct","/admin/updateproduct"})
	public ModelAndView updateproduct(@ModelAttribute("product") Product product,@ModelAttribute("productId") int productId)
	{
		
		productDAO.editProduct(product,productId);
		return getProductList();
	}
	
	//5 Delete Product
	
	@RequestMapping(value={"/deleteproduct--{productId}--product","/admin/deleteproduct--{productId}--product"})
	public ModelAndView deleteProduct(@PathVariable int productId)
	{
	
		productDAO.deleteProduct(productId);
		return getProductList();
	}
	
	//----------------------SECURITY PAGES--------------------------------
//	@Autowired
//	UserDAO userDAO;
	
	//1.Login Page
	
//	public UserDAO getUserDAO() {
//		return userDAO;
//	}
//	public void setUserDAO(UserDAO userDAO) {
//		this.userDAO = userDAO;
//	}
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
	return new ModelAndView("redirect:/loginpage?logout");//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}
	
	
	//2 New User
	@RequestMapping("/register")
	public ModelAndView newuser()
	{
		return new ModelAndView("newuser");
	}
	@RequestMapping("/registeruser")
	public ModelAndView register(@Valid @ModelAttribute User cartuser,BindingResult result,HttpServletRequest request)
	{
		if(result.hasErrors())
			return new ModelAndView("register");
		else
		{
			getUserService().registerUser(cartuser);
//			userDAO.addUser(cartuser);
			return new ModelAndView("login");
		}
	}
	
	//3 Admin Page
	
	@RequestMapping("/admin")
	public String adminPage()
	{
		return "admin";
	}
	
	//--------------------FOR CART PAGES-------------------------------
	

	@Autowired
	private CartService cartService;
	
	public CartService getCartService() {
		return cartService;
	}
	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}
	
	@RequestMapping(value={"/admin/addtocart","/user/addtocart","/addtocart"})
	public ModelAndView addToCart(@ModelAttribute Cart cart,@RequestParam("productId")int productId,@RequestParam("userName")String userName)
	{
		System.out.println(userName);
		if(userName == "")
			return new ModelAndView("/login");
		
		int userId =userService.getUserIdByName(userName); 
		cart.setUserId(userId);
		cart.setProductId(productId);
		cartService.addToCart(cart);
		List cartList = cartService.getCart(userId);
		ModelAndView model = new ModelAndView("/flow/cart");
		model.addObject("cartList",cartList.toString());
		model.addObject("cartId",cart.getCartId());
		return model;
	}
	
	@RequestMapping(value={"/user/deletecart--{cartId}--cart","/deletecart--{cartId}--cart"})
	public ModelAndView deleteCart(@PathVariable int cartId)
	{
	System.out.println("deleting cart");
		cartService.deleteCart(cartId);
		List cartList = cartService.getCart(1);
		ModelAndView model;
		System.out.println("Cart List" + cartList.isEmpty());
		if(!cartList.isEmpty())
		{
		model = new ModelAndView("/flow/cart");
		model.addObject("cartList",cartList.toString());
		}
		else
		{
			 model = new ModelAndView("allproducts");
			
		}
		return model;
	}
	@RequestMapping(value={"/admin/viewcart","/user/viewcart"})
	public ModelAndView viewCart(@RequestParam("userName")String userName)
	{
		int userId = getUserService().getUserIdByName(userName);
		List cartList = cartService.getCart(userId);
		ModelAndView model;
		System.out.println("Cart List" + cartList.isEmpty());
		if(!cartList.isEmpty())
		{
		model = new ModelAndView("/flow/cart");
		model.addObject("cartList",cartList.toString());
		model.addObject("cartId",((Cart)cartList.get(0)).getCartId());
		}
		else
		{
			 model=getProductList();
			
		}
		return model;
			
	}
	@RequestMapping(value={"/collectbillinginfo","/user/collectbillinginfo"})
	public String collectBilling(@RequestParam("cartId") int cartId, @ModelAttribute("cart") Cart cart)
	{
		Cart mycart = cartService.findById(cartId); 
		
		System.out.println(mycart);
		return "redirect:/cart?cartId="+cartId;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
//	@RequestMapping("/{cartId}")
//    public @ResponseBody Cart getCartById(@PathVariable(value = "cartId") int cartId){
//        return cartService.findById(cartId);
//    }
	
	@RequestMapping(value={"/aboutus","/admin/aboutus/","/user/aboutus"})
	public String aboutus()
	{
		return "aboutus";
	}
	@RequestMapping(value={"/contactus","/admin/contactus/","/user/contactus"})
	public String contactus()
	{
		return "contactus";
	}
	
	
	
}
	
	