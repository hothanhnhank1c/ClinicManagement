package com.cm.controller.clinicmanagement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/ClinicManagement")
public class MedicalRecord {
	@RequestMapping(value = { "/MedicalRecord" }, method = RequestMethod.GET)
	public String Home(Model model) {

		return "ClinicManagement/MedicalRecord";
	}
}
