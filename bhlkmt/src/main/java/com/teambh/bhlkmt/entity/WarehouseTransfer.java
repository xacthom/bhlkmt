package com.teambh.bhlkmt.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "WarehouseTransfer", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = "WarehouseTransferCode"))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class WarehouseTransfer implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4331701738432730040L;
	private Integer warehouseTransferId;
	private Date dateTransfer;
	private String description;
	//private int employeeId;
	//private int warehouseOriginId;
	//private int warehouseTargetId;
	private String warehouseTransferCode;

	private Employee employee;
	private List<Product> products;
	private Warehouse warehouseOrigin;
	private Warehouse warehouseTarget;
	private List<WarehouseTransferDetails> WarehouseTransferDetails;

//	public WarehouseTransfer() {
//	}
//
//	public WarehouseTransfer(Date dateTransfer, int employeeId, int warehouseOriginId, int warehouseTargetId,
//			String warehouseTransferCode) {
//		this.dateTransfer = dateTransfer;
//		this.employeeId = employeeId;
//		this.warehouseOriginId = warehouseOriginId;
//		this.warehouseTargetId = warehouseTargetId;
//		this.warehouseTransferCode = warehouseTransferCode;
//	}
//
//	public WarehouseTransfer(Date dateTransfer, String description, int employeeId, int warehouseOriginId,
//			int warehouseTargetId, String warehouseTransferCode) {
//		this.dateTransfer = dateTransfer;
//		this.description = description;
//		this.employeeId = employeeId;
//		this.warehouseOriginId = warehouseOriginId;
//		this.warehouseTargetId = warehouseTargetId;
//		this.warehouseTransferCode = warehouseTransferCode;
//	}
	
	public WarehouseTransfer() {
	}

	public WarehouseTransfer(Date dateTransfer, Employee employee, Warehouse warehouseOrigin, Warehouse warehouseTarget,
			String warehouseTransferCode) {
		this.dateTransfer = dateTransfer;
		this.employee = employee;
		this.warehouseOrigin = warehouseOrigin;
		this.warehouseTarget = warehouseTarget;
		this.warehouseTransferCode = warehouseTransferCode;
	}

	public WarehouseTransfer(Date dateTransfer, String description, Employee employee, Warehouse warehouseOrigin,
			Warehouse warehouseTarget, String warehouseTransferCode) {
		this.dateTransfer = dateTransfer;
		this.description = description;
		this.employee = employee;
		this.warehouseOrigin = warehouseOrigin;
		this.warehouseTarget = warehouseTarget;
		this.warehouseTransferCode = warehouseTransferCode;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "WarehouseTransferId", unique = true, nullable = false)
	public Integer getWarehouseTransferId() {
		return this.warehouseTransferId;
	}

	public void setWarehouseTransferId(Integer warehouseTransferId) {
		this.warehouseTransferId = warehouseTransferId;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "DateTransfer", nullable = false, length = 19)
	public Date getDateTransfer() {
		return this.dateTransfer;
	}

	public void setDateTransfer(Date dateTransfer) {
		this.dateTransfer = dateTransfer;
	}

	@Column(name = "Description")
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

//	@Column(name = "EmployeeId", nullable = false)
//	public int getEmployeeId() {
//		return this.employeeId;
//	}
//
//	public void setEmployeeId(int employeeId) {
//		this.employeeId = employeeId;
//	}

//	@Column(name = "WarehouseOriginId", nullable = false)
//	public int getWarehouseOriginId() {
//		return this.warehouseOriginId;
//	}
//
//	public void setWarehouseOriginId(int warehouseOriginId) {
//		this.warehouseOriginId = warehouseOriginId;
//	}
//
//	@Column(name = "WarehouseTargetId", nullable = false)
//	public int getWarehouseTargetId() {
//		return this.warehouseTargetId;
//	}
//
//	public void setWarehouseTargetId(int warehouseTargetId) {
//		this.warehouseTargetId = warehouseTargetId;
//	}

	@Column(name = "WarehouseTransferCode", unique = true, nullable = false)
	public String getWarehouseTransferCode() {
		return this.warehouseTransferCode;
	}

	public void setWarehouseTransferCode(String warehouseTransferCode) {
		this.warehouseTransferCode = warehouseTransferCode;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "EmployeeId", nullable = false)
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	@JsonIgnore
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "WarehouseTransferDetails", joinColumns = {
			@JoinColumn(name = "WarehouseTransferId", nullable = false, updatable = false) },
			inverseJoinColumns = { @JoinColumn(name = "ProductId",
					nullable = false, updatable = false) })
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "WarehouseOriginId", nullable = false)
	public Warehouse getWarehouseOrigin() {
		return warehouseOrigin;
	}

	public void setWarehouseOrigin(Warehouse warehouseOrigin) {
		this.warehouseOrigin = warehouseOrigin;
	}
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "WarehouseTargetId", nullable = false)
	public Warehouse getWarehouseTarget() {
		return warehouseTarget;
	}

	public void setWarehouseTarget(Warehouse warehouseTarget) {
		this.warehouseTarget = warehouseTarget;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "warehouseTransfer")
	public List<WarehouseTransferDetails> getWarehouseTransferDetails() {
		return WarehouseTransferDetails;
	}

	public void setWarehouseTransferDetails(List<WarehouseTransferDetails> warehouseTransferDetails) {
		WarehouseTransferDetails = warehouseTransferDetails;
	}

}
