package com.teqto.certifymelearning.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.teqto.certifymelearning.constant.ServiceConstants;
import com.teqto.certifymelearning.entity.Applicationuser;
import com.teqto.certifymelearning.entity.AppsUser;
import com.teqto.certifymelearning.repository.ApplicationUserRepository;
import com.teqto.certifymelearning.repository.AppsUserRepository;

@RestController
@RequestMapping("/api/applicationuser")
public class ApplicationUserController {

	@Autowired
	private ApplicationUserRepository applicationUserRepository;
	
	@Autowired
	private AppsUserRepository appsUserRepository;
	
	@GetMapping("/get/{id}")
	public ResponseEntity<?> getApplicationuser(@PathVariable Integer id) {
		return applicationUserRepository.findById(id).map(response -> ResponseEntity.ok().body(response))
				.orElse(new ResponseEntity<>(HttpStatus.NOT_FOUND));
	}

	@PostMapping("/create")
	public ResponseEntity<?> signUp(@RequestBody Applicationuser applicationuser) throws URISyntaxException {
		if (!applicationUserRepository.findByUserId(applicationuser.getUserId()).isPresent()) {
			if (null == applicationuser.getFirstName() || null == applicationuser.getLastName()) {
				AppsUser appuser = appsUserRepository.findById(applicationuser.getUserId().longValue()).get();
				String[] splitted = StringUtils.split(appuser.getName(), " ");
				applicationuser.setFirstName(splitted[0]);
				applicationuser.setLastName(splitted[1]);
			}
			applicationuser.setUserType(applicationuser.getUserType().toUpperCase());
			if (null == applicationuser.getCreatedOn())
				applicationuser.setCreatedOn(new Date());
			applicationUserRepository.save(applicationuser);
			return ResponseEntity.created(new URI("/api/applicationuser/create/" + applicationuser.getId()))
					.body(applicationuser);
		}
		return ResponseEntity.unprocessableEntity().body(applicationuser.getUserId() + ServiceConstants.USEREXISTS);
	}
}
