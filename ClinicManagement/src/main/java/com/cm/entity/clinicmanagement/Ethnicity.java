package com.cm.entity.clinicmanagement;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "Ethnicity")
public class Ethnicity implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = " [Ethnic Code]", unique = true, nullable = false)
	private int ethnicCode;

	@Column(name = " [Ethnic Name]", nullable = false, length = 250)
	private String ethnicName;

	// bi-directional many-to-one association to HopDong 
	@OneToMany(mappedBy = "ethnicity")
	private List<Pattient> pattients;

	public Ethnicity() {
		super();
	}

	public int getEthnicCode() {
		return ethnicCode;
	}

	public void setEthnicCode(int ethnicCode) {
		this.ethnicCode = ethnicCode;
	}

	public String getEthnicName() {
		return ethnicName;
	}

	public void setEthnicName(String ethnicName) {
		this.ethnicName = ethnicName;
	}

	public List<Pattient> getPattients() {
		return pattients;
	}

	public void setPattients(List<Pattient> pattients) {
		this.pattients = pattients;
	}

	
	
	
}
