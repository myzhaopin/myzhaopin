package me.dewitt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserLeftController {
	@RequestMapping(value = "/UserLeft",method = RequestMethod.GET)
    public String userLeft(String resumeId, ModelMap map, HttpSession session) {
    	
        return "UserLeft";
	}
}
