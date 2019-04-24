package com.cm.entity.masterdata;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "[No_ Series Line]")
public class NoSeriesLine implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@GeneratedValue
	@Column(name = "RowID", nullable = false, unique = true, insertable = false, updatable = false)
	private Integer rowID;

	@Id
	@Column(name = "[Series Code]", updatable = false)
	private String seriesCode;

	@Id
	@Column(name = "Code", updatable = false)
	private String code;

	@Column(name = "[Starting No_]")
	private String startingNo;

	@Column(name = "[Ending No_]")
	private Integer endingNo;

	@Column(name = "[Warning No_]")
	private Integer warningNo;

	@Column(name = "[Increment-by No_]")
	private Integer incrementbyNo;

	@Column(name = "[Last No_ Used]")
	private Integer lastNoUsed;

	@Column(name = "[Proposal No_]")
	private Integer proposalNo;

	@Column(name = "Block")
	private Integer block;

	@Column(name = "[Last Date Used]")
	private Timestamp lastDateUsed;

	@Column(name = "[Ext_ Last No_ Used]")
	private Integer extLastNoUsed;

	@Column(name = "[Ext_ Starting No_]")
	private String extStartingNo;

	@Column(name = "[Ext_ Increment-by No_]")
	private Integer extIncrementbyNo;

	@Column(name = "[Company No_]")
	private String companyNo;

	@Column(name = "[Responsibility Center]")
	private String responsibilityCenter;

	@Column(name = "Description")
	private String description;

	@Column(name = "[Location Code]")
	private String locationCode;

	@Column(name = "[Default Customer]")
	private String defaultCustomer;

	@Column(name = "UserID")
	private String userID;

	@Column(name = "[Ext_ Ending No_]")
	private String extEndingNo;

	@Column(name = "Type")
	private String type;

	@Column(name = "[Tax Liable]")
	private Integer taxLiable;

	@Column(name = "[Posting Group]")
	private String postingGroup;

	public Integer getRowID() {
		return rowID;
	}

	public void setRowID(Integer rowID) {
		this.rowID = rowID;
	}

	public String getSeriesCode() {
		return seriesCode;
	}

	public void setSeriesCode(String seriesCode) {
		this.seriesCode = seriesCode;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getStartingNo() {
		return startingNo;
	}

	public void setStartingNo(String startingNo) {
		this.startingNo = startingNo;
	}

	public Integer getEndingNo() {
		return endingNo;
	}

	public void setEndingNo(Integer endingNo) {
		this.endingNo = endingNo;
	}

	public Integer getWarningNo() {
		return warningNo;
	}

	public void setWarningNo(Integer warningNo) {
		this.warningNo = warningNo;
	}

	public Integer getIncrementbyNo() {
		return incrementbyNo;
	}

	public void setIncrementbyNo(Integer incrementbyNo) {
		this.incrementbyNo = incrementbyNo;
	}

	public Integer getLastNoUsed() {
		return lastNoUsed;
	}

	public void setLastNoUsed(Integer lastNoUsed) {
		this.lastNoUsed = lastNoUsed;
	}

	public Integer getBlock() {
		return block;
	}

	public void setBlock(Integer block) {
		this.block = block;
	}

	public Timestamp getLastDateUsed() {
		return lastDateUsed;
	}

	public void setLastDateUsed(Timestamp lastDateUsed) {
		this.lastDateUsed = lastDateUsed;
	}

	public Integer getExtLastNoUsed() {
		return extLastNoUsed;
	}

	public void setExtLastNoUsed(Integer extLastNoUsed) {
		this.extLastNoUsed = extLastNoUsed;
	}

	public String getExtStartingNo() {
		return extStartingNo;
	}

	public void setExtStartingNo(String extStartingNo) {
		this.extStartingNo = extStartingNo;
	}

	public Integer getExtIncrementbyNo() {
		return extIncrementbyNo;
	}

	public void setExtIncrementbyNo(Integer extIncrementbyNo) {
		this.extIncrementbyNo = extIncrementbyNo;
	}

	public String getCompanyNo() {
		return companyNo;
	}

	public void setCompanyNo(String companyNo) {
		this.companyNo = companyNo;
	}

	public String getResponsibilityCenter() {
		return responsibilityCenter;
	}

	public void setResponsibilityCenter(String responsibilityCenter) {
		this.responsibilityCenter = responsibilityCenter;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLocationCode() {
		return locationCode;
	}

	public void setLocationCode(String locationCode) {
		this.locationCode = locationCode;
	}

	public String getDefaultCustomer() {
		return defaultCustomer;
	}

	public void setDefaultCustomer(String defaultCustomer) {
		this.defaultCustomer = defaultCustomer;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getExtEndingNo() {
		return extEndingNo;
	}

	public void setExtEndingNo(String extEndingNo) {
		this.extEndingNo = extEndingNo;
	}

	public Integer getProposalNo() {
		return proposalNo;
	}

	public void setProposalNo(Integer proposalNo) {
		this.proposalNo = proposalNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getTaxLiable() {
		return taxLiable;
	}

	public void setTaxLiable(Integer taxLiable) {
		this.taxLiable = taxLiable;
	}

	public String getPostingGroup() {
		return postingGroup;
	}

	public void setPostingGroup(String postingGroup) {
		this.postingGroup = postingGroup;
	}

}
