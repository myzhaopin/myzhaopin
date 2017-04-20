package me.dewitt.controller;

import me.dewitt.pojo.Job;
import me.dewitt.service.JobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
public class JobDetailController {

    @Resource
    JobService jobService;

    @RequestMapping(value = "/JobDetail",method = RequestMethod.GET)
    public String jobDetailGet(@RequestParam("jobId")String jobId, ModelMap map)
    {
        int id = Integer.parseInt(jobId);
        Job job = jobService.getJobByJobId(id);
        map.put("job", job);
        return "JobDetail";
    }

    @RequestMapping(value = "/JobDetailView",method = RequestMethod.GET)
    public String jobDetailViewGet(@RequestParam("jobId")String jobId, ModelMap map)
    {
        int id = Integer.parseInt(jobId);
        Job job = jobService.getJobByJobId(id);
        map.put("job", job);
        return "JobDetailView";
    }

}
