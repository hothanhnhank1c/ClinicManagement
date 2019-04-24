package com.cm.controller.clinicmanagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cm.service.clinicmanagement.DegreeService;

@Controller
@RequestMapping("/ClinicManagement")
public class Pattient {
	@Autowired
	private DegreeService degreeService;

	@RequestMapping(value = { "/HomePattient" }, method = RequestMethod.GET)
	public String Home(Model model) {

		return "ClinicManagement/viewPattient";
	}

}