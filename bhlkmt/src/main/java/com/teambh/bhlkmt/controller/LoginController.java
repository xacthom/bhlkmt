package com.teambh.bhlkmt.controller;


import javax.json.Json;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.teambh.bhlkmt.entity.ComponentType;
import com.teambh.bhlkmt.entity.User;
import com.teambh.bhlkmt.service.*;
import com.teambh.bhlkmt.util.JsonUtil;


@RestController
public class LoginController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	GenericService genericService;
	
	@RequestMapping("/login")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	
	@Transactional
	@RequestMapping(value = "/login/check", method = RequestMethod.POST, consumes = "application/json; charset=UTF-8")
	public String check(@RequestBody User user) {
		String response = "";
		User u = genericService.find(User.class, "userName", user.getUserName());
		if (u != null && u.getPasswordHash().equals(user.getPasswordHash())) {
			response = JsonUtil.getTrue();
		}else {
			response = JsonUtil.getFalse();
		}
		
		return response;
	}
	
}
