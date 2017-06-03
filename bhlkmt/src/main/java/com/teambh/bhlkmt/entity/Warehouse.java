package com.teambh.bhlkmt.entity;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.List;

@Entity
@Table(name = "Warehouse", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = "WarehouseCode"))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class Warehouse implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7925007279731583909L;
	private Integer warehouseId;
	private String address;
	private int currentQuantity = 0;
	private String description;
	private String fax;
	private boolean isActive = true;
	//private int managerId;
	private int maxQuantity;
	private String phone;
	private String warehouseCode;
	private String warehouseName;

	private List<ImportInvoice> importInvoices;
	private Employee manager;
	private List<Product> products;
	private List<SalesInvoice> saleInvoices;
	private List<WarehouseDetails> warehouseDetails;
	private List<WarehouseTransfer> warehouseTransferOrigin;
	private List<WarehouseTransfer> warehouseTransferTarget;

	public Warehouse() {
	}

//	public Warehouse(String address, int currentQuantity, boolean isActive, int managerId, int maxQuantity,
//			String warehouseCode, String warehouseName) {
//		this.address = address;
//		this.currentQuantity = currentQuantity;
//		this.isActive = isActive;
//		this.managerId = managerId;
//		this.maxQuantity = maxQuantity;
//		this.warehouseCode = warehouseCode;
//		this.warehouseName = warehouseName;
//	}
//
//	public Warehouse(String address, int currentQuantity, String description, String fax, boolean isActive,
//			int managerId, int maxQuantity, String phone, String warehouseCode, String warehouseName) {
//		this.address = address;
//		this.currentQuantity = currentQuantity;
//		this.description = description;
//		this.fax = fax;
//		this.isActive = isActive;
//		this.managerId = managerId;
//		this.maxQuantity = maxQuantity;
//		this.phone = phone;
//		this.warehouseCode = warehouseCode;
//		this.warehouseName = warehouseName;
//	}
	
	public Warehouse(String address, int currentQuantity, boolean isActive, Employee manager, int maxQuantity,
			String warehouseCode, String warehouseName) {
		this.address = address;
		this.currentQuantity = currentQuantity;
		this.isActive = isActive;
		this.manager = manager;
		this.maxQuantity = maxQuantity;
		this.warehouseCode = warehouseCode;
		this.warehouseName = warehouseName;
	}

	public Warehouse(String address, int currentQuantity, String description, String fax, boolean isActive,
			Employee manager, int maxQuantity, String phone, String warehouseCode, String warehouseName) {
		this.address = address;
		this.currentQuantity = currentQuantity;
		this.description = description;
		this.fax = fax;
		this.isActive = isActive;
		this.manager = manager;
		this.maxQuantity = maxQuantity;
		this.phone = phone;
		this.warehouseCode = warehouseCode;
		this.warehouseName = warehouseName;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "WarehouseId", unique = true, nullable = false)
	public Integer getWarehouseId() {
		return this.warehouseId;
	}

	public void setWarehouseId(Integer warehouseId) {
		this.warehouseId = warehouseId;
	}

	@Column(name = "Address", nullable = false)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "CurrentQuantity", nullable = false)
	public int getCurrentQuantity() {
		return this.currentQuantity;
	}

	public void setCurrentQuantity(int currentQuantity) {
		this.currentQuantity = currentQuantity;
	}

	@Column(name = "Description")
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "Fax")
	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	@Column(name = "IsActive", nullable = false)
	public boolean isIsActive() {
		return this.isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}

//	@Column(name = "ManagerId", nullable = false)
//	public int getManagerId() {
//		return this.managerId;
//	}
//
//	public void setManagerId(int managerId) {
//		this.managerId = managerId;
//	}

	@Column(name = "MaxQuantity", nullable = false)
	public int getMaxQuantity() {
		return this.maxQuantity;
	}

	public void setMaxQuantity(int maxQuantity) {
		this.maxQuantity = maxQuantity;
	}

	@Column(name = "Phone")
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "WarehouseCode", unique = true, nullable = false)
	public String getWarehouseCode() {
		return this.warehouseCode;
	}

	public void setWarehouseCode(String warehouseCode) {
		this.warehouseCode = warehouseCode;
	}

	@Column(name = "WarehouseName", nullable = false)
	public String getWarehouseName() {
		return this.warehouseName;
	}

	public void setWarehouseName(String warehouseName) {
		this.warehouseName = warehouseName;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "warehouse")
	public List<ImportInvoice> getImportInvoices() {
		return importInvoices;
	}

	public void setImportInvoices(List<ImportInvoice> importInvoices) {
		this.importInvoices = importInvoices;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ManagerId", nullable = false)
	public Employee getManager() {
		return manager;
	}

	public void setManager(Employee manager) {
		this.manager = manager;
	}

	@JsonIgnore
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "WarehouseDetails", joinColumns = {
			@JoinColumn(name = "WarehouseId", nullable = false, updatable = false) },
			inverseJoinColumns = { @JoinColumn(name = "ProductId",
					nullable = false, updatable = false) })
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "warehouse")
	public List<SalesInvoice> getSaleInvoices() {
		return saleInvoices;
	}

	public void setSaleInvoices(List<SalesInvoice> saleInvoices) {
		this.saleInvoices = saleInvoices;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "warehouse")
	public List<WarehouseDetails> getWarehouseDetails() {
		return warehouseDetails;
	}

	public void setWarehouseDetails(List<WarehouseDetails> warehouseDetails) {
		this.warehouseDetails = warehouseDetails;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "warehouseOrigin")
	public List<WarehouseTransfer> getWarehouseTransferOrigin() {
		return warehouseTransferOrigin;
	}

	public void setWarehouseTransferOrigin(List<WarehouseTransfer> warehouseTransferOrigin) {
		this.warehouseTransferOrigin = warehouseTransferOrigin;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "warehouseTarget")
	public List<WarehouseTransfer> getWarehouseTransferTarget() {
		return warehouseTransferTarget;
	}

	public void setWarehouseTransferTarget(List<WarehouseTransfer> warehouseTransferTarget) {
		this.warehouseTransferTarget = warehouseTransferTarget;
	}

}
