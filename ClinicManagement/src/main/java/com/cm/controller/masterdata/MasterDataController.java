package com.cm.controller.masterdata;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cm.entity.masterdata.NoSeriesLine;
import com.cm.service.masterdata.NoSeriesLineService;
import com.cm.service.masterdata.NoSeriesService;

@Controller
@RequestMapping("/MasterData")
public class MasterDataController {
	@Autowired
	private NoSeriesService noSeriesService;

	@Autowired
	private NoSeriesLineService noSeriesLineService;

	// This method is used to show list Master Data
	@RequestMapping(value = { "/ListMasterData" }, method = RequestMethod.GET)
	public String listNoSeries(Model model) {
		// default find All in DB
		model.addAttribute("ListNoSeries", noSeriesService.listNoSeries());
		model.addAttribute("ListNoSeriesLine", noSeriesLineService.listNoSeriesLine());
		return "MasterData/ListMasterData";
	}

	// This method is used to show list No Series Line
	@RequestMapping(value = { "/ListMasterData/{seriesCode}" }, method = RequestMethod.GET)
	public String listNoSeriesLine(Model model, @PathVariable String seriesCode) {
		// series code take from table no series transmitted to the table no series line
		model.addAttribute("ListNoSeriesLine", noSeriesLineService.listNoSeriesLineBySeriesCode(seriesCode));

		NoSeriesLine nsl = new NoSeriesLine();
		// set value take from url
		nsl.setSeriesCode(seriesCode);
		model.addAttribute("seriesCode", seriesCode);

		// when transmitted finish will lost table no series so call this method for
		// load table one more
		model.addAttribute("ListNoSeries", noSeriesService.listNoSeries());
		return "MasterData/ListMasterData";
	}

	@RequestMapping(value = { "/CheckNoSeriesLine/{seriesCode}&{code}" }, method = RequestMethod.GET)
	public String checkSeriesCodeAndCode(Model model, @PathVariable("seriesCode") String seriesCode,
			@PathVariable("code") String code) {
		ArrayList<String> listCode = noSeriesLineService.providedNoAndExtNo(seriesCode, code);
		
		//check 
		if (listCode.get(2).equals("2")) {
			model.addAttribute("SUCCESS_MESSAGE", "Khong Co Data");
			System.out.println("KHONG CO DATA");
			System.out.println(listCode);
		} else if(listCode.get(2).equals("1")){
			model.addAttribute("SUCCESS_MESSAGE", "Sap Tran Data");
			System.out.println(listCode);
		}else if(listCode.get(2).equals("0")){
			model.addAttribute("SUCCESS_MESSAGE","<script>alert('Thêm thành công');</script>");
			System.out.println(listCode);
		}
		return "index";
	}

}