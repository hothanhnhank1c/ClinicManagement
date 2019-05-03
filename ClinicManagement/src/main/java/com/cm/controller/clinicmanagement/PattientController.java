package com.cm.controller.clinicmanagement;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cm.entity.clinicmanagement.Pattient;
import com.cm.service.clinicmanagement.EthnicityService;
import com.cm.service.clinicmanagement.PattientService;
import com.cm.service.masterdata.NoSeriesLineService;
@Controller
@RequestMapping("/ClinicManagement")
public class PattientController {
	@Autowired
	private PattientService pattientService;

	@Autowired
	private EthnicityService ethnicityService;
	
	@Autowired
	private NoSeriesLineService noSeriesLineService;

	public NoSeriesLineService getNoSeriesLineService() {
		return noSeriesLineService;
	}

	public void setNoSeriesLineService(NoSeriesLineService noSeriesLineService) {
		this.noSeriesLineService = noSeriesLineService;
	}

	public PattientService getPattientService() {
		return pattientService;
	}

	public void setPattientService(PattientService pattientService) {
		this.pattientService = pattientService;
	}

	public EthnicityService getEthnicityService() {
		return ethnicityService;
	}

	public void setEthnicityService(EthnicityService ethnicityService) {
		this.ethnicityService = ethnicityService;
	}

	@RequestMapping(value = { "/HomePattient" }, method = RequestMethod.GET)
	public String Home(Model model) {
		model.addAttribute("ListPattient", pattientService.listPattients());
		model.addAttribute( "seriesCode", "BEN");
		model.addAttribute( "code", "004");
		return "ClinicManagement/viewPattient";
	}

	// This method is used to display form Add
		@RequestMapping(value = "/addPattient/{seriesCode}&{code}", method = RequestMethod.GET)
		public String showFormAdd(Model model, @PathVariable String seriesCode, @PathVariable String code ) {
			
			ArrayList<String> listCode = noSeriesLineService.providedNoAndExtNo(seriesCode, code);
			String no = listCode.get(0);
			model.addAttribute("no", no);
			model.addAttribute("Pattient", new Pattient());
	 		model.addAttribute("listEthnicity", ethnicityService.listEthnicities());
			return "ClinicManagement/addPattient";
		}

	// This method is used to add values in NoSeries
		@RequestMapping(value = "/insert")
		public String addPattient(@ModelAttribute("Pattient") @Valid Pattient bn, BindingResult result) {
		   pattientService.createPattient(bn);
			return "redirect:/ClinicManagement/HomePattient";
		}
		
	/*
	 * @RequestMapping(value = {"/delete/{rowID}"}) public String
	 * deletePattient(@PathVariable("rowID") Integer id, Model model) { Pattient
	 * pattient = pattientService.finPattient(id); pattient.setStatus(1);
	 * pattientService.updatePattient(pattient); return
	 * "redirect:/ClinicManagement/HomePattient"; }
	 */
		
}
