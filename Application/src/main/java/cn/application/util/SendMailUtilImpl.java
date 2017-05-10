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
		String content="<p>尊敬的用户您好，欢迎您注册爱享文库的账号，点击下方链接即可激活账号！</p></br>"
				+ "<a>点我激活</a>";
		try{
			props.setProperty("mail.transport.protocol", "smtp");
			//创建session
			session=Session.getDefaultInstance(props);
			//创建邮件
			message=new MimeMessage(session);
			//写信
			message.setSubject("爱享文库账户激活");
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
