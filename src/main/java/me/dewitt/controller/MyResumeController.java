package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import me.dewitt.pojo.Resume;
import me.dewitt.service.ResumeService;

@Controller
public class MyResumeController {

	@Resource
	private ResumeService resumeService;
	
	@RequestMapping(value="/MyResumes", method=RequestMethod.GET)
	public String myResume(String resumeId, ModelMap map)
	{
		//int id = Integer.parseInt(resumeId);
		//Resume resume = resumeService.GetResumeById(id);
		
		//map.addAttribute("resume", resume);
		return "MyResumes";
	}
}
