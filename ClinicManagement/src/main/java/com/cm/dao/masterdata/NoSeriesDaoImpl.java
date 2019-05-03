package com.cm.dao.masterdata;

import java.util.List;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.cm.dao.ResponsitoryDaoImpl;
import com.cm.entity.masterdata.NoSeries;

@Repository
public class NoSeriesDaoImpl extends ResponsitoryDaoImpl<NoSeries, String> implements NoSeriesDao {

	// This method is used to show list NoSeries
	public List<NoSeries> listNoSeries() {

		List<NoSeries> list = createQuery("from NoSeries where block = 0 ").getResultList();
		return list;
	}

	// This method is used to retrieve the id you want to find
	@Override
	public NoSeries getNoSeriesById(Integer id) {
		List<NoSeries> listns = createQuery("from NoSeries tt where tt.rowID  = '" + id + "' ").list();
		NoSeries ns = listns.get(0);
		return ns;
	}

	// This method is used to delete the selected id
	@Override
	public void deleteNoSeries(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		session.delete(getNoSeriesById(id));
	}
}
