package me.dewitt.controller;

import me.dewitt.pojo.*;
import me.dewitt.service.CompanyService;
import me.dewitt.service.JobService;
import me.dewitt.service.ResumeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@SessionAttributes("currUser")
public class JobController {

    @Resource
    private ResumeService resumeService;

    @Resource
    private JobService jobService;

    @Resource
    private CompanyService companyService;

    @RequestMapping(value="/Job", method=RequestMethod.GET)
    public String job(@RequestParam("jobId")String jobId,@RequestParam("companyId")String companyId, @ModelAttribute("currUser")User currUser, ModelMap map)
    {
        List<ResumeWithBLOBs> resumes = resumeService.getResumeListByUserId(currUser.getUserId());
        map.put("resumes", resumes);

        int id = Integer.parseInt(jobId);
        Job job = jobService.getJobByJobId(id);
        map.addAttribute("job", job);

        int comId = Integer.parseInt(companyId);
        Company company = companyService.getCompanyByCompanyId(comId);
        map.addAttribute("company",company);
        return "Job";
    }
}
