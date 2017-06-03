package com.teambh.bhlkmt.entity;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.List;

@Entity
@Table(name = "Position", catalog = "bhlkmt")
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class Position implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7207656363648125030L;
	private Integer positionId;
	private String positionName;
	
	private List<Employee> employee;

	public Position() {
	}

	public Position(String positionName) {
		this.positionName = positionName;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "PositionId", unique = true, nullable = false)
	public Integer getPositionId() {
		return this.positionId;
	}

	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}

	@Column(name = "PositionName", nullable = false)
	public String getPositionName() {
		return this.positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "position")
	public List<Employee> getEmployee() {
		return employee;
	}

	public void setEmployee(List<Employee> employee) {
		this.employee = employee;
	}

}
