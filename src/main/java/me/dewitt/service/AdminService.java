package me.dewitt.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import me.dewitt.dao.AdminMapper;
import me.dewitt.pojo.Admin;
import me.dewitt.pojo.AdminExample;

@Service
public class AdminService {

	@Resource
	AdminMapper AdminDao;
	
	public Admin getAdminByAccountAndPwd(Admin record)
	{
		AdminExample example = new AdminExample();
		example.createCriteria().andAccountEqualTo(record.getAccount()).andPasswdEqualTo(record.getPasswd());
		List<Admin> admins = AdminDao.selectByExample(example);
		if(admins.size() == 1)
			return admins.get(0);
		else
			return null;
	}
}
