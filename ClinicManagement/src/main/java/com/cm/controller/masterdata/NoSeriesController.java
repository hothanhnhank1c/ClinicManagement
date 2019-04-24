package com.cm.controller.masterdata;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.cm.entity.masterdata.NoSeries;
import com.cm.service.masterdata.NoSeriesService;

@Controller
@RequestMapping("/NoSeries")
public class NoSeriesController {
	@Autowired
	private NoSeriesService noSeriesService;

	// This method is used to display form AddNoSeries
	@RequestMapping(value = "/showFormAddNoSeries", method = RequestMethod.GET)
	public String showForm(Model model) {
		model.addAttribute("Noseries", new NoSeries());
		return "MasterData/FormAddNoSeries";
	}

	// This method is used to add values in NoSeries
	@RequestMapping(value = "/insert")
	public String addNoSeries(@ModelAttribute("Noseries") @Valid NoSeries ns) {
		noSeriesService.createNoSeries(ns);
		return "redirect:/MasterData/ListMasterData";
	}

	// This method is used to display form EditNoSeries
	@RequestMapping(value = "/update/{rowID}", method = RequestMethod.GET)
	public String listFormEditNoSeries(@PathVariable("rowID") Integer rowID, Model model) {
		model.addAttribute("editNoSeries", noSeriesService.findIdNoSeries(rowID));
		return "MasterData/FormEditNoSeries";
	}
	
	// This method is used to updating values in NoSeries
	@RequestMapping(value = "/eidt", method = RequestMethod.POST)
	public String editNoSeries(@ModelAttribute("editNoSeries") NoSeries id){
		noSeriesService.updateNoSeries(id);
		return "redirect:/MasterData/ListMasterData";
	}

	// This method is used to delete values in NoSeries
	@RequestMapping(value = {"/delete/{rowID}"})
	public String deleteNoSeries(@PathVariable("rowID") int id, HttpSession session, Model model) {
		NoSeries noSeries = noSeriesService.findIdNoSeries(id);
		noSeries.setBlock(0);
		noSeriesService.updateNoSeries(noSeries);
		return "redirect:/MasterData/ListMasterData";
	}
	
}
