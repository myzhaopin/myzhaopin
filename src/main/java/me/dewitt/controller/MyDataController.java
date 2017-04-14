package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.dewitt.pojo.User;
import me.dewitt.service.UserService;

/**
 * Created by hzg on 2017/4/10.
 */
@Controller
@SessionAttributes("currUser")
public class MyDataController {
	
	@Resource
	private UserService userService;
	
    @RequestMapping(value = "/MyData",method = RequestMethod.GET)
    public String myData(String resumeId, ModelMap map) {

        return "MyData";
    }
    
    @RequestMapping(value = "/MyData",method = RequestMethod.POST)
    public String updateMyData(User user, ModelMap map) {
    	User tmp = userService.updateUser(user);
    	if(tmp != null)
    	{
    		map.addAttribute("currUser", tmp);
    		return "MyData";
    	}
    	else
    	{
    		//todo:修改失败处理
    		return "";
    	}
    	
    }
}
