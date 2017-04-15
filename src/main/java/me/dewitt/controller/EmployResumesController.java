package me.dewitt.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import me.dewitt.pojo.JobApplyWithBLOBs;
import me.dewitt.service.JobApplyService;

/**
 * Created by hzg on 2017/4/8.
 */
@Controller
public class EmployResumesController {
	
	@Resource
	JobApplyService jobApplyService;
	
    @RequestMapping(value = "/EmployResumes",method = RequestMethod.GET)
    public String EmployResumes(@RequestParam("jobId")Integer jobId, ModelMap map) {
    	List<JobApplyWithBLOBs> resumes = jobApplyService.getResumeListByJobId(jobId);
    	map.put("resumes", resumes);
    	
        return "EmployResumes";
    }
}
