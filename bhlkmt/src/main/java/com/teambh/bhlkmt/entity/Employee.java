package com.teambh.bhlkmt.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "Employee", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = "EmployeeCode"))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class Employee implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3255070052021903771L;
	private Integer employeeId;
	private String address;
	private Date birthday;
	private String email;
	private String employeeCode;
	private String employeeName;
	private String gender;
	private boolean isActive = true;
	private String phone;
	// private int positionId;
	private Date startDate;
	//private Integer userId;

	private List<ImportInvoice> importInvoices;
	private Position position;
	private List<SalesInvoice> salesInvoices;
	private User user;
	private List<Warehouse> warehouses;
	private List<WarehouseTransfer> warehouseTransfers;

	public Employee() {
	}

	// public Employee(String employeeCode, String employeeName, boolean
	// isActive, int positionId, Date startDate) {
	// this.employeeCode = employeeCode;
	// this.employeeName = employeeName;
	// this.isActive = isActive;
	// this.positionId = positionId;
	// this.startDate = startDate;
	// }
	//
	// public Employee(String address, Date birthday, String email, String
	// employeeCode, String employeeName,
	// String gender, boolean isActive, String phone, int positionId, Date
	// startDate, Integer userId) {
	// this.address = address;
	// this.birthday = birthday;
	// this.email = email;
	// this.employeeCode = employeeCode;
	// this.employeeName = employeeName;
	// this.gender = gender;
	// this.isActive = isActive;
	// this.phone = phone;
	// this.positionId = positionId;
	// this.startDate = startDate;
	// this.userId = userId;
	// }

	public Employee(String employeeCode, String employeeName, boolean isActive, Position position, Date startDate) {
		this.employeeCode = employeeCode;
		this.employeeName = employeeName;
		this.isActive = isActive;
		this.position = position;
		this.startDate = startDate;
	}

	public Employee(String address, Date birthday, String email, String employeeCode, String employeeName,
			String gender, boolean isActive, String phone, Position position, Date startDate, User user) {
		this.address = address;
		this.birthday = birthday;
		this.email = email;
		this.employeeCode = employeeCode;
		this.employeeName = employeeName;
		this.gender = gender;
		this.isActive = isActive;
		this.phone = phone;
		this.position = position;
		this.startDate = startDate;
		this.user = user;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "EmployeeId", unique = true, nullable = false)
	public Integer getEmployeeId() {
		return this.employeeId;
	}

	public void setEmployeeId(Integer employeeId) {
		this.employeeId = employeeId;
	}

	@Column(name = "Address")
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "Birthday", length = 19)
	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column(name = "Email")
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "EmployeeCode", unique = true, nullable = false)
	public String getEmployeeCode() {
		return this.employeeCode;
	}

	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}

	@Column(name = "EmployeeName", nullable = false)
	public String getEmployeeName() {
		return this.employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	@Column(name = "Gender")
	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name = "IsActive", nullable = false)
	public boolean isIsActive() {
		return this.isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}

	@Column(name = "Phone")
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	// @Column(name = "PositionId", nullable = false)
	// public int getPositionId() {
	// return this.positionId;
	// }
	//
	// public void setPositionId(int positionId) {
	// this.positionId = positionId;
	// }

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "StartDate", nullable = false, length = 19)
	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

//	@Column(name = "UserId")
//	public Integer getUserId() {
//		return this.userId;
//	}
//
//	public void setUserId(Integer userId) {
//		this.userId = userId;
//	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "employee")
	public List<ImportInvoice> getImportInvoices() {
		return importInvoices;
	}

	public void setImportInvoices(List<ImportInvoice> importInvoices) {
		this.importInvoices = importInvoices;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "PositionId", nullable = false)
	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "employee")
	public List<SalesInvoice> getSalesInvoices() {
		return salesInvoices;
	}

	public void setSalesInvoices(List<SalesInvoice> salesInvoice) {
		this.salesInvoices = salesInvoice;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "UserId", nullable = true)
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "manager")
	public List<Warehouse> getWarehouses() {
		return warehouses;
	}

	public void setWarehouses(List<Warehouse> warehouses) {
		this.warehouses = warehouses;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "employee")
	public List<WarehouseTransfer> getWarehouseTransfers() {
		return warehouseTransfers;
	}

	public void setWarehouseTransfers(List<WarehouseTransfer> warehouseTransfers) {
		this.warehouseTransfers = warehouseTransfers;
	}

}
