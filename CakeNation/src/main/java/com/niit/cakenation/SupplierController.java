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

import com.niit.cakenationbackend.dao.SupplierDAO;
import com.niit.cakenationbackend.model.Category;
import com.niit.cakenationbackend.model.Supplier;

@Controller
public class SupplierController {
Logger log = LoggerFactory.getLogger(SupplierController.class);
	
	@Autowired
	private SupplierDAO supplierDao;

	@RequestMapping(value = "/suppliers", method = RequestMethod.GET)
	public String getSupplier(Model model) {

		log.info("entering showAllGreetings");
		
		model.addAttribute("supplier", new Supplier());

		List<Supplier> suppliers = supplierDao.list();
		if (suppliers!=null && !suppliers.isEmpty()) {

			model.addAttribute("supplierlist", suppliers);
		}
		 log.info("ending AllGreetings");
		return "admin/Supplier";
	}

	@RequestMapping(value = "/addSupplier", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier) {
		log.info("entering showAllGreetings");

		Supplier existingsupplier=supplierDao.get(supplier.getSupplier_id());
		
		if(existingsupplier!=null && existingsupplier.getSupplier_id().equals(supplier.getSupplier_id())){
			
			supplierDao.update(supplier);		
		}
		else{
			supplierDao.save(supplier);

		}
		 log.info("ending AllGreetings");
		return "redirect:/suppliers";

	}

	@RequestMapping(value = "/deleteSupplier/{supplier_id}", method = RequestMethod.GET)
	public String deleteSupplier(@PathVariable("supplier_id") String id, ModelMap model) {
		log.info("Starting Delete");

		Supplier supplier=supplierDao.get(id);
        if(supplier!=null){
		supplierDao.delete(supplier);
		model.addAttribute("msg","Successfully Deleted");
        }
        else{
			model.addAttribute("msg","Category does not exist");
        }
        log.info("deleted successfully");
		return "redirect:/suppliers";
	}
	
	@RequestMapping(value = "/editSupplier/{supplier_id}" ,method=RequestMethod.GET)
	public String showEditCategory(@PathVariable("supplier_id") String id, Model model) {
		log.info("Strting updated");
		
		model.addAttribute("supplier", this.supplierDao.get(id));
		model.addAttribute("supplierlist", supplierDao.list());
		 log.info("ending updated");
		return "admin/Supplier";
	}
}


