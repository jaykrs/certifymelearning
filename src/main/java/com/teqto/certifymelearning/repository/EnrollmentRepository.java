package com.teqto.certifymelearning.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.teqto.certifymelearning.entity.Enrollment;

public interface EnrollmentRepository extends JpaRepository<Enrollment, Integer>{

}
