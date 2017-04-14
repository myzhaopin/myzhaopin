package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.dewitt.pojo.ResumeWithBLOBs;
import me.dewitt.pojo.User;
import me.dewitt.service.ResumeService;

/**
 * Created by hzg on 2017/4/12.
 */
@Controller
@SessionAttributes("currUser")
public class AddResumeController {

	@Resource
	ResumeService resumeService;
	
    @RequestMapping(value = "/AddResume", method = RequestMethod.GET)
    public String left() {
    	
        return "AddResume";
    }
    
    @RequestMapping(value = "/AddResume", method = RequestMethod.POST)
    public String addResume(@ModelAttribute("currUser")User currUser, ResumeWithBLOBs resume, ModelMap map){
    	resume.setUserId(currUser.getUserId());
    	if(!resume.getSex().equals("男") || !resume.getSex().equals("女"))
    		resume.setSex(null);
    	if(resumeService.insertResume(resume))
    	{
    		return "redirect:MyResumes";
    	}
    	else
    	{
    		//todo:插入失败处理
    		return "";
    	}
    }
}
