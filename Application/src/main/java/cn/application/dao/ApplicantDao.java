package cn.application.dao;

import cn.application.entity.Applicant;

public interface ApplicantDao extends BaseDao<Applicant> {
	
	public long getBySelect(String select);

}
