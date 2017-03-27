package me.dewitt.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import me.dewitt.dao.ResumeMapper;
import me.dewitt.pojo.Resume;
import me.dewitt.pojo.ResumeExample;

@Service
public class ResumeService {
	
	@Resource
	private ResumeMapper ResumeDao;
	
	public Resume GetResumeById(Integer id)
	{
		Resume resume = ResumeDao.selectByPrimaryKey(id);
		return resume;
	}
}
