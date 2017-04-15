package me.dewitt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
public class AddNewsController {
    @RequestMapping(value = "/AddNews", method = RequestMethod.GET)
    public String news() {

        return "AddNews";
    }
    @RequestMapping(value = "/AddNews", method = RequestMethod.POST)
    public String addNews() {

        return "AddNews";
    }
}
