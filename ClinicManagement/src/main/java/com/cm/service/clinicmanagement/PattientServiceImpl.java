package com.cm.service.clinicmanagement;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.dao.clinicmanagement.PattientDao;
import com.cm.entity.clinicmanagement.Pattient;
import com.cm.entity.masterdata.NoSeries;



@Service
public class PattientServiceImpl implements PattientService{
	@Autowired
	private PattientDao pattientDao;

	@Override
	@Transactional
	public List<Pattient> listPattients() {
		// TODO Auto-generated method stub
		return pattientDao.listPattients();
	}

	@Override
	@Transactional
	public void createPattient(Pattient pattient) {
		// TODO Auto-generated method stub
		pattient.setStatus(0);
		pattient.setNo_Series("BEN");
		pattientDao.save(pattient);
		
	}

	@Override
	@Transactional
	public Pattient finPattient(Integer id) {
		// TODO Auto-generated method stub
		return pattientDao.getPattientById(id);
	}

	@Override
	@Transactional
	public void deletePattient(Pattient pattient) {
		// TODO Auto-generated method stub
		pattientDao.update(pattient);
	}

	@Override
	@Transactional
	public void updatePattient(Pattient pattient) {
		// TODO Auto-generated method stub
		pattientDao.update(pattient);
	}

	@Override
	@Transactional
	public NoSeries getNoSeriesById(String seriesCode) {
		// TODO Auto-generated method stub
		return pattientDao.findByNoSeriesById(seriesCode);
	}



	

	

}
