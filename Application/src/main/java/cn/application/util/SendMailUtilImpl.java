package cn.application.util;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Component;
@Component("sendMailUtil")
public class SendMailUtilImpl implements SendMailUtil {
	
	/* (non-Javadoc)
	 * @see cn.jagl.mryt.util.SendMailUtil#sendEmail(java.lang.String)
	 */
	@Override
	public boolean sendEmail(String address,double code){
		Properties props = new Properties();
		boolean status=true;
		Session session=null;
		Message message=null;
		Transport transport=null;
		String content="<p>Dear Student，</p></br>Thanks for applying to our MBBS/ MD program. Your application has been successfully submitted. Your Application Number is: "
				+ code +"<br/>In all future correspondence / inquiry , you must quote this Application Number. "+
				"We wish you success in your admission. "+
				"We will contact you shortly regarding the selection result and decision by Admission Committee regarding your admission.<br/>"
				+"Sincerely yours,<br/>Dr. Muhammad Umair Sami,<br/>"
				+"Adviser to The Director of Admissions,<br/>"
				+"International Medical Education Center,<br/>"
				+"Mongolian National University of Medical Sciences (MNUMS)<br/>"
				+"Email: admissions @mnums.edu.mn<br/>"
				+"Phone: +86-13145223349 <br/>"
				+"Note: Please do not call by Phone Except Emergency.<br/>";
		try{
			props.setProperty("mail.transport.protocol", "smtp");
			//创建session
			session=Session.getDefaultInstance(props);
			//创建邮件
			message=new MimeMessage(session);
			//写信
			message.setSubject("MNUMS");
			//正文
			message.setContent(content,"text/html;charset=utf-8");
			//发件人地址
			message.setFrom(new InternetAddress("aixiangwenku@sina.com"));
			//设置收件人地址
			transport=session.getTransport();
			transport.connect("smtp.sina.com", "aixiangwenku@sina.com", "51aixiang");
			transport.sendMessage(message, new Address[]{new InternetAddress(address)});
			
		}catch(Exception e){
			status=false;
			throw new RuntimeException(e);
		}finally{
			try {
				transport.close();
			} catch (MessagingException e) {
				throw new RuntimeException(e);
			}
		}
		return status;
	}
}
