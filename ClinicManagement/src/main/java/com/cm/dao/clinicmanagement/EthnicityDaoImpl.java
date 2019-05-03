package com.cm.dao.clinicmanagement;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.entity.clinicmanagement.Ethnicity;

@Repository
public class EthnicityDaoImpl implements EthnicityDao {
	
	@Autowired
	private SessionFactory sessionFactory;


	@SuppressWarnings("unchecked")
	@Override
	public List<Ethnicity> listeEthnicities() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Ethnicity> list = session.createQuery("from Ethnicity").getResultList();
		return list;

	}

}
