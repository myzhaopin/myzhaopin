package me.dewitt.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import me.dewitt.dao.CompanyMapper;
import me.dewitt.pojo.Company;
import me.dewitt.pojo.CompanyExample;

@Service
public class CompanyService {

    @Resource
    CompanyMapper companyDao;

    public boolean insertCompany(Company company) {
        company.setPasswd(DigestUtils.md5DigestAsHex(company.getPasswd().getBytes()));
        if (1 == companyDao.insertSelective(company))
            return true;
        else
            return false;
    }

    public Company getCompanyByAccountAndPasswd(Company company) {
        company.setPasswd(DigestUtils.md5DigestAsHex(company.getPasswd().getBytes()));
        CompanyExample example = new CompanyExample();
        example.createCriteria().andAccountEqualTo(company.getAccount())
                .andPasswdEqualTo(company.getPasswd());
        List<Company> companys = companyDao.selectByExampleWithBLOBs(example);
        //System.out.println(companys.get(0).getIntrodution());
        if (1 == companys.size())
            return companys.get(0);
        else
            return null;
    }

    public Company updateCompany(Company company) {
        if (company.getPasswd().equals("")) {
            company.setPasswd(null);
        } else {
            company.setPasswd(DigestUtils.md5DigestAsHex(company.getPasswd().getBytes()));
        }
        CompanyExample companyExample = new CompanyExample();
        companyExample.createCriteria().andCompanyIdEqualTo(company.getCompanyId());
        if (companyDao.updateByExampleSelective(company, companyExample) == 1) {
            return companyDao.selectByExample(companyExample).get(0);
        } else
            return null;

//        if (companyDao.updateByPrimaryKeySelective(record) == 1) {
//            CompanyExample example = new CompanyExample();
//            example.createCriteria().andAccountEqualTo(record.getAccount());
//            List<Company> companys = companyDao.selectByExampleWithBLOBs(example);
//            return companys.get(0);
//        } else
//            return null;
    }

    public Company getCompanyByCompanyId(int companyId) {
        Company company = companyDao.selectByPrimaryKey(companyId);
        return company;
    }
}
