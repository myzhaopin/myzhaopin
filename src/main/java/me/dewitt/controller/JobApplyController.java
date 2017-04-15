package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import me.dewitt.service.ApplyService;

@Controller
public class JobApplyController {
	
	@Resource
	ApplyService applyService;

	@RequestMapping(value="/JobApply", method=RequestMethod.GET)
	public String jobApply(@RequestParam("jobId")Integer jobId, @RequestParam("resumeId")Integer resumeId)
	{
		if(applyService.insertApply(jobId, resumeId))
			return "redirect:Home";
		else
		{
			//todo:插入失败处理
			return "";
		}
	}
}
