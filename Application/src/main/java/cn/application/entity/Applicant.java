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
@Table(name="applicant",uniqueConstraints = { @UniqueConstraint(columnNames = "id")})
public class Applicant implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private double applicantSn;
	private String eamil;
	private String username;
	private String pdfPath;
	private LocalDate uploadtime;
	private String codeFilePath;

	
	
	@Id
	@GeneratedValue(strategy=IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	@Column(name="applicantSn",unique=true,nullable=false,length=100)
	public double getApplicantSn() {
		return applicantSn;
	}

	public void setApplicantSn(double applicantSn) {
		this.applicantSn = applicantSn;
	}
	
	
	@Column(name="email",length=100)
	public String getEamil() {
		return eamil;
	}
	public void setEamil(String eamil) {
		this.eamil = eamil;
	}
	
	@Column(name="username",length=100)
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	@Column(name="pdfPath",length=100)
	public String getPdfPath() {
		return pdfPath;
	}

	public void setPdfPath(String pdfPath) {
		this.pdfPath = pdfPath;
	}
	
	@Column(name="uploadtime",length=100)
	public LocalDate getUploadtime() {
		return uploadtime;
	}

	public void setUploadtime(LocalDate uploadtime) {
		this.uploadtime = uploadtime;
	}

	
	@Column(name="fileCodePatn",length=100)
	public String getCodeFilePath() {
		return codeFilePath;
	}

	public void setCodeFilePath(String codeFilePath) {
		this.codeFilePath = codeFilePath;
	}
	
	
	
	
	
	
	
	
}
