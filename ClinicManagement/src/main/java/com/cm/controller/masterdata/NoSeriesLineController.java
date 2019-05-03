package com.cm.controller.masterdata;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cm.entity.masterdata.NoSeries;
import com.cm.entity.masterdata.NoSeriesLine;
import com.cm.service.masterdata.NoSeriesLineService;

@Controller
@RequestMapping("/NoSeriesLine")
public class NoSeriesLineController {

	@Autowired
	private NoSeriesLineService noSeriesLineService;
	
	// This method is used to display form AddNoSeries
		@RequestMapping(value = "/showFormAddNoSeriesLine", method = RequestMethod.GET)
		public String showForm(Model model) {
			model.addAttribute("NoseriesLine", new NoSeriesLine());
			return "MasterData/FormAddNoSeriesLine";
		}
	
	//funtion insert No Series Line
	@RequestMapping("/insert")
	public String insertNoSeriesLine(@ModelAttribute("insertNoSeriesLine") NoSeriesLine nsl) {
		noSeriesLineService.addNoSeriesLine(nsl);
		return "redirect:/MasterData/ListMasterData";
	}
	
	//funtion update No Series Line
	@RequestMapping("/update")
	public String updateNoseriesLine(@ModelAttribute("updateNoseriesLine") NoSeriesLine nsl) {
		noSeriesLineService.updateNoSeriesLine(nsl);
		return "redirect:/MasterData/ListMasterData";
	}
	
	//funtion show form update No Series Line
	@RequestMapping("/showFormUpdateNoSeriesLine/{id}")
	public String showFromEdit(@PathVariable("id") Integer id, Model model, NoSeriesLine nsl) {
		model.addAttribute("updateNoseriesLine", noSeriesLineService.getSeriesLineById(id));
		return "MasterData/FormUpdateNoSeriesLine";
	}
	
	
}
