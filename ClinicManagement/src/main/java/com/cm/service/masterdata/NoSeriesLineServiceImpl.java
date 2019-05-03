package com.cm.service.masterdata;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cm.dao.masterdata.NoSeriesLineDao;
import com.cm.entity.masterdata.NoSeriesLine;

@Service
public class NoSeriesLineServiceImpl implements NoSeriesLineService {
	@Autowired
	private NoSeriesLineDao noSeriesLineDao;

	// method list findAll
	@Override
	@Transactional
	public List<NoSeriesLine> listNoSeriesLine() {
		return noSeriesLineDao.findAll();
	}

	// method list Search by Series Code
	@Override
	@Transactional
	public List<NoSeriesLine> listNoSeriesLineBySeriesCode(String seriesCode) {
		return noSeriesLineDao.listBySeriesCode(seriesCode);
	}

	// method add No Series Line
	@Override
	@Transactional
	public void addNoSeriesLine(NoSeriesLine nsl) {
		nsl.setBlock(0);
		this.noSeriesLineDao.save(nsl);
	}

	// method get id of No Series Line (to form Edit)
	@Override
	@Transactional
	public NoSeriesLine getSeriesLineById(Integer id) {
		return noSeriesLineDao.getById(id);
	}

	// method update No Series Line
	@Override
	@Transactional
	public void updateNoSeriesLine(NoSeriesLine nsl) {
		this.noSeriesLineDao.update(nsl);
	}

	// method delete No Series Line
	@Override
	@Transactional
	public void deleteNoSeriesLine(NoSeriesLine nsl) {
		nsl.setBlock(1);
		this.noSeriesLineDao.update(nsl);
	}

	@Override
	@Transactional
	public ArrayList<String> providedNoAndExtNo(String seriesCode, String code) {
		ArrayList<String> listCode = new ArrayList<String>();
		String noticanotification = null;
		String no = null;
		String exNo = null;
		int lastNoUsed;
		int extLastNoUsed;
		NoSeriesLine item = noSeriesLineDao.findBySeriesCodeAndCode(seriesCode, code);
		if (item != null) {
			lastNoUsed = item.getLastNoUsed() + item.getIncrementbyNo();
			extLastNoUsed = item.getExtLastNoUsed() + item.getExtIncrementbyNo();
			// check
			if (lastNoUsed < item.getWarningNo() && extLastNoUsed < item.getWarningNo()) {
				noticanotification = "0";
				// chuoi Last No Used vs Ext Last No Used
				// dem endingNo
				String endingNo = String.valueOf(item.getEndingNo());
				String exEndingNo = String.valueOf(item.getExtEndingNo());

				int countEndingNo = endingNo.length();
				int countExEndingNo = exEndingNo.length();

				// cong chuoi LNS
				no = item.getStartingNo() + String.format("%0" + countEndingNo + "d", lastNoUsed);

				// cong chuoi ELNS
				exNo = item.getExtStartingNo() + String.format("%0" + countExEndingNo + "d", extLastNoUsed);

				// update lastNoUsed and extNoUsed
				item.setLastNoUsed(lastNoUsed);
				item.setExtLastNoUsed(extLastNoUsed);

			} else if (lastNoUsed > item.getWarningNo() && lastNoUsed < item.getEndingNo()) {
				noticanotification = "1";
				// dem endingNo
				String endingNo = String.valueOf(item.getEndingNo());
				String exEndingNo = String.valueOf(item.getExtEndingNo());
				int countEndingNo = endingNo.length();
				int countExEndingNo = exEndingNo.length();

				// cong chuoi LNS
				no = item.getStartingNo() + String.format("%0" + countEndingNo + "d", lastNoUsed);

				// cong chuoi ELNS
				exNo = item.getExtStartingNo() + String.format("%0" + countExEndingNo + "d", extLastNoUsed);

				// update lastNoUsed and extNoUsed
				item.setLastNoUsed(lastNoUsed);
				item.setExtLastNoUsed(extLastNoUsed);
			} else {
				noticanotification = "2";
				no = null;
				exNo = null;
				item.setBlock(1);
			}
		}
		// add to List
		listCode.add(no);
		listCode.add(exNo);
		listCode.add(noticanotification);

		return listCode;

	}
}
