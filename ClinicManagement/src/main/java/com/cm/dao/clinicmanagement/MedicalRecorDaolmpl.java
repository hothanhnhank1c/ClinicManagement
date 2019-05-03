package com.cm.dao.clinicmanagement;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.dao.ResponsitoryDaoImpl;
import com.cm.entity.clinicmanagement.MedicalRecord;
import com.cm.entity.clinicmanagement.Pattient;
import com.cm.entity.masterdata.NoSeries;


@Repository
public class MedicalRecorDaolmpl extends ResponsitoryDaoImpl<MedicalRecord, String> implements MedicalRecordDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

	@SuppressWarnings("unchecked")
	@Override
	public List<MedicalRecord> listMedicalRecords() {
		Session session = sessionFactory.getCurrentSession();
		List<MedicalRecord> list = session.createQuery("from MedicalRecord where status = 0 ").getResultList();
		return list;
	
	}


	@Override
	public Pattient findByPattientNo(String No) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(Pattient.class, No);
	}
	
}
