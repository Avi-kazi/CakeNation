package com.niit.cakenation;

import java.util.List;

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

import com.niit.cakenationbackend.dao.CategoryDAO;
import com.niit.cakenationbackend.model.Category;

@Controller
public class CategoryController {
	Logger log = LoggerFactory.getLogger(CategoryController.class);
	@Autowired
	private CategoryDAO categoryDao;
	@Autowired
	private Category category;

	@RequestMapping(value = "/categories", method = RequestMethod.GET)
	public String getCategory(Model model) {

		log.debug("entering showAllGreetings");
		model.addAttribute("category", new Category());

		List<Category> categories = categoryDao.list();
		if (!categories.isEmpty()) {

			model.addAttribute("categorylist", categories);
		}
		log.debug("ending AllGreetings");
		return "admin/Category";
	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category) {
		log.debug("starting add category");
		//System.out.println("test controll");
		categoryDao.save(category);
		log.debug("ending add category");
		return "redirect:/categories";

	}

	@RequestMapping(value = "delete/{category_id}", method = RequestMethod.GET)
	public String deleteCategory(@PathVariable("category_id")  String id, ModelMap model) {
		log.debug("start to delete category");
		Category category=categoryDao.get(id);
        if(category!=null){
		categoryDao.delete(category);
		model.addAttribute("msg","Successfully Deleted");
        }
        else{
			model.addAttribute("msg","Category does not exist");
        }
        log.debug("deleted successfully");
		return "redirect:/categories";
	}

	@RequestMapping(value = "edit/{category_id}")
	public String showEditCategory(@PathVariable("category_id") String id, Model model) {
		log.debug("Updated category");
		
		model.addAttribute("category", this.categoryDao.get(id));
		model.addAttribute("categoryupdate", categoryDao.saveOrUpdate(category));
		log.debug("ending udated category");
		return "admin/Category";
	}
	
}


