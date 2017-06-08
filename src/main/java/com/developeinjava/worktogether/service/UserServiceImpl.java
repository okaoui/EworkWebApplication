package com.developeinjava.worktogether.service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.developeinjava.worktogether.model.User;
import com.developeinjava.worktogether.repository.RoleRepository;
import com.developeinjava.worktogether.repository.UserRepository;
import com.developeinjava.worktogether.utils.HelperClass;

@Service
public class UserServiceImpl implements UserService {
	private static Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	@Autowired
    private UserRepository userRepository;
    private RoleRepository roleRepository;
	@Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
	private MailSender mailSender;
    private SimpleMailMessage templateMessage;
    
	@Override
	public boolean saveAndEmailLoginDetails(User user) {
        String username = HelperClass.makeUsername(user.getFirstName(), user.getLastName());
        String password = HelperClass.generatePassword();
		user.setUsername(username);
		user.setPassword(bCryptPasswordEncoder.encode(password));
		boolean flag = false;
		try{
        	boolean saved = userRepository.save(user);
    		if(saved){
    	        flag = emailLoginDetails(user.getEmail(), user.getFirstName(), user.getLastName(), username, password);
    		}
        }catch(Exception e){
        	LOGGER.error("Unable to save new user!", e);
        }
		
        return flag;
	}
	
	private boolean emailLoginDetails(String email, String firstname, String lastname, String username, String password){
		
		boolean sent = false; 
		// Create a thread safe "copy" of the template message and customize it
        SimpleMailMessage msg = new SimpleMailMessage(this.templateMessage);
        msg.setTo(email);
        msg.setText(
                "Dear " + firstname+" "
                    + lastname.toUpperCase()
                    + ", your registration at worktogether platform has been confirmed. Your username and password are as follows: \n"
                    + "username: "+username+"\n"+"password: "+password+
                    "\n\n To change your credentials, login to your account and select 'My profile'."+
                    "\n We wish happy time with us.\n Best Regards.\n\n Oussama\n Admin \nadmin@developeinjava.com");
        try{
        	LOGGER.debug("Sending mail to "+email);
            this.mailSender.send(msg);
            sent = true;
        }
        catch (MailException ex) {
            // simply log it and go on...
            LOGGER.error("Sending mail failed!", ex);
        	//ex.printStackTrace();
        }
        
        if(sent){
        	return true;
        }else{
        	return false;
        }
	}

	@Override
	public User findByUsernameAndPassword(String username, String password) {
		User user = userRepository.findByUsername(username);
		boolean match = false;
		if(user != null){
			match = bCryptPasswordEncoder.matches(password, user.getPassword());
		}
		
		if(match){
			return user;
		}else{
			return null;
		}
	}

	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	public void setRoleRepository(RoleRepository roleRepository) {
		this.roleRepository = roleRepository;
	}

	public void setbCryptPasswordEncoder(BCryptPasswordEncoder bCryptPasswordEncoder) {
		this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	}

	@Override
	public User findByFullName(String firstname, String lastname) {
		return userRepository.findByFullName(firstname, lastname);
	}
	
	public void setMailSender(MailSender mailSender) {
        this.mailSender = mailSender;
    }

    public void setTemplateMessage(SimpleMailMessage templateMessage) {
        this.templateMessage = templateMessage;
    }

}
