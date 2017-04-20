package me.dewitt.controller;

import me.dewitt.pojo.*;
import me.dewitt.service.CompanyService;
import me.dewitt.service.JobService;
import me.dewitt.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class HomeController {

    @Resource
    private JobService jobService;

    @Resource
    private NewsService newsService;

    @RequestMapping(value = "/Home", method = RequestMethod.GET)
    public String home(ModelMap map) {
        List<JobDetail> jobDetails = jobService.getAllJobs();
        map.put("jobDetails", jobDetails);

        List<News> news = newsService.getAllNews();

        int j = 1;
        for (int i = news.size(); i > news.size() - 3; i--) {
            map.put("news" + j, news.get(i - 1));
            j++;
        }
        return "Home";
    }

}
