package com.niit.shoppingkart.controllerf;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingkart.bean.ProductInfo;
import com.niit.shoppingkart.dao.ProductInfoDao;

public class ProductController {
	@Autowired
	ProductInfoDao pdtinfo;
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
	
}
