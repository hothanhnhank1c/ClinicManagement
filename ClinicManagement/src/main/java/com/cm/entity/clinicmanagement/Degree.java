package com.cm.entity.clinicmanagement;

import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Degree")
public class Degree implements Serializable {
	private static final long serialVersionUID = 1L;

	@GeneratedValue
	@Column(name = "RowID", nullable = false, unique = true, insertable = false)
	private Integer rowID;

	@Id
	@Column(name = "[Degree No_]")
	private String degreeNo;

//	// bi-directional many-to-one association to HoSoNhanVien
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "[Employees No_]", nullable = false)
//	private Employees employees;

	@Column(name = "[Name of Qualification]")
	private String nameofQualification;

	@Column(name = "[Type of Degree]")
	private String typeofDegree;

	@Column(name = "Specialized")
	private String specialized;

	@Column(name = "[Spec Description]")
	private String specDescription;

	@Column(name = "Type")
	private Integer type;

	@Column(name = "[Type of Educate]")
	private Integer typeofEducate;

	@Column(name = "[Graduation Score]")
	private DecimalFormat graduationScore;

	@Column(name = "[Graduation Type]")
	private Integer graduationType;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Expiry Date]", nullable = false)
	private Date expiryDate;

	@Column(name = "[Issued By]")
	private String issuedBy;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Issued Date]")
	private Date issuedDate;

	@Column(name = "[Clinic No_]")
	private String clinicNo;

	@Column(name = "[Company No_]")
	private String companyNo;

	public Degree() {
		super();
	}

	public Integer getRowID() {
		return rowID;
	}

	public void setRowID(Integer rowID) {
		this.rowID = rowID;
	}

	public String getDegreeNo() {
		return degreeNo;
	}

	public void setDegreeNo(String degreeNo) {
		this.degreeNo = degreeNo;
	}

	public String getNameofQualification() {
		return nameofQualification;
	}

	public void setNameofQualification(String nameofQualification) {
		this.nameofQualification = nameofQualification;
	}

	public String getTypeofDegree() {
		return typeofDegree;
	}

	public void setTypeofDegree(String typeofDegree) {
		this.typeofDegree = typeofDegree;
	}

	public String getSpecialized() {
		return specialized;
	}

	public void setSpecialized(String specialized) {
		this.specialized = specialized;
	}

	public String getSpecDescription() {
		return specDescription;
	}

	public void setSpecDescription(String specDescription) {
		this.specDescription = specDescription;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getTypeofEducate() {
		return typeofEducate;
	}

	public void setTypeofEducate(Integer typeofEducate) {
		this.typeofEducate = typeofEducate;
	}

	public DecimalFormat getGraduationScore() {
		return graduationScore;
	}

	public void setGraduationScore(DecimalFormat graduationScore) {
		this.graduationScore = graduationScore;
	}

	public Integer getGraduationType() {
		return graduationType;
	}

	public void setGraduationType(Integer graduationType) {
		this.graduationType = graduationType;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}

	public String getIssuedBy() {
		return issuedBy;
	}

	public void setIssuedBy(String issuedBy) {
		this.issuedBy = issuedBy;
	}

	public Date getIssuedDate() {
		return issuedDate;
	}

	public void setIssuedDate(Date issuedDate) {
		this.issuedDate = issuedDate;
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

}
