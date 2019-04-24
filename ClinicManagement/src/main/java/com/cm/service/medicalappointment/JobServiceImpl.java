package com.cm.service.medicalappointment;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.dao.medicalappointment.JobDao;
import com.cm.entity.medicalappointment.Job;

@Service
public class JobServiceImpl implements JobService {
	@Autowired
	private JobDao jobDao;
	
	@Override
	@Transactional
	public List<Job> list(){
		return jobDao.findAll();
	}
}
