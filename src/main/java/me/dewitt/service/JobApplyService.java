package me.dewitt.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import me.dewitt.dao.JobApplyMapper;
import me.dewitt.pojo.JobApplyExample;
import me.dewitt.pojo.JobApplyWithBLOBs;

@Service
public class JobApplyService {

	@Resource
	JobApplyMapper jobApplyDao;
	
	public List<JobApplyWithBLOBs> getResumeListByJobId(Integer jobId)
	{
		JobApplyExample example = new JobApplyExample();
		example.createCriteria().andJobIdEqualTo(jobId);
		List<JobApplyWithBLOBs> resumes = jobApplyDao.selectByExampleWithBLOBs(example);
		return resumes;
	}
}
