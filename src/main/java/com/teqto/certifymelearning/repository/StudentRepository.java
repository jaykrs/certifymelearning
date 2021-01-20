package com.teqto.certifymelearning.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.teqto.certifymelearning.entity.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>{

}
