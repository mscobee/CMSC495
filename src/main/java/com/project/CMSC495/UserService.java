package com.project.CMSC495;

import java.util.List;

import com.project.CMSC495.User;

public interface UserService {

	
	 public List<User> getAllUsers();
	 
	 public User getUserById(int id);
	 
	 public void addUser(User user);
	 
	 public void deleteUser(int id);
	

}

