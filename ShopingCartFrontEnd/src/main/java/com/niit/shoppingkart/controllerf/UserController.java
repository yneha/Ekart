package com.niit.shoppingkart.controllerf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingkart.bean.User;
import com.niit.shoppingkart.dao.UserDAO;

@Controller
public class UserController {
	@Autowired
	private UserDAO userdao;
	
	@RequestMapping("/register")
		public ModelAndView addCategory(@ModelAttribute User user) {
			userdao.saveOrUpdate(user);
			String op;
			op= "Welcome! you have successfully registered";
			ModelAndView mv=new ModelAndView("/welcome");
			mv.addObject("op", op);
		  return mv;
	}
	
}
