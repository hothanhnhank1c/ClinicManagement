package com.cm.dao.masterdata;

import java.util.List;

import com.cm.dao.RepositoryDao;
import com.cm.entity.masterdata.NoSeriesLine;

public interface NoSeriesLineDao extends RepositoryDao<NoSeriesLine, String> {

	NoSeriesLine getById(Integer id);

	NoSeriesLine findBySeriesCodeAndCode(String seriesCode, String code);

	List<NoSeriesLine> listBySeriesCode(String seriesCode);
}
  