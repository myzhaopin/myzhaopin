package me.dewitt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by hzg on 2017/4/10.
 */
@Controller
public class MyDataController {
    @RequestMapping(value = "/MyData",method = RequestMethod.GET)
    public String left(String resumeId, ModelMap map) {

        return "MyData";
    }
}
