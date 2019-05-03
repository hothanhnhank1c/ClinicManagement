package com.cm.entity.clinicmanagement;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;




@Entity
@Table(name = "[Medical Record]")
public class MedicalRecord implements Serializable {

	private static final long serialVersionUID = 1L;

	@GeneratedValue
	@Column(name = "RowID", nullable = false, unique = true, insertable = false)
	private Integer rowID;

	@Id
	@Column(name = "[Appointment No_]")
	private String appointmentNo_;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "[Pattient No_]", nullable = false)
	private Pattient pattient;
	
	@Column(name = "[Patient Name]")
	private String patientName;

	@Column(name = "[Doctor No_]")
	private String doctorNo_;

	@Column(name = "[Doctor Name]")
	private String doctorName;

	@Column(name = "[Reasons for Admission]")
	private String reasonsForAdminssion;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Date Care ]")
	private Date dateCare;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Re-examination Date]")
	private Date reExaminationDate;

	@Column(name = "[Place of Introduction]")
	private String placeOfIntroduction;

	@Column(name = "[Disease Profile ]")
	private String diseaseProfile;

	@Column(name = "[Drug Allergy]")
	private String drugAllergy;

	@Column(name = "[Height]")
	private Integer height;

	@Column(name = "[Weight]")
	private Integer weight;

	@Column(name = "[Blood Group]")
	private Integer bloodGroup;

	@Column(name = "[Pulse]")
	private Integer pulse;

	@Column(name = "[Blood Pressure]")
	private Integer bloodPressure;

	@Column(name = "[Temperature]")
	private Integer temperature;

	@Column(name = "[Cardiovascular]")
	private Integer cardiovascular;

	@Column(name = "[Respiratory]")
	private String respiratory;

	@Column(name = "[Musculoskeletal]")
	private String musculoskeletal;

	@Column(name = "[Urinary Snow]")
	private String urnarySnow;

	@Column(name = "[Nerve]")
	private String nerver;

	@Column(name = "[Mental]")
	private String mental;

	@Column(name = "[Digestion]")
	private String digestion;

	@Column(name = "[Is Different]")
	private String isDifferent;

	@Column(name = "[Main Disease]")
	private String mainDisease;

	@Column(name = "[Accompanying Disease]")
	private String accompanyingDisease;

	@Column(name = "[Complications]")
	private String complications;

	@Column(name = "[IBM]")
	private Integer ibm;

	@Column(name = "[Eye Trouble]")
	private String eyeTrouple;

	@Column(name = "[Ear Trouble]")
	private String earTrouble;

	@Column(name = "[Exercise Trouble]")
	private String exerciseTrouble;

	@Column(name = "[Language Trouble]")
	private String languageTrouble;

	@Column(name = "[Consciousness Trouble]")
	private String consciousnessTrouble;

	@Column(name = "[Internal Trouble]")
	private String internalTrouble;

	@Column(name = "[Trouble Comment]")
	private String troubleComment;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Expected Date Of Birth]")
	private Date expectedDateOfBirth;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Death Date]")
	private Date deathDate;

	@Column(name = "[Observe Status]")
	private String observeStatus;

	@Column(name = "[Patient Status]")
	private String patientStatus;

	@Column(name = "[Patient Movement Status]")
	private String patientMovementStatus;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Eye Trouble Date]")
	private Date eyeTroubleDate;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Ear Trouble Date]")
	private Date earTroubleDate;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "[Language Trouble Date]")
	private Date languageTroubleDate;

	@Column(name = "[Diagnosis]")
	private String diagnosis;

	@Column(name = "[Diagnosis Detail]")
	private String diagnosisDetail;

	@Column(name = "[Description]")
	private String description;

	@Column(name = "[Clinic No_]")
	private String clinicNo_;

	public Integer getRowID() {
		return rowID;
	}

	public void setRowID(Integer rowID) {
		this.rowID = rowID;
	}

	public String getAppointmentNo_() {
		return appointmentNo_;
	}

	public void setAppointmentNo_(String appointmentNo_) {
		this.appointmentNo_ = appointmentNo_;
	}

