package com.developeinjava.worktogether.service;

import com.developeinjava.worktogether.model.User;

public interface UserService {
	boolean saveAndEmailLoginDetails(User user);
	User findByUsernameAndPassword(String username, String password);
	User findByFullName(String firstname, String lastname);

}
