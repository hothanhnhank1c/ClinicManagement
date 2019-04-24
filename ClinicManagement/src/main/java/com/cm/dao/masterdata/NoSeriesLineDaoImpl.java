package com.cm.dao.masterdata;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.cm.dao.ResponsitoryDaoImpl;
import com.cm.entity.masterdata.NoSeriesLine;

@Repository
public class NoSeriesLineDaoImpl extends ResponsitoryDaoImpl<NoSeriesLine, String> implements NoSeriesLineDao {

	//method list by SeriesCode
	@Override
	public List<NoSeriesLine> listBySeriesCode(String seriesCode) {
		@SuppressWarnings("rawtypes")
		Query query = createQuery("from NoSeriesLine where seriesCode = :seriesCode and code =:code ");
		query.setParameter("seriesCode", seriesCode);
		query.setParameter("code", 0);
		@SuppressWarnings("unchecked")
		List<NoSeriesLine> list = query.list();
		return list;
	}
	//method find by ID
	@Override
	public NoSeriesLine getById(Integer id) {
		@SuppressWarnings("rawtypes")
		Query query = createQuery("from NoSeriesLine ns where ns.rowID = :id ");
		query.setParameter("id", id);
		@SuppressWarnings("unchecked")
		List<NoSeriesLine> listnsl = query.list();
		NoSeriesLine nsl = listnsl.get(0);
		return nsl;

	}
	//method find SeriesCode and Code
	@Override
	public NoSeriesLine findBySeriesCodeAndCode(String seriesCode,String code) {
		@SuppressWarnings("rawtypes")
		Query query = createQuery("from NoSeriesLine where seriesCode = :seriesCode and code = :code and block =: block");
		query.setParameter("seriesCode", seriesCode);
		query.setParameter("code", code);
		query.setParameter("block", 0);
		@SuppressWarnings("unchecked")
		List<NoSeriesLine> listnsl = query.list();
		NoSeriesLine nsl = listnsl.get(0);
		return nsl;
	}

}
