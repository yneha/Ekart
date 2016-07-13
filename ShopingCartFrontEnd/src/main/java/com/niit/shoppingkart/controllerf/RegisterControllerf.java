package com.niit.shoppingkart.controllerf;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;
import javax.validation.Validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingkart.bean.User;
import com.niit.shoppingkart.bean.UserValidation;
import com.niit.shoppingkart.dao.UserDAO;

@Controller
public class RegisterControllerf {
	@Autowired
	private UserDAO userdao;
	
	@Autowired
	private UserValidation uservalid;
	
	 @RequestMapping(value = "/reg")
    public String viewLogin(Map<String, Object> model) {
		 System.out.println("welcomeeeees");
        User user = new User();
        model.put("userForm", user);
        
        return "reg";
    }
	 @RequestMapping(value = "/register")
	    public ModelAndView doLogin(@Valid @ModelAttribute("userForm") User userForm,
	            BindingResult result, Map<String, Object> model) {
		 System.out.println("welcome b4 validate");
		 System.out.println(userForm);
	 uservalid.validate(userForm, result);
	 System.out.println(result);
	        if (result.hasErrors()) {
	        	
	        	String op="Please follow the mentioned Contraints";
	        	ModelAndView mv=new ModelAndView("/reg");
	        	mv.addObject("op", op);
	        	return mv;
	        }
	        else
	        {
	        userdao.saveOrUpdate(userForm);
			String op;
			op= "Welcome! you have successfully registered";
			ModelAndView mv=new ModelAndView("/welcome");
			mv.addObject("op", op);
		  return mv;
	        }
	    }
		
	 @RequestMapping(value="/checkusername", method = RequestMethod.GET)
	 @ResponseBody
	 public String checkuser(@RequestParam("key") String email,@ModelAttribute("userForm") User userForm,Model model)
	 {	System.out.println("welcome to checkuser");
		
		User userl= userdao.check(email);
		 
		 if(userl!=null)
		 {
			
			 System.out.println("wlcome");
			 return "E-mail already registered";
		
	 }
		 else
		 {
		return null;
		 }
		
	 } 
	 
	
	 
}
