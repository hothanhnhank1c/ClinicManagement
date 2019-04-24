package com.cm.service.masterdata;

import java.util.List;

import com.cm.entity.masterdata.NoSeries;

public interface NoSeriesService {

	//This method is used to show list NoSeries
	List<NoSeries> listNoSeries();

	//This  method is used to create NoSeries
	void createNoSeries(NoSeries noSeries);

	// This method is used to retrieve the id you want to find 
	NoSeries findIdNoSeries(Integer rowID);
	
	//This method is used to update the selected id
	void updateNoSeries(NoSeries noSeries);
	
	//This method is used to delete the selected id
	public void deleteNoSeries(Integer id);
}
