package com.cm.entity.clinicmanagement;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Pattient")
public class Pattient implements Serializable {

	private static final long serialVersionUID = 1L;

	@GeneratedValue
	@Column(name = "RowID", nullable = false, unique = true, insertable = false)
	private Integer rowID;

	@Id
	@Column(name = "[Pattient No_]")
	private String No;

	@Column(name = "[Fist Name]")
	private String fistName;

	@Column(name = "[Last Name]")
	private String lastName;

	@Column(name = "[Full Name]")
	private String fullName;

	@Column(name = "Sex")
	private Integer sex;

	@Column(name = "Height")
	private Integer height;

	@Column(name = "Weight")
	private Integer weight;

	@Column(name = "[Blood Group]")
	private Integer bloodGroup;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "Birthday")
	private Date birthday;

	// bi-directional many-to-one association to LoaiHopDong
	@ManyToOne
	@JoinColumn(name = "[Ethnic Code]", nullable = false)
	private Ethnicity ethnicity;

	@OneToMany(mappedBy = "pattient")
	private List<MedicalRecord> medicalRecords;

	@Column(name = "[Phone Number]")
	private String phoneNumber;

	@Column(name = "Email")
	private String email;

	@Column(name = "Religion")
	private String religion;

	@Column(name = "[Marital Status]")
	private Integer maritalStatus;

	@Column(name = "[No_ ID]")
	private String no_ID;

	@Column(name = "[Issued by]")
	private String issuedby;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Issued Date]")
	private Date issuedDate;

	@Column(name = "[Insurance No_]")
	private String insuranceNo_;

	@Column(name = "Address")
	private String address;

	@Column(name = "[Commune No_]")
	private String communeNo_;

	@Column(name = "[District No_]")
	private String districtNo_;

	@Column(name = "[Province No_]")
	private String provinceNo_;

	@Column(name = "[Job Description]")
	private String jobDescription;

	@Column(name = "Workplace")
	private String workplace;

	@Column(name = "[Object type]")
	private Integer objecttype;

	@Column(name = "[Current Address]")
	private String currentAddress;

	@Column(name = "[Current Commune No_]")
	private String currentCommuneNo_;

	@Column(name = "[Current District No_]")
	private String currentDistrictNo_;

	@Column(name = "[Current Province No_]")
	private String currentProvinceNo_;

	@Column(name = "[Posting No_ Series]")
	private String postingNo_Series;

	@Column(name = "[No_ Series]")
	private String no_Series;

	@Column(name = "[Created By]")
	private String createdBy;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Created Date]")
	private Date createdDate;

	@Column(name = "[Modified By]")
	private String modifiedBy;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Modified Date]")
	private Date modifiedDate;

	@Column(name = "[Clinic No_]")
	private String clinicNo;

	@Column(name = "[Company No_]")
	private String companyNo;

	@Column(name = "Status")
	private Integer status;

	public Pattient() {
		super();
	}

	public Integer getRowID() {
		return rowID;
	}

	public void setRowID(Integer rowID) {
		this.rowID = rowID;
	}

	public String getNo() {
		return No;
	}

	public void setNo(String no) {
		No = no;
	}

	public String getFistName() {
		return fistName;
	}

	public List<MedicalRecord> getMedicalRecords() {
		return medicalRecords;
	}

	public void setMedicalRecords(List<MedicalRecord> medicalRecords) {
		this.medicalRecords = medicalRecords;
	}

	public void setFistName(String fistName) {
		this.fistName = fistName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public Integer getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(Integer bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Ethnicity getEthnicity() {
		return ethnicity;
	}

	public void setEthnicity(Ethnicity ethnicity) {
		this.ethnicity = ethnicity;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public Integer getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(Integer maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getNo_ID() {
		return no_ID;
	}

	public void setNo_ID(String no_ID) {
		this.no_ID = no_ID;
	}

	public String getIssuedby() {
		return issuedby;
	}

	public void setIssuedby(String issuedby) {
		this.issuedby = issuedby;
	}

	public Date getIssuedDate() {
		return issuedDate;
	}

	public void setIssuedDate(Date issuedDate) {
		this.issuedDate = issuedDate;
	}

	public String getInsuranceNo_() {
		return insuranceNo_;
	}

	public void setInsuranceNo_(String insuranceNo_) {
		this.insuranceNo_ = insuranceNo_;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCommuneNo_() {
		return communeNo_;
	}

	public void setCommuneNo_(String communeNo_) {
		this.communeNo_ = communeNo_;
	}

	public String getDistrictNo_() {
		return districtNo_;
	}

	public void setDistrictNo_(String districtNo_) {
		this.districtNo_ = districtNo_;
	}

	public String getProvinceNo_() {
		return provinceNo_;
	}

	public void setProvinceNo_(String provinceNo_) {
		this.provinceNo_ = provinceNo_;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public String getWorkplace() {
		return workplace;
	}

	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}

	public Integer getObjecttype() {
		return objecttype;
	}

	public void setObjecttype(Integer objecttype) {
		this.objecttype = objecttype;
	}

	public String getCurrentAddress() {
		return currentAddress;
	}

	public void setCurrentAddress(String currentAddress) {
		this.currentAddress = currentAddress;
	}

	public String getCurrentCommuneNo_() {
		return currentCommuneNo_;
	}

	public void setCurrentCommuneNo_(String currentCommuneNo_) {
		this.currentCommuneNo_ = currentCommuneNo_;
	}

	public String getCurrentDistrictNo_() {
		return currentDistrictNo_;
	}

	public void setCurrentDistrictNo_(String currentDistrictNo_) {
		this.currentDistrictNo_ = currentDistrictNo_;
	}

	public String getCurrentProvinceNo_() {
		return currentProvinceNo_;
	}

	public void setCurrentProvinceNo_(String currentProvinceNo_) {
		this.currentProvinceNo_ = currentProvinceNo_;
	}

	public String getPostingNo_Series() {
		return postingNo_Series;
	}

	public void setPostingNo_Series(String postingNo_Series) {
		this.postingNo_Series = postingNo_Series;
	}

	public String getNo_Series() {
		return no_Series;
	}

	public void setNo_Series(String no_Series) {
		this.no_Series = no_Series;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public String getClinicNo() {
		return clinicNo;
	}

	public void setClinicNo(String clinicNo) {
		this.clinicNo = clinicNo;
	}

	public String getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(String companyNo) {
		this.companyNo = companyNo;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
