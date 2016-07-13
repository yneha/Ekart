package com.niit.shoppingkart.controllerf;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.SystemPropertyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.shoppingkart.bean.Product;
import com.niit.shoppingkart.bean.ProductInfo;
import com.niit.shoppingkart.bean.Supplier;
import com.niit.shoppingkart.bean.User;
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
		
		catdao.save(category);
		ModelAndView mv=new ModelAndView("/categories");
		String op="ITEM IS ADDED";
		mv.addObject("op", op);
		List<Product> catlist = catdao.showlist();
	mv.addObject("list", catlist);
return mv;
	 }
	@RequestMapping("/editcat")
	public String editCategory(@RequestParam("key") String id, Model model){
    	System.out.println("editCategory");
        model.addAttribute("category", this.catdao.get(id));
      
        return "addcat";
    }
	

	
	@RequestMapping("/deletepdt")

	public ModelAndView deleteCategory(@RequestParam("key") String id) {
		System.out.println(id);
		catdao.delete(id);
	  String op;
	  op="Item is deleted";
			ModelAndView mv=  new ModelAndView("categories");
			mv.addObject("op", op);  
			List<Product> catlist = catdao.showlist();
			mv.addObject("list", catlist);
			System.out.println(catlist);
			return mv;
	 }
	
	@RequestMapping("/info")
	public ModelAndView getallinfo(@RequestParam("key") String id) {

			System.out.println("hello");System.out.println(pdtinfo);
			ProductInfo catlist = pdtinfo.get(id);
			System.out.println(pdtinfo);
			ModelAndView mv = new ModelAndView("/info");
			
			mv.addObject("list", catlist);
			
			System.out.println(catlist);

			return mv;

	}
	
	@RequestMapping("/categories")
	public ModelAndView getallcat() {
	List<Product> catlist = catdao.showlist();
	
ModelAndView mv = new ModelAndView("/categories");
		mv.addObject("list", catlist);
		
	return mv;

	}
	@RequestMapping("/retrive")
	public ModelAndView getalldel() {
	List<Product> catlist = catdao.retrivelist();
	
ModelAndView mv = new ModelAndView("/retrive");
		mv.addObject("list", catlist);
		
	return mv;

	}
	@RequestMapping("/retrivedata")
	public ModelAndView retrivedel(@RequestParam("key") String id) {
		catdao.retrive(id);
	List<Product> catlist = catdao.showlist();
	
ModelAndView mv = new ModelAndView("/categories");
		mv.addObject("list", catlist);
		
	return mv;

	}
	
	
	@RequestMapping("/searchcat")
	public ModelAndView getsearchcat(@RequestParam("cn") String catname) {

			System.out.println("hello");
			List<Product> catlist = catdao.gets(catname);
			System.out.println(catname);
			System.out.println(catdao);
			ModelAndView mv = new ModelAndView("/categories");
			
			mv.addObject("list", catlist);
			
			System.out.println(catlist);

			return mv;

	}
	
	//PRODUCTSSSSSSSS
	
	
	
	@RequestMapping("/search")
	public ModelAndView getsearch(@RequestParam("cn") String name) {

			System.out.println("hello");
			List<ProductInfo> catlist = pdtinfo.gets(name);
			System.out.println(name);
			System.out.println(pdtinfo);
			ModelAndView mv = new ModelAndView("/products");
			
			mv.addObject("list", catlist);
			
			System.out.println(catlist);

			return mv;

	}
	

