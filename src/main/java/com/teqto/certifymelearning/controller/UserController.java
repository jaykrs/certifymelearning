package com.teqto.certifymelearning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.teqto.certifymelearning.entity.AppsUser;
import com.teqto.certifymelearning.repository.AppsUserRepository;

@RestController
@RequestMapping("/api/user")
public class UserController {

	@Autowired
	private AppsUserRepository appsUserRepository;
	@Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
	@RequestMapping(value = "/hallo", method = RequestMethod.GET)
	public String sayhi(@PathVariable String name) {
		return "Hallo <h2> " + "User" + "</h1>";
	}
	
	@PostMapping("/signup")
    public void signUp(@RequestBody AppsUser user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        appsUserRepository.save(user);
    }
}
