package me.dewitt.controller;

import javax.annotation.Resource;

import me.dewitt.pojo.Company;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import me.dewitt.pojo.Job;
import me.dewitt.service.JobService;

import java.util.List;

/**
 * Created by hzg on 2017/4/8.
 */
@Controller
@SessionAttributes("currCompany")
public class ZhaoPinDetailController {

    @Resource
    JobService jobService;

    @RequestMapping(value = "/ZhaoPinDetail", method = RequestMethod.GET)
    public String zhaoPinDetail(@RequestParam("jobId") Integer jobId, ModelMap map) {
        Job job = jobService.getJobByJobId(jobId);
        map.put("job", job);
        return "ZhaoPinDetail";
    }

    @RequestMapping(value = "/ZhaoPinDetail", method = RequestMethod.POST)
    public String zhaoPinDetailPost(@ModelAttribute("currCompany") Company currCompany, Job job, ModelMap map) {

        if (jobService.updateByJob(job) != null) {
            List<Job> jobs = jobService.getJobListByCompanyId(currCompany.getCompanyId());
            map.put("jobs", jobs);
        } else {
            //todo:修改失败

        }

        return "ZhaoPin";
    }
}
