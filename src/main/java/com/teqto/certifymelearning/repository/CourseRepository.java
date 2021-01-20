package com.teqto.certifymelearning.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.teqto.certifymelearning.entity.Course;

public interface CourseRepository extends JpaRepository<Course, Integer>{

}