@RequestMapping("/addpdt")
public String viewpdtadd(Map<String, Object> model,Model modell) {
	 System.out.println("welcomee to addpdt");
   ProductInfo product = new ProductInfo();
  
	modell.addAttribute("category", new Product());
	modell.addAttribute("supplier", new Supplier());
	
	modell.addAttribute("categoryList", this.catdao.showlist());
	modell.addAttribute("supplierList", this.supdao.showlist());
   model.put("product", product);
   return "addpdt";
}
	@RequestMapping("/addPdt")
	public String addpdt(@ModelAttribute("product") ProductInfo product) {
		System.out.println("welcome to adding..");
		Product category = catdao.getByName(product.getCategory().getCatname());
		System.out.println(category);
		

		Supplier supplier = supdao.getByName(product.getSupplier().getS_name());
		System.out.println(supplier);
		System.out.println("saving infooo..");
		System.out.println();
		
		product.setCategory(category);
		product.setSupplier(supplier);
		product.setCat_id(category.getCatid());
		product.setSup_id(supplier.getS_id());
		
		
		pdtinfo.update(product);
		
		return "redirect:/products";
		}
	@RequestMapping("/products")
	public String  getallpdt(Model model) {
		System.out.println("welcome to display pdt");
		model.addAttribute("product", new ProductInfo());
		model.addAttribute("category", new Product());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.pdtinfo.showlist());
		model.addAttribute("categoryList", this.catdao.showlist());
		model.addAttribute("supplierList", this.supdao.showlist());
		return "products";

		
				
				
	}
	@RequestMapping("/updatepdt")
	public ModelAndView updateProduct(@ModelAttribute ProductInfo category)
	{System.out.println("update");
	
		pdtinfo.update(category);
		
		System.out.println("updating category");
		ModelAndView mv = new ModelAndView("products");
		
	    List<ProductInfo> categoryList = pdtinfo.showlist();
		mv.addObject("categoryList", categoryList);
		
		return mv;
		
	}
	
	@RequestMapping("/editpdt")
	public String editpdt(@RequestParam("key") String id, Model model){
    	System.out.println("editCategory");
        model.addAttribute("product", this.pdtinfo.get(id));
        
        model.addAttribute("category", this.catdao.showlist());
		model.addAttribute("supplier", this.supdao.showlist());
        return "addpdt";
    }
	@RequestMapping("/deleteproduct")
	public ModelAndView deleteProduct(@RequestParam("key") String id) {
		System.out.println("welcome to delete");
		System.out.println(id);
		pdtinfo.delete(id);
	  String op;
	  op="Item is deleted";
			ModelAndView mv=  new ModelAndView("products");
			mv.addObject("op", op);  
			List<ProductInfo> catlist = pdtinfo.showlist();
			mv.addObject("list", catlist);
			System.out.println(catlist);
			return mv;
	 }

	
	//Suppplliierreerrrr
	
	@RequestMapping("/addsup")
	public ModelAndView addsup() 
	{
	
		ModelAndView mv=new ModelAndView("addsup");
	
		return mv;
	}
	@RequestMapping("/addSup")
	public ModelAndView addsup(@ModelAttribute Supplier category) {
		supdao.update(category);
		ModelAndView mv=new ModelAndView("suppliers");
		String op="ITEM IS ADDED";
		mv.addObject("op", op);
		List<Supplier> catlist = supdao.showlist();
		mv.addObject("list", catlist);
		System.out.println(catlist);
		return mv;
	 }
	@RequestMapping("/editsup")
	public String editsup(@RequestParam("key") String id, Model model){
    	System.out.println("editCategory");
        model.addAttribute("category", this.supdao.get(id));
      
        return "addsup";
    }
	@RequestMapping("/suppliers")
	public ModelAndView getallsup() {
		List<Supplier> catlist = supdao.showlist();
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
		
	    List<Supplier> categoryList = supdao.showlist();
		mv.addObject("categoryList", categoryList);
		
		return mv;
		
	}
	
	
	@RequestMapping("/deletesup")
	public ModelAndView deleteSup(@RequestParam("key") String id) {
		System.out.println("welcome to delete");
		System.out.println(id);
		supdao.delete(id);
	  String op;
	  op="Item is deleted";
			ModelAndView mv=  new ModelAndView("suppliers");
			mv.addObject("op", op);  
			List<Supplier> catlist = supdao.showlist();
			mv.addObject("list", catlist);
			System.out.println(catlist);
			return mv;
	 }
	
}









	
	
	
	
	
	
	