//	public String getPatientNo_() {
//		return patientNo_;
//	}
//
//	public void setPatientNo_(String patientNo_) {
//		this.patientNo_ = patientNo_;
//	}

	public String getPatientName() {
		return patientName;
	}

	public Pattient getPattient() {
		return pattient;
	}

	public void setPattient(Pattient pattient) {
		this.pattient = pattient;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public String getDoctorNo_() {
		return doctorNo_;
	}

	public void setDoctorNo_(String doctorNo_) {
		this.doctorNo_ = doctorNo_;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getReasonsForAdminssion() {
		return reasonsForAdminssion;
	}

	public void setReasonsForAdminssion(String reasonsForAdminssion) {
		this.reasonsForAdminssion = reasonsForAdminssion;
	}

	public Date getDateCare() {
		return dateCare;
	}

	public void setDateCare(Date dateCare) {
		this.dateCare = dateCare;
	}

	public Date getReExaminationDate() {
		return reExaminationDate;
	}

	public void setReExaminationDate(Date reExaminationDate) {
		this.reExaminationDate = reExaminationDate;
	}

	public String getPlaceOfIntroduction() {
		return placeOfIntroduction;
	}

	public void setPlaceOfIntroduction(String placeOfIntroduction) {
		this.placeOfIntroduction = placeOfIntroduction;
	}

	public String getDiseaseProfile() {
		return diseaseProfile;
	}

	public void setDiseaseProfile(String diseaseProfile) {
		this.diseaseProfile = diseaseProfile;
	}

	public String getDrugAllergy() {
		return drugAllergy;
	}

	public void setDrugAllergy(String drugAllergy) {
		this.drugAllergy = drugAllergy;
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

	public Integer getPulse() {
		return pulse;
	}

	public void setPulse(Integer pulse) {
		this.pulse = pulse;
	}

	public Integer getBloodPressure() {
		return bloodPressure;
	}

	public void setBloodPressure(Integer bloodPressure) {
		this.bloodPressure = bloodPressure;
	}

	public Integer getTemperature() {
		return temperature;
	}

	public void setTemperature(Integer temperature) {
		this.temperature = temperature;
	}

	public Integer getCardiovascular() {
		return cardiovascular;
	}

	public void setCardiovascular(Integer cardiovascular) {
		this.cardiovascular = cardiovascular;
	}

	public String getRespiratory() {
		return respiratory;
	}

	public void setRespiratory(String respiratory) {
		this.respiratory = respiratory;
	}

	public String getMusculoskeletal() {
		return musculoskeletal;
	}

	public void setMusculoskeletal(String musculoskeletal) {
		this.musculoskeletal = musculoskeletal;
	}

	public String getUrnarySnow() {
		return urnarySnow;
	}

	public void setUrnarySnow(String urnarySnow) {
		this.urnarySnow = urnarySnow;
	}

	public String getNerver() {
		return nerver;
	}

	public void setNerver(String nerver) {
		this.nerver = nerver;
	}

	public String getMental() {
		return mental;
	}

	public void setMental(String mental) {
		this.mental = mental;
	}

	public String getDigestion() {
		return digestion;
	}

	public void setDigestion(String digestion) {
		this.digestion = digestion;
	}

	public String getIsDifferent() {
		return isDifferent;
	}

	public void setIsDifferent(String isDifferent) {
		this.isDifferent = isDifferent;
	}

	public String getMainDisease() {
		return mainDisease;
	}

	public void setMainDisease(String mainDisease) {
		this.mainDisease = mainDisease;
	}

	public String getAccompanyingDisease() {
		return accompanyingDisease;
	}

	public void setAccompanyingDisease(String accompanyingDisease) {
		this.accompanyingDisease = accompanyingDisease;
	}

	public String getComplications() {
		return complications;
	}

	public void setComplications(String complications) {
		this.complications = complications;
	}

	public Integer getIbm() {
		return ibm;
	}

	public void setIbm(Integer ibm) {
		this.ibm = ibm;
	}

	public String getEyeTrouple() {
		return eyeTrouple;
	}

	public void setEyeTrouple(String eyeTrouple) {
		this.eyeTrouple = eyeTrouple;
	}

	public String getEarTrouble() {
		return earTrouble;
	}

	public void setEarTrouble(String earTrouble) {
		this.earTrouble = earTrouble;
	}

	public String getExerciseTrouble() {
		return exerciseTrouble;
	}

	public void setExerciseTrouble(String exerciseTrouble) {
		this.exerciseTrouble = exerciseTrouble;
	}

	public String getLanguageTrouble() {
		return languageTrouble;
	}

	public void setLanguageTrouble(String languageTrouble) {
		this.languageTrouble = languageTrouble;
	}

	public String getConsciousnessTrouble() {
		return consciousnessTrouble;
	}

	public void setConsciousnessTrouble(String consciousnessTrouble) {
		this.consciousnessTrouble = consciousnessTrouble;
	}

	public String getInternalTrouble() {
		return internalTrouble;
	}

	public void setInternalTrouble(String internalTrouble) {
		this.internalTrouble = internalTrouble;
	}

	public String getTroubleComment() {
		return troubleComment;
	}

	public void setTroubleComment(String troubleComment) {
		this.troubleComment = troubleComment;
	}

	public Date getExpectedDateOfBirth() {
		return expectedDateOfBirth;
	}

	public void setExpectedDateOfBirth(Date expectedDateOfBirth) {
		this.expectedDateOfBirth = expectedDateOfBirth;
	}

	public Date getDeathDate() {
		return deathDate;
	}

	public void setDeathDate(Date deathDate) {
		this.deathDate = deathDate;
	}

	public String getObserveStatus() {
		return observeStatus;
	}

	public void setObserveStatus(String observeStatus) {
		this.observeStatus = observeStatus;
	}

	public String getPatientStatus() {
		return patientStatus;
	}

	public void setPatientStatus(String patientStatus) {
		this.patientStatus = patientStatus;
	}

	public String getPatientMovementStatus() {
		return patientMovementStatus;
	}

	public void setPatientMovementStatus(String patientMovementStatus) {
		this.patientMovementStatus = patientMovementStatus;
	}

	public Date getEyeTroubleDate() {
		return eyeTroubleDate;
	}

	public void setEyeTroubleDate(Date eyeTroubleDate) {
		this.eyeTroubleDate = eyeTroubleDate;
	}

	public Date getEarTroubleDate() {
		return earTroubleDate;
	}

	public void setEarTroubleDate(Date earTroubleDate) {
		this.earTroubleDate = earTroubleDate;
	}

	public Date getLanguageTroubleDate() {
		return languageTroubleDate;
	}

	public void setLanguageTroubleDate(Date languageTroubleDate) {
		this.languageTroubleDate = languageTroubleDate;
	}

	public String getDiagnosis() {
		return diagnosis;
	}

	public void setDiagnosis(String diagnosis) {
		this.diagnosis = diagnosis;
	}

	public String getDiagnosisDetail() {
		return diagnosisDetail;
	}

	public void setDiagnosisDetail(String diagnosisDetail) {
		this.diagnosisDetail = diagnosisDetail;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getClinicNo_() {
		return clinicNo_;
	}

	public void setClinicNo_(String clinicNo_) {
		this.clinicNo_ = clinicNo_;
	}

	

}
