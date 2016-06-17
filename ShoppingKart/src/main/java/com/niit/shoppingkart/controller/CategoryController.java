package com.niit.shoppingkart.controller;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingkart.bean.Category;
import com.niit.shoppingkart.dao.CategoryDao;


@Controller
public class CategoryController {
	@Autowired
	CategoryDao catdao;
	
	JSONObject obj = new JSONObject();
	@RequestMapping("/categories")
		public ModelAndView getallcat()
	{
		
		List<Category> catlist=catdao.getallCategory();
		ModelAndView mv=new ModelAndView();
		obj.put("list", catlist);
		System.out.println();
		mv.addObject("list",obj);
		
		return mv;

}}


