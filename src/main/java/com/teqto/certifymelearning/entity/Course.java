package com.teqto.certifymelearning.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.math.BigInteger;


/**
 * The persistent class for the course database table.
 * 
 */
@Entity
@NamedQuery(name="Course.findAll", query="SELECT c FROM Course c")
public class Course implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String catagory;

	@Lob
	private String courseBrief;

	private int courseDuration;

	private BigInteger courseFee;

	private BigInteger courseFeePremium;

	private String courseLogo;

	private String courseTitle;

	@Temporal(TemporalType.DATE)
	private Date createdOn;

	private String deliveryMode;

	private BigInteger instructorId;

	private String introductoryVideo;

	private String language;

	private String metadata;

	private int unitSold;

	public Course() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCatagory() {
		return this.catagory;
	}

	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}

	public String getCourseBrief() {
		return this.courseBrief;
	}

	public void setCourseBrief(String courseBrief) {
		this.courseBrief = courseBrief;
	}

	public int getCourseDuration() {
		return this.courseDuration;
	}

	public void setCourseDuration(int courseDuration) {
		this.courseDuration = courseDuration;
	}

	public BigInteger getCourseFee() {
		return this.courseFee;
	}

	public void setCourseFee(BigInteger courseFee) {
		this.courseFee = courseFee;
	}

	public BigInteger getCourseFeePremium() {
		return this.courseFeePremium;
	}

	public void setCourseFeePremium(BigInteger courseFeePremium) {
		this.courseFeePremium = courseFeePremium;
	}

	public String getCourseLogo() {
		return this.courseLogo;
	}

	public void setCourseLogo(String courseLogo) {
		this.courseLogo = courseLogo;
	}

	public String getCourseTitle() {
		return this.courseTitle;
	}

	public void setCourseTitle(String courseTitle) {
		this.courseTitle = courseTitle;
	}

	public Date getCreatedOn() {
		return this.createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public String getDeliveryMode() {
		return this.deliveryMode;
	}

	public void setDeliveryMode(String deliveryMode) {
		this.deliveryMode = deliveryMode;
	}

	public BigInteger getInstructorId() {
		return this.instructorId;
	}

	public void setInstructorId(BigInteger instructorId) {
		this.instructorId = instructorId;
	}

	public String getIntroductoryVideo() {
		return this.introductoryVideo;
	}

	public void setIntroductoryVideo(String introductoryVideo) {
		this.introductoryVideo = introductoryVideo;
	}

	public String getLanguage() {
		return this.language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getMetadata() {
		return this.metadata;
	}

	public void setMetadata(String metadata) {
		this.metadata = metadata;
	}

	public int getUnitSold() {
		return this.unitSold;
	}

	public void setUnitSold(int unitSold) {
		this.unitSold = unitSold;
	}

}