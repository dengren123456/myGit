package cn.application.dao.impl;



import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

import org.springframework.stereotype.Repository;

import cn.application.dao.ApplicantDao;
import cn.application.entity.Applicant;

@Repository("applicantDao")
public class ApplicantDaoImpl extends BaseDaoImpl<Applicant> implements ApplicantDao {
	@Override
	public long getBySelect(String select){
		String hql= "";
		if(select.equals("day")){
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = new Date();
			hql="select count(a) from Applicant a where uploadTime='"+ this.switchDate() + "'";
		}else if(select.equals("month")){
			hql="select count(a) from Applicant a where month(uploadTime)="+ LocalDate.now().getMonthValue();
		}else if(select.equals("year")){
			hql="select count(a) from Applicant a where year(uploadTime)="+ LocalDate.now().getYear();
		}
		return (long)getSession().createQuery(hql).uniqueResult();
	}
	private String switchDate(){
	    LocalDate date = LocalDate.now();
	    String seperator1 = "-";
	    int year = date.getYear();
	    int month = date.getMonthValue();
	    int strDate = date.getDayOfMonth();
	    String monthValue = "";
	    String dayValue = "";
	    if (month >= 1 && month <= 9) {
	    	monthValue = "0" + month;
	    }else{
	    	monthValue = String.valueOf(month);
	    }
	    if (strDate >= 0 && strDate <= 9) {
	    	dayValue = "0" + strDate;
	    }else{
	    	dayValue = String.valueOf(strDate);
	    }
	    String currentdate = year + seperator1 + monthValue + seperator1 + dayValue;
	    return currentdate;
	}
	
}
