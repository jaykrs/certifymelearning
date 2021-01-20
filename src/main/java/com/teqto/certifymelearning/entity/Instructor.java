package com.teqto.certifymelearning.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigInteger;


/**
 * The persistent class for the instructor database table.
 * 
 */
@Entity
@NamedQuery(name="Instructor.findAll", query="SELECT i FROM Instructor i")
public class Instructor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private int averageRating;

	private String displayName;

	private String experience;

	@Lob
	private String introductionBrief;

	private int publishedCourseCount;

	private String qualification;

	private int totalEarning;

	private BigInteger userId;

	public Instructor() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAverageRating() {
		return this.averageRating;
	}

	public void setAverageRating(int averageRating) {
		this.averageRating = averageRating;
	}

	public String getDisplayName() {
		return this.displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public String getExperience() {
		return this.experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getIntroductionBrief() {
		return this.introductionBrief;
	}

	public void setIntroductionBrief(String introductionBrief) {
		this.introductionBrief = introductionBrief;
	}

	public int getPublishedCourseCount() {
		return this.publishedCourseCount;
	}

	public void setPublishedCourseCount(int publishedCourseCount) {
		this.publishedCourseCount = publishedCourseCount;
	}

	public String getQualification() {
		return this.qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public int getTotalEarning() {
		return this.totalEarning;
	}

	public void setTotalEarning(int totalEarning) {
		this.totalEarning = totalEarning;
	}

	public BigInteger getUserId() {
		return this.userId;
	}

	public void setUserId(BigInteger userId) {
		this.userId = userId;
	}

}