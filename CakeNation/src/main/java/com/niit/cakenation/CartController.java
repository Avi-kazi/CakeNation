package com.niit.cakenation;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
			log.debug("decresing cart size");
			model.addAttribute("errorMessage", "your cart is empty");
			model.addAttribute("pleasebuy","true");
		} else {
			model.addAttribute("cartlist", this.cartDao.list(loggedInUserid));
			model.addAttribute("totalAmount", cartDao.getTotalAmount(loggedInUserid)); 
			model.addAttribute("displayCart", "true");
		}

		log.debug("Ending of the method cart");

		return "/index";
	}

	@RequestMapping(value = "/myCart/add/{productid}" ,method=RequestMethod.GET)
	public String getCart(@PathVariable("productid") String productid, HttpSession session,@RequestParam("quantity") String qty, ModelMap model) {
		log.debug("Starting of the method addtoCart");
		Product product = productDao.get(productid);
		cart.setPrice(product.getPrice()*(Integer.parseInt(qty)));
		cart.setProductName(product.getProductname());
		cart.setProductid(product.getProductid());
		//cart.setQuantity(1);
		cart.setQuantity(Integer.parseInt(qty));
		
		String loggedInUserid = (String) session.getAttribute("loggedInUserID");
		if (loggedInUserid == null) {
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			loggedInUserid =auth.getName();
		}
		
		/*product = (Product) session.getAttribute("selectedproduct");
		model.addAttribute("selectedproduct", product);*/
		cart.setUserid(loggedInUserid);
		cart.setStatus('N');
		cartDao.save(cart);
		model.addAttribute("successMessage", "successfully added to cart");
		log.debug("Ending of the add method of cart");
		return "redirect:/myCart";
	}

	@RequestMapping("myCart/delete/{id}")
    public String removeCart(@PathVariable("id") long id,ModelMap model) throws Exception{
		
       try {
		cartDao.delete(id);
		model.addAttribute("message","Successfully removed");
	} catch (Exception e) {
		model.addAttribute("message",e.getMessage());
		e.printStackTrace();
	}
       //redirectAttrs.addFlashAttribute(arg0, arg1)
        return "redirect:/myCart";
    }
}
