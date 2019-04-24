package com.cm.controller.masterdata;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cm.entity.masterdata.NoSeriesLine;
import com.cm.service.masterdata.NoSeriesLineService;

@Controller
@RequestMapping("/NoSeriesLine")
public class NoSeriesLineController {

	@Autowired
	private NoSeriesLineService noSeriesLineService;

	// funtion insert No Series Line
	@RequestMapping("/insert")
	public String insertNoSeriesLine(@ModelAttribute("insertNoSeriesLine") NoSeriesLine nsl) {
		noSeriesLineService.addNoSeriesLine(nsl);
		return "redirect:/MasterData/ListMasterData";
	}

	// funtion update No Series Line

	// This method is used to updating values in NoSeries
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateNoSeries(@ModelAttribute("updateNoseriesLine") NoSeriesLine nsl) {
		noSeriesLineService.updateNoSeriesLine(nsl);
		return "redirect:/MasterData/ListMasterData";
	}

	// funtion show form update No Series Line
	@RequestMapping("/showFormUpdateNoSeriesLine/{id}")
	public String showFromUpdate(@PathVariable("id") Integer id, Model model, NoSeriesLine nsl) {
		model.addAttribute("updateNoseriesLine", noSeriesLineService.getSeriesLineById(id));
		return "MasterData/FormUpdateNoSeriesLine";
	}

	@RequestMapping(value = "/delete/{rowID}", method = RequestMethod.GET)
	public String deleteNoSeries(@PathVariable("rowID") Integer id, NoSeriesLine nsl) {
		nsl = noSeriesLineService.getSeriesLineById(id);
		noSeriesLineService.deleteNoSeriesLine(nsl);
		return "redirect:/MasterData/ListMasterData";
	}

}
