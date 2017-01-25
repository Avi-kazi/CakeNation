package com.niit.cakenation;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.cakenationbackend.dao.CartDAO;
import com.niit.cakenationbackend.dao.ProductDAO;
import com.niit.cakenationbackend.model.Cart;
import com.niit.cakenationbackend.model.Product;

@Controller
public class CartController {
	private Logger log=LoggerFactory.getLogger(CartController.class);
	@Autowired
	private CartDAO cartDao;
	@Autowired
	Cart cart;
	@Autowired
	private ProductDAO productDao;
	@Autowired
	Product product;
	
	@Autowired
	private  HttpSession session;
	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String myCart(Model model) {
		log.debug("Starting of the method of cart");
		model.addAttribute("cart", new Cart());
		// get thelogged in userid
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
	    int cartSize =cartDao.list(loggedInUserid).size();
		
		if (cartSize==0) {
			model.addAttribute("errorMessage", "your cart is empty");
		} else {
			model.addAttribute("cartlist", this.cartDao.list(loggedInUserid));
			model.addAttribute("totalAmount", cartDao.getTotalAmount(loggedInUserid)); 
			model.addAttribute("displayCart", "true");
		}

		log.debug("Ending of the method cart");

		return "/index";
	}

	@RequestMapping(value = "/selectedproduct/myCart/add/{productid}")
	public String getCart(@PathVariable("productid") String productid, HttpSession session, ModelMap model) {
		log.debug("Starting of the method addtoCart");
		Product product = productDao.get(productid);
		cart.setPrice(product.getPrice());
		cart.setProductName(product.getProductname());
		cart.setProductid(product.getProductid());
		//cart.setQuantity();
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		product = (Product) session.getAttribute("selectedproduct");
		model.addAttribute("selectedproduct", product);
		cart.setUserid(loggedInUserid);
		cart.setStatus('N');
		cartDao.save(cart);
		model.addAttribute("successMessage", "successfully added to cart");
		log.debug("Ending of the add method of cart");
		return "redirect:/myCart";
	}
}
