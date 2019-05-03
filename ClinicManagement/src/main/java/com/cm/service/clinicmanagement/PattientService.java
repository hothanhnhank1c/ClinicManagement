package com.cm.service.clinicmanagement;

import java.util.List;

import com.cm.entity.clinicmanagement.Pattient;
import com.cm.entity.masterdata.NoSeries;


public interface PattientService {

	List<Pattient> listPattients();
	
	//This  method is used to create NoSeries
	void createPattient(Pattient pattient);
	
	Pattient finPattient(Integer rowID);
	
	void updatePattient(Pattient pattient);
	
	public void deletePattient(Pattient pattient);
	
	public NoSeries getNoSeriesById(String seriesCode);

}
