package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import me.dewitt.service.NewsService;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
public class NewsController {

	@Resource
	NewsService newsService;
	
    @RequestMapping(value = "/News",method = RequestMethod.GET)
    public String newsGet(ModelMap map){
    	map.put("news", newsService.getAllNews());
        return "News";
    }

    @RequestMapping(value = "/News",method = RequestMethod.POST)
    public String news(){
        return "News";
    }
}
