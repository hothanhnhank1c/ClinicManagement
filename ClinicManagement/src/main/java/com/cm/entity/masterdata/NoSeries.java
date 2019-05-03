package com.cm.entity.masterdata;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "[No_ Series]")
public class NoSeries implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@GeneratedValue
	@Column(name = "RowID", nullable = false, unique = true, insertable = false, updatable = false)
	private Integer rowID;

	@Id
	@Column(name = "[Series Code]")
	@NotEmpty(message = "Không được để trống!")
	private String seriesCode;

	@Column(name = "Description")
	@NotEmpty(message = "Không được để trống!")
	private String description;

	@Column(name = "[Default Nos_]")
	@NotNull(message = "Không được để trống!")
	private Integer defaultNos;

	@Column(name = "[Manual Nos_]")
	@NotNull(message = "Không được để trống!")
	private Integer manualNos;

	@Column(name = "[Date Order]")
	@NotNull(message = "Không được để trống!")
	private Integer dateOrder;

	@Column(name = "Block")
	private Integer block;
	
//	@OneToMany(mappedBy = "noSeries")
//	private List<NoSeriesLine> noSeriesLines;
//
//
//
//	public List<NoSeriesLine> getNoSeriesLines() {
//		return noSeriesLines;
//	}
//
//	public void setNoSeriesLines(List<NoSeriesLine> noSeriesLines) {
//		this.noSeriesLines = noSeriesLines;
//	}

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getDefaultNos() {
		return defaultNos;
	}

	public void setDefaultNos(Integer defaultNos) {
		this.defaultNos = defaultNos;
	}

	public Integer getManualNos() {
		return manualNos;
	}

	public void setManualNos(Integer manualNos) {
		this.manualNos = manualNos;
	}

	public Integer getDateOrder() {
		return dateOrder;
	}

	public void setDateOrder(Integer dateOrder) {
		this.dateOrder = dateOrder;
	}

	public Integer getBlock() {
		return block;
	}

	public void setBlock(Integer block) {
		this.block = block;
	}

}
