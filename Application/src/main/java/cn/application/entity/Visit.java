package cn.application.entity;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="visit")
public class Visit implements java.io.Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private double visitor;
	
	
	@Id
	@GeneratedValue(strategy=IDENTITY)
	@Column(name="id",unique=true,nullable=false)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="visitor",length=30)
	public double getVisitor() {
		return visitor;
	}

	public void setVisitor(double visitor) {
		this.visitor = visitor;
	}
	
	
	

}
