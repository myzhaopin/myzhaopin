package me.dewitt.controller;

import me.dewitt.pojo.News;
import me.dewitt.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
public class NewsViewController {
    @Resource
    NewsService newsService;

    @RequestMapping(value = "/NewsView", method = RequestMethod.GET)
    public String newsViewGet(@RequestParam("newsId") Integer newsId, ModelMap map) {
        News news = newsService.getNewsByNewsId(newsId);
        map.addAttribute("news", news);
        return "NewsView";
    }
}
