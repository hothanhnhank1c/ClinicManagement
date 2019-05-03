package com.cm.controller.clinicmanagement;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cm.entity.clinicmanagement.MedicalRecord;
import com.cm.entity.clinicmanagement.Pattient;
import com.cm.service.clinicmanagement.MedicalRecordService;
//import com.cm.entity.clinicmanagement.MedicalRecord;
//import com.cm.service.clinicmanagement.MedicalRecordService;
import com.cm.service.clinicmanagement.PattientService;
import com.cm.service.masterdata.NoSeriesService;

@Controller
@RequestMapping("/ClinicManagement")
public class MedicalRecordController {
	@Autowired
	private MedicalRecordService medicalrecordService;

	@Autowired
	private PattientService pattientService;

	public MedicalRecordService getMedicalRecordService() {
		return medicalrecordService;
	}

	public void setMedicalRecordService(MedicalRecordService medicalrecordService) {
		this.medicalrecordService = medicalrecordService;
	}

	public PattientService getPattientService() {
		return pattientService;
	}

	public void setPattientService(PattientService pattientService) {
		this.pattientService = pattientService;
	}

	@RequestMapping(value = { "/Home" }, method = RequestMethod.GET)
	public String Home(Model model) {
		model.addAttribute("ListMedicalRecord", medicalrecordService.listMedicalRecords());
		return "ClinicManagement/MedicalRecord";
	}

	@RequestMapping(value = "/addMedicalRecord/{no}", method = RequestMethod.GET)
	public String showFormAdd(Model model, @PathVariable String no) {
		model.addAttribute("MedicalRecord", new MedicalRecord());
		model.addAttribute("list", medicalrecordService.getPattientById(no));

		return "ClinicManagement/MedicalRecord";
	}
}
