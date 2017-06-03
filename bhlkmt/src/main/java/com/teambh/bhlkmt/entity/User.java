package com.teambh.bhlkmt.entity;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "User", catalog = "bhlkmt")
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class User implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3785250100816384587L;
	private Integer userId;
	private String email;
	private boolean emailConfirmed;
	private boolean enabled = true;
	private String name;
	private String passwordHash;
	private String role;
	private String userName;
	
	private Employee employee;

	public User() {
	}

	public User(String email, boolean emailConfirmed, boolean enabled, String name, String passwordHash, String role,
			String userName) {
		this.email = email;
		this.emailConfirmed = emailConfirmed;
		this.enabled = enabled;
		this.name = name;
		this.passwordHash = passwordHash;
		this.role = role;
		this.userName = userName;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "UserId", unique = true, nullable = false)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "Email", unique = true, nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "EmailConfirmed", nullable = false)
	public boolean isEmailConfirmed() {
		return this.emailConfirmed;
	}

	public void setEmailConfirmed(boolean emailConfirmed) {
		this.emailConfirmed = emailConfirmed;
	}

	@Column(name = "Enabled", nullable = false)
	public boolean isEnabled() {
		return this.enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Column(name = "Name", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "PasswordHash", nullable = false)
	public String getPasswordHash() {
		return this.passwordHash;
	}

	public void setPasswordHash(String passwordHash) {
		this.passwordHash = passwordHash;
	}

	@Column(name = "Role", nullable = false)
	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Column(name = "UserName", unique = true, nullable = false)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "user", cascade = CascadeType.ALL)
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

}
