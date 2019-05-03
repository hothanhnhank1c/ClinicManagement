package com.cm.dao.clinicmanagement;

import java.util.List;

import com.cm.dao.RepositoryDao;
import com.cm.entity.clinicmanagement.Pattient;
import com.cm.entity.masterdata.NoSeries;

public interface PattientDao extends RepositoryDao<Pattient, String> {
	
	public List<Pattient> listPattients();
	
	public Pattient getPattientById(Integer id);
	
	public void deletePattient(Integer id);
	
	public NoSeries findByNoSeriesById(String seriesCode);


}
