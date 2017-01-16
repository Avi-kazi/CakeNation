package com.niit.cakenation;

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

	@Autowired
	private Product product;

	@Autowired
	private Supplier supplier;

	@Autowired
	private Category category;
	
	@Autowired
	private ProductDAO productDao;
	
	@Autowired
	private CategoryDAO categoryDao;
	
	@Autowired
	private SupplierDAO supplierDao;
	@RequestMapping("/manageCategories")
	public ModelAndView categories() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("category", category) ;
		mv.addObject("isAdminClickedCategories", "true");
		mv.addObject("categoryList", categoryDao.list());
		return mv;
	}

	@RequestMapping("/manageProducts")
	public ModelAndView suppliers() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("product", product);
		mv.addObject("category", category) ;
		mv.addObject("supplier", supplier);
		mv.addObject("isAdminClickedProducts", "true");
		mv.addObject("productList", productDao.list());
		mv.addObject("categoryList", categoryDao.list());
		mv.addObject("supplierList", supplierDao.list());
		return mv;
	}

	@RequestMapping("/manageSuppliers")
	public ModelAndView products() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("supplier", supplier);
		
		mv.addObject("isAdminClickedSuppliers", "true");
		mv.addObject("supplierList", supplierDao.list());
		return mv;
	}



}
