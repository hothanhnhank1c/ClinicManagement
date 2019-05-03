package com.cm.service.clinicmanagement;

import java.util.List;

import com.cm.entity.clinicmanagement.MedicalRecord;
import com.cm.entity.clinicmanagement.Pattient;
import com.cm.entity.masterdata.NoSeries;


public interface MedicalRecordService {

	List<MedicalRecord> listMedicalRecords();
	
	public Pattient getPattientById(String No);




}
