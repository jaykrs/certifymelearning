package com.teqto.certifymelearning.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.math.BigInteger;


/**
 * The persistent class for the queries database table.
 * 
 */
@Entity
@Table(name="queries")
@NamedQuery(name="Query.findAll", query="SELECT q FROM Query q")
public class Query implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Temporal(TemporalType.DATE)
	private Date answerDate;

	@Lob
	private String answerQueries;

	private BigInteger enrollmentId;

	@Temporal(TemporalType.DATE)
	private Date questionDate;

	@Lob
	private String questionQueries;

	private String status;

	public Query() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getAnswerDate() {
		return this.answerDate;
	}

	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}

	public String getAnswerQueries() {
		return this.answerQueries;
	}

	public void setAnswerQueries(String answerQueries) {
		this.answerQueries = answerQueries;
	}

	public BigInteger getEnrollmentId() {
		return this.enrollmentId;
	}

	public void setEnrollmentId(BigInteger enrollmentId) {
		this.enrollmentId = enrollmentId;
	}

	public Date getQuestionDate() {
		return this.questionDate;
	}

	public void setQuestionDate(Date questionDate) {
		this.questionDate = questionDate;
	}

	public String getQuestionQueries() {
		return this.questionQueries;
	}

	public void setQuestionQueries(String questionQueries) {
		this.questionQueries = questionQueries;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}