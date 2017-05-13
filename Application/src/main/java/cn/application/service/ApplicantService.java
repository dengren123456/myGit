package cn.application.service;

import cn.application.entity.Applicant;

public interface ApplicantService extends BaseService<Applicant> {
	public long getBySelect(String select);
}
