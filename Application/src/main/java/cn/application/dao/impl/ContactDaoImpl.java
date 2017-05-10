package cn.application.dao.impl;


import org.springframework.stereotype.Repository;

import cn.application.dao.ContactDao;
import cn.application.entity.Contact;

@Repository("contactDao")
public class ContactDaoImpl extends BaseDaoImpl<Contact> implements ContactDao {

	

}
