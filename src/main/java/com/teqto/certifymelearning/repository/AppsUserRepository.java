package com.teqto.certifymelearning.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.teqto.certifymelearning.entity.AppsUser;

public interface AppsUserRepository extends JpaRepository<AppsUser, Long>{

	AppsUser findByUsername(String username);
}
