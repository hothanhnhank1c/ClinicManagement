package com.cm.service.masterdata;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.dao.masterdata.NoSeriesDao;
import com.cm.entity.masterdata.NoSeries;

@Service
public class NoSeriesServiceImpl implements NoSeriesService {
	@Autowired
	private NoSeriesDao noSeriesDao;

	//This method is used to show list NoSeries
	@Override
	@Transactional
	public List<NoSeries> listNoSeries() {
		return noSeriesDao.listNoSeries();
	}

	//This  method is used to create NoSeries
	@Override
	@Transactional
	public void createNoSeries(NoSeries noSeries) {
		noSeriesDao.save(noSeries);
		
	}

	// This method is used to retrieve the id you want to find 
	@Override
	@Transactional
	public NoSeries findIdNoSeries(Integer id) {
		return noSeriesDao.getNoSeriesById(id);	
	}

	//This method is used to update the selected id
	@Override
	@Transactional
	public void updateNoSeries(NoSeries noSeries) {
		noSeriesDao.update(noSeries);
		
	}

	//This method is used to delete the selected id
	@Override
    @Transactional
    public void deleteNoSeries(Integer id) {
        noSeriesDao.deleteNoSeries(id);
    }
 

}
