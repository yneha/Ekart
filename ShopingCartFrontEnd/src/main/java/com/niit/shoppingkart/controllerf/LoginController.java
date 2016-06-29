package com.niit.shoppingkart.controllerf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.niit.shoppingkart.daof.UserDao;

@Controller

public class LoginController {

	@Autowired
	UserDao userdao;
	
	
	@RequestMapping("/")
	public String gotoindex() {
		return "welcome";
	}

	@RequestMapping("/isValid")
	public ModelAndView show(@RequestParam(value = "userid") String userid,
			@RequestParam(value = "password") String password) {

		String op;
		if (userdao.isValid(userid, password)) {
			op = "Valid Details";
		} else {
			op = "Invalid Details";
		}
		ModelAndView mv = new ModelAndView("welcome");
		mv.addObject("op", op);
		mv.addObject("userid", userid);
		return mv;
	}
	@RequestMapping("/addcat")
	public String gotoaddcat()
	{
		return "addcat";
	}
	@RequestMapping("/index")
	public String gotowelcome() {
		return "index";
	}

	@RequestMapping("/offer")
	public String gotooffer() {
		return "offer";
	}

	@RequestMapping("/brand")
	public String gotobrand() {
		return "brand";
	}

	@RequestMapping("/char")
	public String gotochar() {
		return "char";
	}

	@RequestMapping("/hw")
	public String gotohw() {
		return "hw";
	}

	@RequestMapping("/helpline")
	public String gotohelpline() {
		return "helpline";
	}

	@RequestMapping("/reg")
	public String gotoreg() {
		return "reg";
	}
	@RequestMapping("/gift")
	public String gotogift() {
		return "gift";
	}

	@RequestMapping("/cart")
	public String gotocart() {
		return "cart";
	}

}
