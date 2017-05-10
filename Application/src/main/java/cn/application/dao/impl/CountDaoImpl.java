package cn.application.dao.impl;


import org.springframework.stereotype.Repository;

import cn.application.dao.CountDao;
import cn.application.entity.Count;

@Repository("countDao")
public class CountDaoImpl extends BaseDaoImpl<Count> implements CountDao {

	

}
