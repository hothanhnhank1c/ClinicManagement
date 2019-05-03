package com.cm.dao.clinicmanagement;

import java.util.List;

import com.cm.dao.RepositoryDao;
import com.cm.entity.clinicmanagement.MedicalRecord;
import com.cm.entity.clinicmanagement.Pattient;
import com.cm.entity.masterdata.NoSeries;

public interface MedicalRecordDao extends RepositoryDao<MedicalRecord, String> {
	
	public List<MedicalRecord> listMedicalRecords();
	
	public Pattient findByPattientNo(String no);


}
