package me.dewitt.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import me.dewitt.dao.JobMapper;
import me.dewitt.pojo.Job;
import me.dewitt.pojo.JobExample;

@Service
public class JobService {

	@Resource
	JobMapper jobDao;
	
	public boolean insertJob(Job record)
	{
		record.setDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		if(1 == jobDao.insertSelective(record))
			return true;
		else return false;
	}
	
	public List<Job> getJobListByCompanyId(Integer companyId)
	{
		JobExample example = new JobExample();
		example.createCriteria().andCompanyIdEqualTo(companyId);
		List<Job> jobs = jobDao.selectByExampleWithBLOBs(example);
		return jobs;
	}
	
	public Job getJobByJobId(Integer jobId)
	{
		JobExample example = new JobExample();
		example.createCriteria().andJobIdEqualTo(jobId);
		List<Job> jobs = jobDao.selectByExampleWithBLOBs(example);
		if(jobs.size() == 1)
			return jobs.get(0);
		else
			return null;
	}
}
