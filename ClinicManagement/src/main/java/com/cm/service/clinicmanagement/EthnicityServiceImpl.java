package com.cm.service.clinicmanagement;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.dao.clinicmanagement.EthnicityDao;
import com.cm.entity.clinicmanagement.Ethnicity;

@Service
public class EthnicityServiceImpl implements EthnicityService{

	@Autowired
	private EthnicityDao ethnicityDao;
	
	@Override
	@Transactional
	public List<Ethnicity> listEthnicities() {
		// TODO Auto-generated method stub
		return this.ethnicityDao.listeEthnicities();
	}
	
	

}
