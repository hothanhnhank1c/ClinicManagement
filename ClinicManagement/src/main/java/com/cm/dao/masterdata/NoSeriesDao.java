package com.cm.dao.masterdata;

import java.util.List;

import com.cm.dao.RepositoryDao;
import com.cm.entity.masterdata.NoSeries;

public interface NoSeriesDao extends RepositoryDao<NoSeries, String> {
	
	//This method is used to show list NoSeries
		public List<NoSeries> listNoSeries();
		
	// This method is used to retrieve the id you want to find
	public NoSeries getNoSeriesById(Integer id);
	
	//This method is used to delete the selected id
	public void deleteNoSeries(Integer id);
	
	
}
