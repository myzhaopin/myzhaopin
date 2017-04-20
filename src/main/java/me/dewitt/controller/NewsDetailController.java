package me.dewitt.controller;

import me.dewitt.pojo.News;
import me.dewitt.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
public class NewsDetailController {
    @Resource
    NewsService newsService;

    @RequestMapping(value = "/NewsDetail", method = RequestMethod.GET)
    public String newDetailGet(@RequestParam("newsId") Integer newsId, ModelMap map) {
        News news = newsService.getNewsByNewsId(newsId);
        map.addAttribute("news", news);
        return "NewsDetail";
    }

    @RequestMapping(value = "/NewsDetail", method = RequestMethod.POST)
    public String updateNews(News news, @RequestParam(value = "picture", required = false) MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {

        if ("".equals(news.getImage())) news.setImage(null);
        if (!file.isEmpty()) {
            String realPath = request.getSession().getServletContext().getRealPath("/");
            String trueFileName = String.valueOf(System.currentTimeMillis()) + ".jpg";
            String path = realPath + "WEB-INF/images/news/" + trueFileName;
            file.transferTo(new File(path));
            news.setImage("images/news/" + trueFileName);
        }

        if (newsService.updateNews(news))
            return "redirect:News";
        else
            //todo:修改失败
            return "";
    }
}
