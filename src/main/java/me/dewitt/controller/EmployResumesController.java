package me.dewitt.controller;

import java.util.*;

import javax.annotation.Resource;

import me.dewitt.pojo.Company;
import me.dewitt.pojo.Job;
import me.dewitt.service.JobService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import me.dewitt.pojo.JobApplyWithBLOBs;
import me.dewitt.service.JobApplyService;

/**
 * Created by hzg on 2017/4/8.
 */
@Controller
@SessionAttributes("currCompany")
public class EmployResumesController {

    @Resource
    JobApplyService jobApplyService;

    @Resource
    JobService jobService;


    @RequestMapping(value = "/EmployResumes", method = RequestMethod.GET)
    public String EmployResumes(@ModelAttribute("currCompany") Company currCompany, ModelMap map) {
        List<Job> jobs = jobService.getJobListByCompanyId(currCompany.getCompanyId());
        if (jobs.size() != 0) {
            List<JobApplyWithBLOBs> resumes = jobApplyService.getResumeListByJobId(jobs.get(0).getJobId());
            for (int i = 1; i < jobs.size(); i++) {
                resumes.addAll(jobApplyService.getResumeListByJobId(jobs.get(i).getJobId()));
            }
            map.put("resumes", resumes);
        }
        return "EmployResumes";
    }

    @RequestMapping(value = "/EmployResumesByJobId", method = RequestMethod.GET)
    public String EmployResumes(@ModelAttribute("currCompany") Company currCompany, @RequestParam("jobId") Integer jobId, ModelMap map) {
        List<Job> jobs = jobService.getJobListByCompanyId(currCompany.getCompanyId());
        if (jobs.size() != 0) {
            List<JobApplyWithBLOBs> resumes = jobApplyService.getResumeListByJobId(jobId);
            if (resumes != null) {
                map.put("resumes", resumes);
                map.put("job", jobService.getJobByJobId(jobId));
            }
        }
        return "EmployResumes";
    }
}
