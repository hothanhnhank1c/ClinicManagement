package com.cm.entity.security;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "[User Setup]")
public class UserSetup implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(name = "RowID", nullable = false, unique = true, insertable = false, updatable = false)
	private Integer rowID;

	@Column(name = "[User ID]")
	private String userID;
	
	@Column(name = "Name")
	private String name;
	
	@Column(name = "[Employee No_]")
	private String employeeNo;
	
	@Column(name = "Email")
	private String email;
	
	@Column(name = "[Allow Posting From]")
	private Date allowPostingFrom;
	
	@Column(name = "[Allow Posting To]")
	private Date allowPostingTo;
	
	@Column(name = "[Register Time]")
	private Integer registerTime;
	
	@Column(name = "Module")
	private String module;
	
	@Column(name = "Feature")
	private String feature;
	
	@Column(name = "[Location Code]")
	private String locationCode;
	
	@Column(name = "Active")
	private Integer active;
	
	@Column(name = "Status")
	private Integer status;
	
	@Column(name = "MasterTable1")
	private String masterTable1;
	
	@Column(name = "GroupTable1")
	private String groupTable1;
	
	@Column(name = "City")
	private String city;
	
	@Column(name = "[Inv_ Show Amount]")
	private Integer invShowAmount;
	
	@Column(name = "Department")
	private String department;
	
	@Column(name = "[Sales Channel Code]")
	private String salesChannelCode;
	
	@Column(name = "Manager")
	private Integer manager;
	
	@Column(name = "Password")
	private String password;
	
	@Column(name = "[User Group]")
	private String userGroup;
	
	@Column(name = "[Company No_]")
	private String companyNo;
	
	@Column(name = "[Clinic No_]")
	private String clinicNo;

	public Integer getRowID() {
		return rowID;
	}

	public void setRowID(Integer rowID) {
		this.rowID = rowID;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmployeeNo() {
		return employeeNo;
	}

	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getAllowPostingFrom() {
		return allowPostingFrom;
	}

	public void setAllowPostingFrom(Date allowPostingFrom) {
		this.allowPostingFrom = allowPostingFrom;
	}

	public Date getAllowPostingTo() {
		return allowPostingTo;
	}

	public void setAllowPostingTo(Date allowPostingTo) {
		this.allowPostingTo = allowPostingTo;
	}

	public Integer getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(Integer registerTime) {
		this.registerTime = registerTime;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getFeature() {
		return feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}

	public String getLocationCode() {
		return locationCode;
	}

	public void setLocationCode(String locationCode) {
		this.locationCode = locationCode;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getMasterTable1() {
		return masterTable1;
	}

	public void setMasterTable1(String masterTable1) {
		this.masterTable1 = masterTable1;
	}

	public String getGroupTable1() {
		return groupTable1;
	}

	public void setGroupTable1(String groupTable1) {
		this.groupTable1 = groupTable1;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Integer getInvShowAmount() {
		return invShowAmount;
	}

	public void setInvShowAmount(Integer invShowAmount) {
		this.invShowAmount = invShowAmount;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getSalesChannelCode() {
		return salesChannelCode;
	}

	public void setSalesChannelCode(String salesChannelCode) {
		this.salesChannelCode = salesChannelCode;
	}

	public Integer getManager() {
		return manager;
	}

	public void setManager(Integer manager) {
		this.manager = manager;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserGroup() {
		return userGroup;
	}

	public void setUserGroup(String userGroup) {
		this.userGroup = userGroup;
	}

	public String getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(String companyNo) {
		this.companyNo = companyNo;
	}

	public String getClinicNo() {
		return clinicNo;
	}

	public void setClinicNo(String clinicNo) {
		this.clinicNo = clinicNo;
	}
	
}
