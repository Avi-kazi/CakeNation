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
          model.addAttribute("isAdminClickedCategories", "true");
		List<Category> categories = categoryDao.list();
		if (!categories.isEmpty()) {

			model.addAttribute("categorylist", categories);
		}
		log.debug("ending AllGreetings");
		return "admin/Category";
	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category, Model model) {
		log.debug("starting add category");
		Category existingcategory = categoryDao.get(category.getId());

		if (existingcategory != null && existingcategory.getId().equals(category.getId())) {

			categoryDao.update(category);
		} else {
			categoryDao.save(category);

		}
		log.debug("after ending category");
		return "redirect:/categories";

	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String deleteCategory(@PathVariable("id") String id, ModelMap model) {
		log.debug("start to delete category");
		Category category = categoryDao.get(id);
		if (category != null) {
			categoryDao.delete(category);
			model.addAttribute("msg", "Successfully Deleted");
		} else {
			model.addAttribute("msg", "Category does not exist");
		}
		log.debug("deleted successfully");
		return "redirect:/categories";
	}

	@RequestMapping(value = "edit/{id}")
	public String showEditCategory(@PathVariable("id") String id, Model model) {
		log.debug("Updated category");

		model.addAttribute("category", this.categoryDao.get(id));
		model.addAttribute("categorylist", categoryDao.list());

		log.debug("ending udated category");
		return "admin/Category";
	}

}
