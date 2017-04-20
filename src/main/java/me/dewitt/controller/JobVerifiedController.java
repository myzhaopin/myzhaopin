package me.dewitt.controller;

import me.dewitt.pojo.Job;
import me.dewitt.pojo.JobDetail;
import me.dewitt.service.JobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
public class JobVerifiedController {

    @Resource
    JobService jobService;

    @RequestMapping(value = "/JobVerified", method = RequestMethod.GET)
    public String JobVerifiedGet(ModelMap map) {

        List<JobDetail> jobs = jobService.getJobByVerify(true);//true表示已经审核
        map.put("jobs", jobs);
        return "JobVerified";
    }

    //审核工作，修改verify的值
    @RequestMapping(value = "/VerifyJob", method = RequestMethod.POST)
    public String JobVerifiedPost(@RequestParam("jobId")Integer jobId, ModelMap map) {
        Job job = jobService.getJobByJobId(jobId);
        job.setVerify(true);
        if (jobService.updateByJob(job) != null) {
            List<JobDetail> jobs = jobService.getJobByVerify(true);//true表示已经审核
            map.put("jobs", jobs);
        } else {
            //todo:修改失败
        }

        return "JobVerified";
    }

    @RequestMapping(value = "/DeleteJob", method = RequestMethod.GET)
    public String deleteJob(@RequestParam("jobId") Integer jobId) {
        if (jobService.deleteJob(jobId)) {
            return "redirect:JobVerified";
        } else {
            //todo:删除失败处理
            return "";
        }

    }
}
