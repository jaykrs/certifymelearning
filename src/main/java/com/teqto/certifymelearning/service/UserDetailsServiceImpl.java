package com.teqto.certifymelearning.service;

import static java.util.Collections.emptyList;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.teqto.certifymelearning.entity.AppsUser;
import com.teqto.certifymelearning.repository.AppsUserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
    private AppsUserRepository applicationUserRepository;

    public UserDetailsServiceImpl(AppsUserRepository applicationUserRepository) {
        this.applicationUserRepository = applicationUserRepository;
    }

    @SuppressWarnings("unchecked")
	@Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    	AppsUser applicationUser = applicationUserRepository.findByUsername(username);
        if (applicationUser == null) {
            throw new UsernameNotFoundException(username);
        }
        return new User(applicationUser.getUsername(), applicationUser.getPassword(), emptyList());
    }
}