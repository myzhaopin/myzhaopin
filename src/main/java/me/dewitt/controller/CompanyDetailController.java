package me.dewitt.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.dewitt.pojo.Company;
import me.dewitt.service.CompanyService;

/**
 * Created by hzg on 2017/4/8.
 */
@Controller
@SessionAttributes("currCompany")
public class CompanyDetailController {
	
	@Resource
	CompanyService companyService;
	
    @RequestMapping(value = "/CompanyDetail",method = RequestMethod.GET)
    public String left(String resumeId, ModelMap map) {

        return "CompanyDetail";
    }
    
    @RequestMapping(value = "/CompanyDetail",method = RequestMethod.POST)
    public String updateCompanyDetail(Company company, ModelMap map) {
    	Company currCompany = companyService.updateCompany(company);
    	if(currCompany != null)
    	{
    		map.put("currCompany", currCompany);
    		return "CompanyDetail";
    	}
    	else
    	{
    		//todo:更新失败处理
    		return "";
    	}
        
    }
}
