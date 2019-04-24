package com.cm.controller.medicalappointment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cm.service.medicalappointment.JobService;

@Controller
public class home {
	@Autowired
	private JobService jobService;

	@RequestMapping("/")
	public String home(Model model) {
		jobService.list();
		return "index";
	}
}
