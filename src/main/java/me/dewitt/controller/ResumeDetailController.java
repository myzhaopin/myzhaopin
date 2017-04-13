package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import me.dewitt.pojo.ResumeWithBLOBs;
import me.dewitt.service.ResumeService;

/**
 * Created by hzg on 2017/4/11.
 */
@Controller
public class ResumeDetailController {
	
	@Resource
	ResumeService resumeService;
	
    @RequestMapping(value = "/ResumeDetail",method = RequestMethod.GET)
    public String resumeDetail(@RequestParam("resumeId")String resumeId, ModelMap map) {
    	int id = Integer.parseInt(resumeId);
    	ResumeWithBLOBs resume = resumeService.getResumeById(id);
    	map.put("resume", resume);
    	
        return "ResumeDetail";
    }
}