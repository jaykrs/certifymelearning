package com.teqto.certifymelearning.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.teqto.certifymelearning.entity.Chapter;

public interface UnitRepository extends JpaRepository<Chapter, Integer>{

}
