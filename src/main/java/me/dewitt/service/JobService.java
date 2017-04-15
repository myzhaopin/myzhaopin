package me.dewitt.service;

import me.dewitt.dao.JobDetailMapper;
import me.dewitt.dao.JobMapper;
import me.dewitt.pojo.*;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by hzg on 2017/4/15.
 */
@Service
public class JobService {
    @Resource
    private JobDetailMapper jobDetailDao;
    @Resource
    private JobMapper jobDao;

    public List<JobDetail> getAllJobs(){
        JobDetailExample jobDetail=new JobDetailExample();
        List<JobDetail> jobDetails = jobDetailDao.selectByExample(jobDetail);
        return jobDetails;
    }

    public Job getJobByjobId(int jobId){
        Job job = jobDao.selectByPrimaryKey(jobId);
        return job;
    }

//    public List<JobDetailWithBLOBs> getJobDetailByjobId(int jobId){
//        JobDetailExample example=new JobDetailExample();
//        example.createCriteria().andJobIdEqualTo(jobId);
//        List<JobDetailWithBLOBs> jobDetail=jobDetailDao.selectByExampleWithBLOBs(example);
//        return jobDetail;
//    }
}
