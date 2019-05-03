package com.cm.entity.clinicmanagement;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "City")
public class City implements Serializable {
	
	@Id
	@Column(name = "[Province No_]")
	private String provinceNo;

	@Column(name = "[City Name]")
	private String cityName;

	@Column(name = "Type")
	private String type;

}
