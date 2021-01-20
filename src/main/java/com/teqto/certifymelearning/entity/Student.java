package com.teqto.certifymelearning.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigInteger;


/**
 * The persistent class for the student database table.
 * 
 */
@Entity
@NamedQuery(name="Student.findAll", query="SELECT s FROM Student s")
public class Student implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Lob
	private String biography;

	private int completedCourse;

	private String displayName;

	private int enrolledCourse;

	private BigInteger userId;

	public Student() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBiography() {
		return this.biography;
	}

	public void setBiography(String biography) {
		this.biography = biography;
	}

	public int getCompletedCourse() {
		return this.completedCourse;
	}

	public void setCompletedCourse(int completedCourse) {
		this.completedCourse = completedCourse;
	}

	public String getDisplayName() {
		return this.displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public int getEnrolledCourse() {
		return this.enrolledCourse;
	}

	public void setEnrolledCourse(int enrolledCourse) {
		this.enrolledCourse = enrolledCourse;
	}

	public BigInteger getUserId() {
		return this.userId;
	}

	public void setUserId(BigInteger userId) {
		this.userId = userId;
	}

}