package com.teqto.certifymelearning.repository;

import java.math.BigInteger;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.teqto.certifymelearning.entity.Applicationuser;

public interface ApplicationUserRepository extends JpaRepository<Applicationuser, Integer>{

	Optional<Applicationuser> findByUserId(BigInteger userId);
}
