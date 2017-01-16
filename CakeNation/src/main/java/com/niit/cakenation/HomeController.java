package com.niit.cakenation;

import java.util.List;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.cakenationbackend.dao.CategoryDAO;
import com.niit.cakenationbackend.dao.SupplierDAO;
import com.niit.cakenationbackend.dao.UserDAO;
import com.niit.cakenationbackend.model.Category;
import com.niit.cakenationbackend.model.Supplier;
import com.niit.cakenationbackend.model.User;



@Controller
public class HomeController {
	Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	UserDAO userDao;
    @Autowired
	User user;
    @Autowired
	private CategoryDAO categoryDao;
	@Autowired
	private Category category;
	@Autowired
	private Supplier supplier;
	@Autowired
	private SupplierDAO supplierDao;
	@Autowired 
	private ServletContext servletContext;
	@RequestMapping("/")
	public String getHome(){
		List<String> listCategoryNames=categoryDao.categoryNameList();
		servletContext.setAttribute("listcategorynames",listCategoryNames);
		return "home";
	}
	@RequestMapping("/about")
	public String getAbout(){
		return "about";
	}
	@RequestMapping("/contact")
	public String getContact(){
		return "contact";
	}
	
	@RequestMapping("/home")
	public String getHomeee(){
		return "home";
	}
	@RequestMapping("/gallery")
	public String getGallery(){
		return "user/gallery";
	}
	
@RequestMapping(value="/register")
public ModelAndView registerUser(@ModelAttribute User user) {
	ModelAndView mv  = new ModelAndView("/registration");
	if(user!=null){
	userDao.saveOrUpdate(user);
	}
	else{
		System.out.println(getHome());
	}
	mv.addObject("successMessage", "You are successfully register");
	
	return mv;
}




@RequestMapping("/registerHere")
public ModelAndView registerHere(@ModelAttribute("userForm") User user, Model model) {
	ModelAndView mv = new ModelAndView("/registration");
	mv.addObject("user", user);
	mv.addObject("isUserClickedRegisterHere", "true");
	return mv;
}
}

