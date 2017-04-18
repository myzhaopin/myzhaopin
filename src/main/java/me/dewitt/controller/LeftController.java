package me.dewitt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by hzg on 2017/4/8.
 */
@Controller
public class LeftController {
    @RequestMapping(value = "/Left",method = RequestMethod.GET)
    public String userLeft(String resumeId, ModelMap map, HttpSession session) {
    	session.removeAttribute("currUser");
    	session.removeAttribute("currCompany");
        return "redirect:Home";
    }
}
