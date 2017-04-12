package me.dewitt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.dewitt.pojo.Resume;
import me.dewitt.pojo.ResumeWithBLOBs;
import me.dewitt.pojo.User;
import me.dewitt.service.ResumeService;

@Controller
@SessionAttributes("currUser")
public class MyResumeController {

	@Resource
	private ResumeService resumeService;
	
	@RequestMapping(value="/MyResumes", method=RequestMethod.GET)
	public String myResume(@ModelAttribute("currUser")User currUser, ModelMap map)
	{
		List<ResumeWithBLOBs> resumes = resumeService.getResumeListByUserId(currUser.getUserId());
		map.put("resumes", resumes);
		return "MyResumes";
	}
}
