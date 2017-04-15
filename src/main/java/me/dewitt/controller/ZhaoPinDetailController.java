package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import me.dewitt.pojo.Job;
import me.dewitt.service.JobService;

/**
 * Created by hzg on 2017/4/8.
 */
@Controller
public class ZhaoPinDetailController {
	
	@Resource
	JobService jobService;
	
    @RequestMapping(value = "/ZhaoPinDetail",method = RequestMethod.GET)
    public String zhaoPinDetail(@RequestParam("jobId")Integer jobId, ModelMap map) {
    	Job job = jobService.getJobByJobId(jobId);
    	map.put("job", job);
        return "ZhaoPinDetail";
    }
}
