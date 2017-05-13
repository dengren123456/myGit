package cn.application.entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="contact",uniqueConstraints = { @UniqueConstraint(columnNames = "id")})
public class Contact implements java.io.Serializable{
private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String fullName;
	private String email;
	private String contactPhoneNumber;
	private String subject;
	private String detail;
	private LocalDate time;

	
	
	@Id
	@GeneratedValue(strategy=IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name="full_name",length=100)
	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	@Column(name="email",length=100)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="phone_number",length=100)
	public String getContactPhoneNumber() {
		return contactPhoneNumber;
	}

	public void setContactPhoneNumber(String contactPhoneNumber) {
		this.contactPhoneNumber = contactPhoneNumber;
	}
	@Column(name="subject",length=100)
	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}
	@Column(name="detail",length=225)
	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
	@Column(name="time")
	public LocalDate getTime() {
		return time;
	}

	public void setTime(LocalDate time) {
		this.time = time;
	}
	
	
	
	
	
}
