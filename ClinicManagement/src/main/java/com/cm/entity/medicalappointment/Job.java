package com.cm.entity.medicalappointment;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Job")
public class Job {
	@Id
	@Column(name = "RowID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer rowID;

	@Column(name = "[Job No_]")
	private String jobID;

	@Column(name = "[Job Name]")
	private String jobName;

	@Column(name = "[Date Time]")
	private Date dateTime;

	@Column(name = "[Work Content]")
	private String workContent;

	@Column(name = "[Clinic No_]")
	private String clinicID;

	@Column(name = "[Company No_]")
	private String companyID;

	@Column(name = "Blocked")
	private String isActive;

	public Integer getRowID() {
		return rowID;
	}

	public void setRowID(Integer rowID) {
		this.rowID = rowID;
	}

	public String getJobID() {
		return jobID;
	}

	public void setJobID(String jobID) {
		this.jobID = jobID;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public Date getDateTime() {
		return dateTime;
	}

	public void setDateTime(Date dateTime) {
		this.dateTime = dateTime;
	}

	public String getWorkContent() {
		return workContent;
	}

	public void setWorkContent(String workContent) {
		this.workContent = workContent;
	}

	public String getClinicID() {
		return clinicID;
	}

	public void setClinicID(String clinicID) {
		this.clinicID = clinicID;
	}

	public String getCompanyID() {
		return companyID;
	}

	public void setCompanyID(String companyID) {
		this.companyID = companyID;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	
	
}