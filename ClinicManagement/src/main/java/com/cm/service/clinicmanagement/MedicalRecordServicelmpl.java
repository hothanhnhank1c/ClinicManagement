package com.cm.service.clinicmanagement;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.dao.clinicmanagement.MedicalRecordDao;
import com.cm.entity.clinicmanagement.MedicalRecord;
import com.cm.entity.clinicmanagement.Pattient;
import com.cm.entity.masterdata.NoSeries;



@Service
public class MedicalRecordServicelmpl implements MedicalRecordService{
	@Autowired
	private MedicalRecordDao medicalrecordDao;

	@Override
	@Transactional
	public List<MedicalRecord> listMedicalRecords() {
		// TODO Auto-generated method stub
		return medicalrecordDao.listMedicalRecords();
	}
	
	@Override
	@Transactional
	public Pattient getPattientById(String No) {
		// TODO Auto-generated method stub
		return medicalrecordDao.findByPattientNo(No);
	}

	
}
