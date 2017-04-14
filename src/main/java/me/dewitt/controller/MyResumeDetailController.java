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
public class MyResumeDetailController {

	@Resource
	ResumeService resumeService;
	
    @RequestMapping(value = "/MyResumeDetail",method = RequestMethod.GET)
    public String resumeDetail(@RequestParam("resumeId")String resumeId, ModelMap map) {
    	int id = Integer.parseInt(resumeId);
    	ResumeWithBLOBs resume = resumeService.getResumeById(id);
    	map.put("resume", resume);
    	
        return "MyResumeDetail";
    }
    
    @RequestMapping(value = "/MyResumeDetail",method = RequestMethod.POST)
    public String updateResumeDetail(ResumeWithBLOBs resume, ModelMap map) {
    	if(resumeService.updateResume(resume))
    		return "redirect:MyResumes";
    	else
    	{
    		//todo:更新失败处理
    		return "";
    	}
    }
}
