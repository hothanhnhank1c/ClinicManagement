package com.cm.service.masterdata;

import java.util.ArrayList;
import java.util.List;

import com.cm.entity.masterdata.NoSeriesLine;

public interface NoSeriesLineService {

	List<NoSeriesLine> listNoSeriesLine();

	List<NoSeriesLine> listNoSeriesLineBySeriesCode(String seriesCode);

	void addNoSeriesLine(NoSeriesLine nsl);

	NoSeriesLine getSeriesLineById(Integer id);

	void updateNoSeriesLine(NoSeriesLine nsl);

	void deleteNoSeriesLine(NoSeriesLine nsl);

	ArrayList<String> providedNoAndExtNo(String seriesCode, String code);

}
