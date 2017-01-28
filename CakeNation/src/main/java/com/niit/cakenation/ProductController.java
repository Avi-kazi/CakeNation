package com.niit.cakenation;

import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;

import com.niit.cakenationbackend.dao.CategoryDAO;
import com.niit.cakenationbackend.dao.ProductDAO;
import com.niit.cakenationbackend.dao.SupplierDAO;
import com.niit.cakenationbackend.model.Category;
import com.niit.cakenationbackend.model.Product;
import com.niit.cakenationbackend.model.Supplier;
import com.niit.utility.FileUtil;

@Controller
public class ProductController {
Logger log = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductDAO productDao;
	@Autowired
	private CategoryDAO categoryDao;
	@Autowired
	private SupplierDAO supplierDao;
	
	@RequestMapping(value = "/manageproducts", method = RequestMethod.GET)
	public String getProduct(Model model) {

		log.debug("entering showAllGreetings");
		
		model.addAttribute("isAdminClickedProducts", "true");
        List<Category> categories=categoryDao.list();
        List<Supplier> suppliers=supplierDao.list();
		List<Product> products = productDao.list();
		
		//if (products!=null && !products.isEmpty()) {
			
			model.addAttribute("product", new Product());
			
			model.addAttribute("productlist", products);
			model.addAttribute("categorylist",categories);
			model.addAttribute("supplierlist",suppliers);
			log.debug("Ending Greetings");
		//}
			
		return "admin/Product";
	}

	@RequestMapping(value = "/manageaddProduct", method= RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product ) {
		log.debug("starting add product");
		
		if((productDao.get(product.getProductid()))==null)
		{
			MultipartFile image=product.getFile();
			
			FileUtil.upload("D:/Ws/CakeNation/src/main/webapp/resources/images/", image, product.getProductid()+".jpg");
			productDao.save(product);
		}
		else{
			productDao.saveOrupdate(product);
		}
		 log.debug("ending Add Product");
		return "redirect:/manageproducts";
	}

	@RequestMapping(value = "/manageproduct/delete/{productid}", method = RequestMethod.GET)
	public String deleteProduct(@PathVariable("productid")String id, ModelMap model) {
		log.debug("Starting delete Product");
		Product product=productDao.get(id);
        if(product!=null){
			productDao.delete(product);
			model.addAttribute("msg","Successfully Deleted");
        }
        else{
			model.addAttribute("msg","Product does not exist");
        }
        log.debug("ending Delete Product");
		return "redirect:/manageproducts";
	}
	
	@RequestMapping(value = "/manageedit/{productid}", method = RequestMethod.GET)
	public String showEditProduct(@PathVariable("productid") String id, ModelMap model ) {
		log.debug("Starting Updating product");
		//ModelAndView mv=new ModelAndView("Product");  
		Product product=this.productDao.get(id);
		model.addAttribute("product", this.productDao.get(id));
		model.addAttribute("categorylist",this.categoryDao.list());
		model.addAttribute("productlist",this.productDao.list());
		model.addAttribute("supplierlist",this.supplierDao.list());
		 log.debug("ending Updating Product");
		return "admin/Product";
	}
	

}
