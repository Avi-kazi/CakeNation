package com.niit.cakenation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.cakenationbackend.dao.CategoryDAO;
import com.niit.cakenationbackend.dao.ProductDAO;
import com.niit.cakenationbackend.dao.SupplierDAO;
import com.niit.cakenationbackend.model.Category;
import com.niit.cakenationbackend.model.Product;
import com.niit.cakenationbackend.model.Supplier;

@Controller
public class AdminController {
	private Logger log=LoggerFactory.getLogger(AdminController.class);
	

	
	
	@RequestMapping("/manageCategories")
	public ModelAndView categories(Category category,CategoryDAO categoryDao) {
		log.debug("Starting of managecategories");
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("category", category) ;
		mv.addObject("isAdminClickedCategories", "true");
		mv.addObject("categorylist", categoryDao.list());
		log.debug("Ending of managecategories");
		return mv;
	}

	@RequestMapping("/manageProducts")
	public ModelAndView products(Category category,ProductDAO productDao,CategoryDAO categoryDao,SupplierDAO supplierDao) {
		log.debug("Starting of manageproducts");
		ModelAndView mv = new ModelAndView("index");
		//mv.addObject("product", product);
		mv.addObject("category", category) ;
		//mv.addObject("supplier", supplier);
		mv.addObject("isAdminClickedProducts", "true");
		mv.addObject("productlist", productDao.list());
		mv.addObject("categorylist", categoryDao.list());
		mv.addObject("supplierlist", supplierDao.list());
		return mv;
	}

	@RequestMapping("/manageSuppliers")
	public ModelAndView products(SupplierDAO supplierDao) {
		ModelAndView mv = new ModelAndView("index");
		//mv.addObject("supplier", supplier);
		
		mv.addObject("isAdminClickedSuppliers", "true");
		mv.addObject("supplierlist", supplierDao.list());
		return mv;
	}



}
