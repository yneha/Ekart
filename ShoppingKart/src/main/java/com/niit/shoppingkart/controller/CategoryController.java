package com.niit.shoppingkart.controller;

import java.util.HashMap;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.shoppingkart.bean.Category;
import com.niit.shoppingkart.dao.CategoryDao;

@Controller
public class CategoryController {
	@Autowired
	CategoryDao catdao;

	@RequestMapping("/categories")
	public ModelAndView getallcat() {

		List<Category> catlist = catdao.getallCategory();
		ModelAndView mv = new ModelAndView();
		Gson gson = new Gson();
		String json = gson.toJson(catlist);

		mv.addObject("list", json);

		return mv;

	}
}
