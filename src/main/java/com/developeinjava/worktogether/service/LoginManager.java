package com.developeinjava.worktogether.service;

import com.developeinjava.web.problemservice.beans.Author;
import com.developeinjava.worktogether.model.User;

public interface LoginManager {
	boolean login(User input) throws Exception;
	Author getAuthorInfo(User input) throws Exception;
	
}
