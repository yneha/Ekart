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
import com.niit.shoppingkart.dao.ProductDao;
import com.niit.shoppingkart.dao.ProductInfoDao;

@Controller
public class CategoryControllerf {
	@Autowired
	ProductDao catdao;
	@Autowired
	ProductInfoDao pdtinfo;

	@RequestMapping("/addCategory")
	public ModelAndView addCategory(@ModelAttribute Product category) {
		catdao.update(category);
		ModelAndView mv=new ModelAndView("categories");
		String op="ITEM IS ADDED";
		mv.addObject("op", op);
		List<Product> catlist = catdao.list();
		mv.addObject("list", catlist);
		System.out.println(catlist);
		return mv;
	 }
	@RequestMapping("/addpdt")
	public String gotopdt()
	{
		return "addpdt";
	}
	@RequestMapping("/addPdt")
	public ModelAndView addpdt(@ModelAttribute ProductInfo category) {
		pdtinfo.update(category);
		ModelAndView mv=new ModelAndView("info");
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
	
	@RequestMapping("/updatepdt")
	public ModelAndView updateCategory(@ModelAttribute("category") ArrayList<Product> categories)
	{
		Product c =categories.get(0);
		catdao.update(c);
		
		System.out.println("updating category");
		ModelAndView mv = new ModelAndView("/categoryList");
		
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
	
	
}









	
	
	
	
	
	
	



