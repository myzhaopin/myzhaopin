package me.dewitt.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.enterprise.inject.Model;
import javax.mail.Multipart;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import me.dewitt.pojo.Admin;
import me.dewitt.pojo.News;
import me.dewitt.service.NewsService;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
@SessionAttributes("currAdmin")
public class AddNewsController {
	
	@Resource
	NewsService newsService;
	
    @RequestMapping(value = "/AddNews", method = RequestMethod.GET)
    public String news() {

        return "AddNews";
    }
    @RequestMapping(value = "/DeleteNews", method = RequestMethod.GET)
    public String deleteNews(@RequestParam("newsId")Integer newsId) {
    	if(newsService.deleteNews(newsId))
    		return "redirect:News";
    	else
    	{
    		//todo:删除失败处理
    		return "";
    	}
    }
    @RequestMapping(value = "/AddNews", method = RequestMethod.POST)
    public String addNews(@ModelAttribute("currAdmin")Admin currAdmin, News news, @RequestParam(value="picture", required=false)MultipartFile file, HttpServletRequest request) throws IllegalStateException, IOException {
    	System.out.println(news);
    	news.setAdminId(currAdmin.getAdminId());
    	if("".equals(news.getImage())) news.setImage(null);
    	System.out.println(file);
    	if(!file.isEmpty())
		{
			String realPath=request.getSession().getServletContext().getRealPath("/");
			String trueFileName=String.valueOf(System.currentTimeMillis()) + ".jpg";
			String path=realPath+"WEB-INF/images/news/"+trueFileName;
			System.out.println(path);
			file.transferTo(new File(path));
			news.setImage("images/news/" + trueFileName);
		}
    	if(newsService.insertNews(news))
    		
    		return "AddNews";
    	else
    	{
    		//todo:插入失败处理
    		return "";
    	}
    }
}
