package com.niit.cakenationbackend;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.cakenationbackend.dao.SupplierDAO;
import com.niit.cakenationbackend.model.Supplier;



public class SupplierTest {

	@Autowired
	static Supplier supplier;
	@Autowired
	static SupplierDAO supplierDao;
	
	 static AnnotationConfigApplicationContext context;
	

	@BeforeClass
	public static void init(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit.cakenationbackend");
		context.refresh();
	
		supplierDao=(SupplierDAO) context.getBean("supplierDao");
		supplier=(Supplier)context.getBean("supplier");
	
		
	}
	@Test
	public void addSupplierTestCase()
	{
		
		supplier.setSupplier_id("SP01");
		supplier.setSupplier_name("Monginis");
		supplier.setSupplier_address("Kolkata");
	
	assertEquals("addsuppliertestcase",supplierDao.save(supplier),true);

	}
@Test
	public void deleteSupplierTestCase()
	{
		
	supplier.setSupplier_id("SP01");
	supplier.setSupplier_name("Monginis");
	supplier.setSupplier_address("Kolkata");
	supplierDao.delete(supplier);
	assertEquals("deleteSupplierTestCase",supplierDao.delete(supplier),true);

	}
	
	@Test
	public void listSupplierTestCase()
	{
		
		List<Supplier> listsupplier=supplierDao.list();
		int rowcount=listsupplier.size();
		assertEquals("listsupplierTestCase",rowcount,2);
		
		
	}
	
	@Test
	public void getSupplierTestCase()
	{
		
		supplier=supplierDao.get("SP01");
		
		assertEquals(supplier.getSupplier_name(),"Monginis");
		
		
	}

}
