package com.cm.dao.clinicmanagement;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cm.dao.ResponsitoryDaoImpl;
import com.cm.entity.clinicmanagement.Pattient;
import com.cm.entity.masterdata.NoSeries;


@Repository
public class PattientDaoImpl extends ResponsitoryDaoImpl<Pattient, String> implements PattientDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

	@SuppressWarnings("unchecked")
	@Override
	public List<Pattient> listPattients() {
		Session session = sessionFactory.getCurrentSession();
		List<Pattient> list = session.createQuery("from Pattient where status = 0 ").getResultList();
		return list;
	
	}
	
	@Override
	public Pattient getPattientById(Integer id) {
		// TODO Auto-generated method stub	
		List<Pattient> list = createQuery("from Pattient bn where bn.rowID = '" + id+"'").list();
		Pattient bn = list.get(0);
		return bn;
	}

	@Override
	public void deletePattient(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(getPattientById(id));

	}

	@Override
	public NoSeries findByNoSeriesById(String seriesCode) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(NoSeries.class, seriesCode);
	}


	
}
