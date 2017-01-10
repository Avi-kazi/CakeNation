package com.niit.cakenationbackend;

import static org.junit.Assert.*;

import java.util.List;

import org.hibernate.SessionFactory;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.cakenationbackend.dao.ProductDAO;
import com.niit.cakenationbackend.model.Product;

public class ProductTest {

	@Autowired
	static ProductDAO productDao;
	
	@Autowired
	static Product product;
	
	static AnnotationConfigApplicationContext context;
	@Autowired
	static private SessionFactory sessionFactory;

	
	@BeforeClass
	public static void init(){
	
	context=new AnnotationConfigApplicationContext();
	context.scan("com.niit.cakenationbackend");
	context.refresh();
	productDao= (ProductDAO) context.getBean("productDao");
	product= (Product)context.getBean("product");
	
	}
	@Test
	public void addProductTestCase()
	{
		
		product.setProductid("PR02");
		product.setProductname("Angel Food Cake");
		product.setDescription("Having Fruit & Nutss..");
		product.setPrice(550);
	product.setCategory_id("CG01");
	product.setSupplier_id("SP01");

	assertEquals("addproducttestcase",productDao.save(product),true);

	}
	
	@Test
	public void deleteProductTestCase()
	{
		product.setProductid("PR02");
		product.setProductname("Angel Food Cake");
		product.setDescription("Having Fruit & Nutss..");
		product.setPrice(550);
	product.setCategory_id("CG01");
	product.setSupplier_id("SP01");
	
	assertEquals("deleteCategoryTestCase",productDao.delete(product),true);

	}
@Test
	public void listCategoryTestCase()
	{
		
		List<Product> listproduct=productDao.list();
		int rowcount=listproduct.size();
		assertEquals("listproductTestCase",rowcount,3);
		

	}
	
	@Test
	public void getProductTestCase()
	{
		
		product=productDao.get("PR02");
		
		assertEquals(product.getProductname(),"Angel Food Cake");
		
		
	}
	

}
