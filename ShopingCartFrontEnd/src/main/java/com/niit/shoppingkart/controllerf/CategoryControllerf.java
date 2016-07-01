package com.niit.shoppingkart.controllerf;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.bean.ProductInfo;
import com.niit.shoppingkart.bean.Supplier;
import com.niit.shoppingkart.dao.ProductDao;
import com.niit.shoppingkart.dao.ProductInfoDao;
import com.niit.shoppingkart.dao.SupplierDao;

@Controller
public class CategoryControllerf {
	@Autowired
	ProductDao catdao;
	@Autowired
	ProductInfoDao pdtinfo;
	@Autowired
	SupplierDao supdao;

	@RequestMapping("/addCategory")
	public ModelAndView addCategory(@ModelAttribute Product category) {
		System.out.println("save");
		catdao.save(category);
		ModelAndView mv=new ModelAndView("categories");
		String op="ITEM IS ADDED";
		mv.addObject("op", op);
		List<Product> catlist = catdao.list();
		mv.addObject("list", catlist);
		System.out.println("hello");
		System.out.println(catlist);
		return mv;
	 }
	
	@RequestMapping("/deletepdt")

	public ModelAndView deleteCategory(@RequestParam("key") int id) {
		System.out.println(id);
		catdao.delete(id);
	  String op;
	  op="Item is deleted";
			ModelAndView mv=  new ModelAndView("categories");
			mv.addObject("op", op);  
			List<Product> catlist = catdao.list();
			mv.addObject("list", catlist);
			System.out.println(catlist);
			return mv;
	 }
	
	@RequestMapping("/info")
	public ModelAndView getallinfo(@RequestParam("key") int id) {

			System.out.println("hello");System.out.println(pdtinfo);
			ProductInfo catlist = pdtinfo.get(id);
			System.out.println(pdtinfo);
			ModelAndView mv = new ModelAndView("/info");
			
			mv.addObject("list", catlist);
			
			System.out.println(catlist);

			return mv;

	}
	
	@RequestMapping("/updatecat")
	public ModelAndView updateCategory(@ModelAttribute Product category)
	{System.out.println("update");
	
		catdao.update(category);
		
		System.out.println("updating category");
		ModelAndView mv = new ModelAndView("/categories");
		
	    List<Product> categoryList = catdao.list();
		mv.addObject("categoryList", categoryList);
		
		return mv;
		
	}
	@RequestMapping("/categories")
	public ModelAndView getallcat() {
	List<Product> catlist = catdao.list();
		ModelAndView mv = new ModelAndView("/categories");
		mv.addObject("list", catlist);
	return mv;

	}
	
	
	
	
	//PRODUCTSSSSSSSS
@RequestMapping("/addpdt")
	public String gotopdt()
	{
		return "addpdt";
}
	@RequestMapping("/addPdt")
	public ModelAndView addpdt(@ModelAttribute ProductInfo category) {
		System.out.println(category);
		pdtinfo.update(category);
		ModelAndView mv=new ModelAndView("products");
		String op="ITEM IS ADDED";
		mv.addObject("op", op);
		List<ProductInfo> catlist = pdtinfo.list();
		mv.addObject("list", catlist);
		System.out.println(catlist);
		return mv;
	 }
	@RequestMapping("/products")
	public ModelAndView getallpdt() {
		List<ProductInfo> catlist = pdtinfo.list();
				ModelAndView mv = new ModelAndView("/products");
				
				mv.addObject("list", catlist);
				return mv;
	}
	@RequestMapping("/updatepdt")
	public ModelAndView updateProduct(@ModelAttribute ProductInfo category)
	{System.out.println("update");
	
		pdtinfo.update(category);
		
		System.out.println("updating category");
		ModelAndView mv = new ModelAndView("products");
		
	    List<ProductInfo> categoryList = pdtinfo.list();
		mv.addObject("categoryList", categoryList);
		
		return mv;
		
	}
	
	
	@RequestMapping("/deleteproduct")
	public ModelAndView deleteProduct(@RequestParam("key") int id) {
		System.out.println("welcome to delete");
		System.out.println(id);
		pdtinfo.delete(id);
	  String op;
	  op="Item is deleted";
			ModelAndView mv=  new ModelAndView("products");
			mv.addObject("op", op);  
			List<ProductInfo> catlist = pdtinfo.list();
			mv.addObject("list", catlist);
			System.out.println(catlist);
			return mv;
	 }

	
	//Suppplliierreerrrr
	
	@RequestMapping("/addsup")
	public String gotosup()
	{
		return "addsup";
}
	@RequestMapping("/addSup")
	public ModelAndView addsup(@ModelAttribute Supplier category) {
		supdao.update(category);
		ModelAndView mv=new ModelAndView("suppliers");
		String op="ITEM IS ADDED";
		mv.addObject("op", op);
		List<Supplier> catlist = supdao.list();
		mv.addObject("list", catlist);
		System.out.println(catlist);
		return mv;
	 }
	@RequestMapping("/suppliers")
	public ModelAndView getallsup() {
		List<Supplier> catlist = supdao.list();
				ModelAndView mv = new ModelAndView("/suppliers");
				
				mv.addObject("list", catlist);
				return mv;
	}
	@RequestMapping("/updatesup")
	public ModelAndView updateSup(@ModelAttribute Supplier category)
	{System.out.println("update");
	
		supdao.update(category);
		
		System.out.println("updating category");
		ModelAndView mv = new ModelAndView("suppliers");
		
	    List<Supplier> categoryList = supdao.list();
		mv.addObject("categoryList", categoryList);
		
		return mv;
		
	}
	
	
	@RequestMapping("/deletesup")
	public ModelAndView deleteSup(@RequestParam("key") int id) {
		System.out.println("welcome to delete");
		System.out.println(id);
		supdao.delete(id);
	  String op;
	  op="Item is deleted";
			ModelAndView mv=  new ModelAndView("suppliers");
			mv.addObject("op", op);  
			List<Supplier> catlist = supdao.list();
			mv.addObject("list", catlist);
			System.out.println(catlist);
			return mv;
	 }
	
}









	
	
	
	
	
	
	



