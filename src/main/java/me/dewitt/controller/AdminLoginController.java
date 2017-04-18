package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.dewitt.pojo.Admin;
import me.dewitt.service.AdminService;

/**
 * Created by hzg on 2017/4/15.
 */
@Controller
@SessionAttributes("currAdmin")
public class AdminLoginController {
	
	@Resource
	AdminService adminService;
	
    @RequestMapping(value = "/AdminLogin",method = RequestMethod.GET)
    public String adminLogin(){
        return "AdminLogin";
    }
    
    @RequestMapping(value = "/AdminLogin",method = RequestMethod.POST)
    public String Login(Admin admin, ModelMap map){
    	Admin currAdmin = adminService.getAdminByAccountAndPwd(admin);
    	if(currAdmin != null)
    	{
    		map.put("currAdmin", currAdmin);
    		return "redirect:AdminLoginSuccess";
    	}
    	else
    	{
    		//todo:登录失败处理
    		return "";
    	}
    }
    
}
