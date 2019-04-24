package com.cm.service.clinicmanagement;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.dao.clinicmanagement.DegreeDao;
import com.cm.entity.clinicmanagement.Degree;

@Service
public class DegreeServiceImpl implements DegreeService{
	@Autowired
	private DegreeDao degreeDao;
	

	@Override
	@Transactional
	public List<Degree> listDegrees() {
		return degreeDao.findAll();
	}

}
