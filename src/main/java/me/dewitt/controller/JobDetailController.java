package me.dewitt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
public class JobDetailController {
    @RequestMapping(value = "/JobDetail",method = RequestMethod.GET)
    public String jobDetailGet()
    {
        return "JobDetail";
    }
}
