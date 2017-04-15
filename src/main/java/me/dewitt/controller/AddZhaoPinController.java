package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.dewitt.pojo.Company;
import me.dewitt.pojo.Job;
import me.dewitt.service.JobService;

/**
 * Created by hzg on 2017/4/10.
 */
@Controller
@SessionAttributes("currCompany")
public class AddZhaoPinController {

	@Resource
	JobService jobService;
	
    @RequestMapping(value = "/AddZhaoPin", method = RequestMethod.GET)
    public String left(String resumeId, ModelMap map) {

        return "AddZhaoPin";
    }
    
    @RequestMapping(value = "/AddZhaoPin", method = RequestMethod.POST)
    public String addJob(@ModelAttribute("currCompany")Company currCompany, Job job, ModelMap map)
    {
    	job.setCompanyId(currCompany.getCompanyId());
    	System.out.println(job);
    	if(jobService.insertJob(job))
    		return "redirect:ZhaoPin";
    	else
    	{
    		//todo:插入失败处理
    		return "";
    	}
    }
}
