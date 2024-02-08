package com.akram.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.akram.entity.Users;
import com.akram.repo.UserRepo;

@Controller
public class UserController {
	@Autowired
	private UserRepo repo;
	
	
	
	@RequestMapping("/")
	public String homePage() {
		
		return "home";
	}
	
	@RequestMapping("/saveUser")
	public String userForm() {
	
		return "addUser";
	}
	
	@RequestMapping("/register")
	public String addUserDetails(Users users,ModelMap model) {
		
		repo.save(users);
		
		return "success";
		
	}
	
	
	
	
	
	@RequestMapping("/displayAll")
	public String viewAllUserDetails(ModelMap model) {
		model.put("users", repo.findAll());
		
		return "viewForm";
	}
	
	
	
	
	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable int id) {
		
		repo.deleteById(id);
		return "redirect:/displayAll";
		
	}
	
	
	
	
	@RequestMapping("/edit/{id}")
	public String editForm(@PathVariable int id ,ModelMap model) {
		
		model.put("command",repo.findById(id).get());
		return "editUser";
	}
	
	
	@RequestMapping("/editandsave")
	public String editAndSave(Users user,ModelMap model) {
		repo.save(user);
		
		
		return "redirect:/displayAll";
	}
	
	
	
}
