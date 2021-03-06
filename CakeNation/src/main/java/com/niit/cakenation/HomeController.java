package com.niit.cakenation;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.cakenationbackend.dao.CategoryDAO;
import com.niit.cakenationbackend.dao.ProductDAO;
import com.niit.cakenationbackend.dao.SupplierDAO;
import com.niit.cakenationbackend.dao.UserDAO;
import com.niit.cakenationbackend.model.Category;
import com.niit.cakenationbackend.model.Product;
import com.niit.cakenationbackend.model.Supplier;
import com.niit.cakenationbackend.model.User;



@Controller
public class HomeController {
	Logger log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	UserDAO userDao;
    @Autowired
	User user;
    @Autowired
    private Product product;
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
	@Autowired
	private ProductDAO productDao;
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
	public String getGallery(ModelMap model){
		model.put("product", product);
		return "gallery";
	}
	@RequestMapping(value = "/manage", method = RequestMethod.GET)
    public String adminPage() {
        
        return "admin/admin";
    }
	
@RequestMapping(value="/register")
public String home(ModelMap map,Map<String, Object> model) {
	//String heading="Successfully Inserted";
	User user = new User();    
    model.put("user", user);
    map.addAttribute("userlist", userDao.list());
   model.put("isUserClickedRegisterHeree","true");
    return "registration";
}
@RequestMapping(value = "/addUser", method = RequestMethod.POST)
public String addUser(@ModelAttribute("user") User user, Model model) {
	log.debug("starting add user");
	User existinguser = userDao.get(user.getUserid());

	if (existinguser != null && existinguser.getUserid().equals(user.getUserid())) {
         log.debug("user exist with this id");
         model.addAttribute("errorMessage", "User exist with this id");
		
	} else {
		user.setRole("ROLE_USER");
		userDao.save(user);
		model.addAttribute("successMessage","you successfully registered");
		log.debug("after ending user");

	}
	
	return "redirect:/register";

}

@RequestMapping(value = "edit/{userid}")
public String showEditUser(@PathVariable("userid") String id, Model model) {
	log.debug("Starting user Update");

	model.addAttribute("user", this.userDao.get(id));
	model.addAttribute("userlist", userDao.list());

	log.debug("ending udated user");
	return "registration";
}
@RequestMapping(value = "/myCart/{id}", method = RequestMethod.GET)	
public String viewProduct(@PathVariable("id") String productid,HttpSession session, ModelMap model){
	Product product=productDao.get(productid);
	
	session.setAttribute("selectedproduct",product);
	model.addAttribute("product",product);
	 log.info("ending of specific method");
	return "SpecificProduct";
}
@RequestMapping(value="/loginError",method = RequestMethod.GET)
public String loginError(Model model) {
	log.debug("Starting of the method loginError");
	model.addAttribute("errorMssage","Login Error");
	log.debug("Ending of the method loginError");
	return "error";
	
}
@RequestMapping(value="/login",method = RequestMethod.GET)
public String login(Model model){
	model.addAttribute("errorMssage","Login Error");
	return "home";
}
@RequestMapping(value="/accessDenied",method = RequestMethod.GET)
public String accessDenied(Model model)
{log.debug("Starting of the method accessDenied");
model.addAttribute("errorMessage", "you are not authorised to access this page");
log.debug("Ending of the method accessDenied");
return "error";
}
}


