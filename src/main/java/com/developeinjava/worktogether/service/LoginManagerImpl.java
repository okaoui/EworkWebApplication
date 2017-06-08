package com.developeinjava.worktogether.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.developeinjava.web.problemservice.beans.Author;
import com.developeinjava.worktogether.model.User;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

@Service
public class LoginManagerImpl implements LoginManager {
	private static Logger LOGGER = LoggerFactory.getLogger(LoginManagerImpl.class);

	@Override
	public boolean login(User input) throws Exception {
		boolean flag = false;
		Client c = new Client();
		WebResource loginres = c.resource("http://jaxrs.developeinjava.com/problemStore/login");
		
		String parameters = "username="+input.getUsername()+"&password="+input.getPassword();
		try{
			ClientResponse response = loginres.type("application/x-www-form-urlencoded")
			  .post(ClientResponse.class, parameters);
			
			if (response.getStatus() != 200) {
				LOGGER.error("Failed : HTTP error code : "
					     + response.getStatus(), new RuntimeException());
			}
			
			if(response.getEntity(String.class).equalsIgnoreCase("ok")){
				flag = true;
				LOGGER.info("login successful");
			}
			
		
		}catch (Exception e) {
			LOGGER.error("Login failed!",e);
		}
		return flag;
	}
	
	public static void main(String[] args) throws Exception{
		User input = new User();
		input.setUsername("schokran@");
		input.setPassword("12");
		
		System.out.println(new LoginManagerImpl().login(input));
	}

	@Override
	public Author getAuthorInfo(User input) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}
