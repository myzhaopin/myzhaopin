package me.dewitt.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import me.dewitt.dao.ResumeMapper;
import me.dewitt.pojo.Resume;
import me.dewitt.pojo.ResumeExample;
import me.dewitt.pojo.ResumeWithBLOBs;

@Service
public class ResumeService {
	
	@Resource
	private ResumeMapper ResumeDao;
	
	public ResumeWithBLOBs getResumeById(Integer id)
	{
		ResumeWithBLOBs resume = ResumeDao.selectByPrimaryKey(id);
		return resume;
	}
	public List<ResumeWithBLOBs> getResumeListByUserId(int userId)
	{
		ResumeExample example = new ResumeExample();
		example.createCriteria().andUserIdEqualTo(userId);
		List<ResumeWithBLOBs> resumes;
		resumes = ResumeDao.selectByExampleWithBLOBs(example);
		return resumes;
	}
	public boolean insertResume(ResumeWithBLOBs record)
	{
		if(ResumeDao.insertSelective(record) == 1)
			return true;
		else
			return false;
	}
	public boolean updateResume(ResumeWithBLOBs record)
	{
		if(ResumeDao.updateByPrimaryKeySelective(record) == 1)
			return true;
		else
			return false;
	}
}
