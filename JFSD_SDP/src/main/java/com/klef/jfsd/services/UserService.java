package com.klef.jfsd.services;

import com.klef.jfsd.model.User;

public interface UserService {

	 public String userRegistration(User user);
	 public User checkUserLogin(String email,String  password);
	 void updateUser(User user);
}
