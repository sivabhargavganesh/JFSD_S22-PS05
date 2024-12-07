package com.klef.jfsd.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.User;
import com.klef.jfsd.repository.UserRepository;
import com.klef.jfsd.services.AdminService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;


@Controller
public class AdminController {
	 @Autowired
	 private UserRepository userRepository;

	@Autowired
	private AdminService adminservice;

	private int id;
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		
		ModelAndView mv=new ModelAndView();
		
		String auname=request.getParameter("auname");
		String apwd=request.getParameter("apwd");
		
		Admin admin=adminservice.checkAdminLogin(auname,apwd);
		if(admin!=null) {
			mv.setViewName("adminhome");
		}else {
			mv.setViewName("adminloginfail");
			mv.addObject("message","Admin Login Failed");
		}
		return mv;
	}
	@GetMapping("viewallusers")
	public ModelAndView viewallusers() {
	    ModelAndView mv = new ModelAndView();
	    List<User> users = adminservice.viewAllUsers();
	    System.out.println("Fetched users: " + users); 
	    mv.addObject("userlist", users);
	    mv.setViewName("viewallusers");
	    return mv;
	}
	@PostMapping("/updateUser")
	public String updateUser(@ModelAttribute User user, RedirectAttributes redirectAttributes) {
	    User existingUser = userRepository.findById(user.getId()).orElse(null);

	    if (existingUser != null) {
	        // Update fields
	        existingUser.setName(user.getName());
	        existingUser.setEmail(user.getEmail());

	        // Only update password if it is provided
	        if (user.getPassword() != null && !user.getPassword().isEmpty()) {
	            existingUser.setPassword(user.getPassword());
	        }

	        // Save the updated user
	        userRepository.save(existingUser);
	        
	        // Add a success message to redirectAttributes
	        redirectAttributes.addFlashAttribute("message", "User updated successfully!");
	    } else {
	        // Add an error message if the user is not found
	        redirectAttributes.addFlashAttribute("message", "User not found!");
	    }

	    // Redirect to the admin home page after the update
	    return "redirect:/viewallusers"; 
	}



	@GetMapping("/deleteUser")
	public String deleteUser(@RequestParam("id") int id) {
	    this.id = id;
		userRepository.deleteById(id);
	    return "redirect:/viewallusers";
	}
	
	

	


}




