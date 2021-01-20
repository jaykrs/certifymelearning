package com.teqto.certifymelearning.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.math.BigInteger;


/**
 * The persistent class for the learningprogress database table.
 * 
 */
@Entity
@NamedQuery(name="Learningprogress.findAll", query="SELECT l FROM Learningprogress l")
public class Learningprogress implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Temporal(TemporalType.TIMESTAMP)
	private Date beginTime;

	private BigInteger chapterId;

	@Temporal(TemporalType.TIMESTAMP)
	private Date endTime;

	private BigInteger enrollmentId;

	public Learningprogress() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getBeginTime() {
		return this.beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public BigInteger getChapterId() {
		return this.chapterId;
	}

	public void setChapterId(BigInteger chapterId) {
		this.chapterId = chapterId;
	}

	public Date getEndTime() {
		return this.endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public BigInteger getEnrollmentId() {
		return this.enrollmentId;
	}

	public void setEnrollmentId(BigInteger enrollmentId) {
		this.enrollmentId = enrollmentId;
	}

}