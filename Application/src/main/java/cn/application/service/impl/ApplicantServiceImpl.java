package cn.application.service.impl;


import org.springframework.stereotype.Service;

import cn.application.entity.Applicant;
import cn.application.service.ApplicantService;

@Service("applicantService")
public class ApplicantServiceImpl extends BaseServiceImpl<Applicant> implements ApplicantService {
	
	@Override
	public long getBySelect(String select){
		return applicantDao.getBySelect(select);
	}

}
