package me.dewitt.controller;

import me.dewitt.pojo.JobDetail;
import me.dewitt.service.JobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
public class JobNotVerifyController {

    @Resource
    JobService jobService;

    @RequestMapping(value = "/JobNotVerify", method = RequestMethod.GET)
    public String JobNotVerified(ModelMap map) {
        List<JobDetail> jobs = jobService.getJobByVerify(false);//false表示没有审核
        if (jobs.size() != 0) {
            map.put("jobs", jobs);
        }
        return "JobNotVerify";
    }
}
