package com.developeinjava.worktogether.web;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.developeinjava.worktogether.constants.DateFormatPatterns;
import com.developeinjava.worktogether.model.User;
import com.developeinjava.worktogether.service.UserService;
import com.developeinjava.worktogether.utils.HelperClass;

@Controller
@SessionAttributes("storedUser")
public class UserController {
	private static Logger LOGGER = LoggerFactory.getLogger(UserController.class);
	@Autowired
	private UserService userService;
   
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(Model model, @RequestParam String username, @RequestParam String password){
		boolean flag = false;
		String message="";
		if (username.isEmpty() || password.isEmpty()) {
			
			return "login";
		} else {
			try {
				
				User storedUser = userService.findByUsernameAndPassword(username, password);
				
				if(storedUser != null){
					flag = true;
					storedUser.setFirstName(HelperClass.capitalizeFirstLetter(storedUser.getFirstName()));
					model.addAttribute("storedUser", storedUser);
					model.addAttribute("datetime", 
							HelperClass.convertJavaDateToStringFormat(new Date(), DateFormatPatterns.PATTERN_ONE));
					
				}else{
					message="Username or password are invalid, please try again!";
					model.addAttribute("login_message", message);
				}
				
			} catch (Exception e) {
				LOGGER.error("Login failed!", e);
				e.printStackTrace();
			}
			if(flag){
				return "devworkspace";
			}else{
				return "login";
			}
		}
	}
    
    /*@RequestMapping(value = {"/login-or-signup"}, method = RequestMethod.POST)
    public String loginOrSignup(Model model, @ModelAttribute("user") User login, @ModelAttribute("newuser") User signup, RedirectAttributes ra){
    	if(!login.getUsername().isEmpty() && !login.getPassword().isEmpty()){
    		ra.addFlashAttribute("user", login);
    		return "redirect:/login";
    	}else{
    		ra.addFlashAttribute("newuser", signup);
    		return "redirect:/signup";
    	}
    }*/

    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String displayLoginAndSignupForms(Model model, @RequestParam(value="logout", required=false) String logout) {
    	 //model.addAttribute("user", new User());
    	 //model.addAttribute("newuser", new User());
    	 
    	 if(logout != null){
    		 model.addAttribute("logout", "You have logged out successfully!");
    		 model.addAttribute("storedUser", new User());
    	 }
        return "login";
    }
    
    
    @RequestMapping(value = {"/signup"}, method = RequestMethod.POST)
    public String signup(Model model, @RequestParam String firstName, @RequestParam String lastName, 
    		@RequestParam String gender, @RequestParam String birthday, @RequestParam String profile,
    		@RequestParam String occupation, @RequestParam String email, @RequestParam String mobile) {
    	 
    	boolean flag = false;
    	String message="";
			try {
				 User storedUser = userService.findByFullName(firstName, lastName);
				
				if(storedUser != null){
					// a user found with first name and last name
					message = "You already registred! If you forgot your login details click on 'Can't remember'!";
					
				}else{
				
					// new user 
					User newUser = new User();
					newUser.setFirstName(firstName);
					newUser.setLastName(lastName);
					newUser.setGender(gender);
					newUser.setBirthday(HelperClass.convertStringToJavaDate(birthday, DateFormatPatterns.PATTERN_TWO));
					newUser.setProfile(profile);
					newUser.setOccupation(occupation);
					newUser.setEmail(email);
					newUser.setMobile(mobile);
					flag = userService.saveAndEmailLoginDetails(newUser);
					
					if(flag){
						message = "Successful signup! an email has been sent to your email address containing your login details.";
						
					}else{
						message = "Something went wrong! please contact admin at admin@developeinjava.com!";
					}
				}
				
			} catch (Exception e) {
				LOGGER.error("Login failed!", e);
				e.printStackTrace();
			}
			
			model.addAttribute("signup_message", message);
			
			return "login";
		}
}
