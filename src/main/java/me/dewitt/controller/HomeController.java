package me.dewitt.controller;

import me.dewitt.pojo.Company;
import me.dewitt.pojo.Job;
import me.dewitt.pojo.JobDetail;
import me.dewitt.pojo.User;
import me.dewitt.service.CompanyService;
import me.dewitt.service.JobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class HomeController {

	@Resource
	private JobService jobService;

	@RequestMapping(value="/Home", method=RequestMethod.GET)
	public String home(ModelMap map)
	{
		List<JobDetail> jobDetails= jobService.getAllJobs();
		map.put("jobDetails",jobDetails);
		return "Home";
	}

}
