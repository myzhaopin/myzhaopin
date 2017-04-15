package me.dewitt.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import me.dewitt.dao.ApplyMapper;
import me.dewitt.pojo.ApplyKey;

@Service
public class ApplyService {
	
	@Resource
	ApplyMapper applyDao;
	
	public boolean insertApply(Integer jobId, Integer resumeId)
	{
		ApplyKey record = new ApplyKey();
		record.setJobId(jobId);
		record.setResumeId(resumeId);
		if(applyDao.insert(record) == 1)
			return true;
		else
			return false;
	}
}
