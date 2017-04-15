package me.dewitt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.dewitt.pojo.Company;
import me.dewitt.pojo.Job;
import me.dewitt.service.JobService;

/**
 * Created by hzg on 2017/4/8.
 */
@Controller
@SessionAttributes("currCompany")
public class ZhaoPinContraller {
	
	@Resource
	JobService jobService;
	
    @RequestMapping(value = "/ZhaoPin",method = RequestMethod.GET)
    public String zhaopin(@ModelAttribute("currCompany")Company currCompany , ModelMap map) {
    	List<Job> jobs = jobService.getJobListByCompanyId(currCompany.getCompanyId());
    	map.put("jobs", jobs);
        return "ZhaoPin";
    }
}
