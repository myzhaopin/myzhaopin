package me.dewitt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by hzg on 2017/4/8.
 */
@Controller
public class UserLeftController {
    @RequestMapping(value = "/UserLeft",method = RequestMethod.GET)
    public String userLeft(String resumeId, ModelMap map) {

        return "UserLeft";
    }
}
