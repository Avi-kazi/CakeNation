package com.niit.cakenation;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.niit.cakenationbackend.dao.CategoryDAO;
import com.niit.cakenationbackend.dao.SupplierDAO;
import com.niit.cakenationbackend.dao.UserDAO;

import com.niit.cakenationbackend.model.Category;
import com.niit.cakenationbackend.model.Supplier;
import com.niit.cakenationbackend.model.User;

@Controller
public class UserController {
	Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired(required=true)
	UserDAO userDao;

	@Autowired
	User user;

	
	
	@Autowired(required=true)
	private CategoryDAO categoryDao;
	
	@Autowired
	private Category category;
	@Autowired
	private Supplier supplier;
	@Autowired(required=true)
	private SupplierDAO supplierDao;
	
	@RequestMapping(value="/loginhere")
	public ModelAndView login(@RequestParam(value="userid") String userid,
			@RequestParam(value = "password") String password, HttpSession session) {
		log.debug("Starting of the method login");
		log.info("userid is {}  password is {}", userid, password);
		System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiii");
		ModelAndView mv=new ModelAndView("login");
		
	
		
	    user=userDao.isValidUser(userid, password);

		if (user!=null) {
			log.debug("Valid Credencials");
			user = userDao.get(userid);
			session.setAttribute("loggedInUser", user.getName());
			session.setAttribute("loggedInUserID", user.getUserid());
			session.setAttribute("user", user);
			if (user.getRole().equals("ROLE_ADMIN")) {
				log.debug("Logged in As Admin");
				mv.addObject("isAdmin", "true");
				session.setAttribute("supplier",supplier);
				session.setAttribute("categorylist", categoryDao.list());
				session.setAttribute("category",category);
				session.setAttribute("supplierlist", supplierDao.list());

			} /*else {
				log.debug("Logged in As a User");
				mv.addObject("isAdmin", "false");
				
				
				//fetch the cart based on userid
				cart = cartDao.get(userID);
				mv.addObject("cart", cart);
				List<Cart> cartlist = cartDao.list();
				mv.addObject("cartlist", cartlist);
				mv.addObject("cartSize", cartlist.size());
			}
*/
		} else {

			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid Credentials");
			

		}
		log.debug("Ending of the method login");
		return mv;
	}

	 
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
		session = request.getSession(true);
		session.setAttribute("category", category);
		session.setAttribute("categoryList", categoryDao.list());
	
		mv.addObject("logoutMessage", "You successfully logged out");
		mv.addObject("loggedOut", "true");
	
		return mv;
	 }


}
