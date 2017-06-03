package com.teambh.bhlkmt.entity;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "ImportInvoice", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = "ImportInvoiceCode"))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class ImportInvoice implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3942519523472875912L;
	private Integer importInvoiceId;
	private Date arrivalDate;
	private String description;
	private BigDecimal discount = BigDecimal.ZERO;
	//private int employeeId;
	private String importInvoiceCode;
	private Date orderDate;
	private BigDecimal subtotal = BigDecimal.ZERO;
	private BigDecimal total = BigDecimal.ZERO;
	//private int vendorId;
	//private int warehouseId;
	
	private Employee employee;
	private List<ImportInvoiceDetails> importInvoiceDetails;
	private List<Product> products;
	private Vendor vendor;
	private Warehouse warehouse;

	public ImportInvoice() {
	}

//	public ImportInvoice(Date arrivalDate, BigDecimal discount, int employeeId, String importInvoiceCode,
//			BigDecimal subtotal, BigDecimal total, int vendorId, int warehouseId) {
//		this.arrivalDate = arrivalDate;
//		this.discount = discount;
//		this.employeeId = employeeId;
//		this.importInvoiceCode = importInvoiceCode;
//		this.subtotal = subtotal;
//		this.total = total;
//		this.vendorId = vendorId;
//		this.warehouseId = warehouseId;
//	}
//
//	public ImportInvoice(Date arrivalDate, String description, BigDecimal discount, int employeeId,
//			String importInvoiceCode, Date orderDate, BigDecimal subtotal, BigDecimal total, int vendorId,
//			int warehouseId) {
//		this.arrivalDate = arrivalDate;
//		this.description = description;
//		this.discount = discount;
//		this.employeeId = employeeId;
//		this.importInvoiceCode = importInvoiceCode;
//		this.orderDate = orderDate;
//		this.subtotal = subtotal;
//		this.total = total;
//		this.vendorId = vendorId;
//		this.warehouseId = warehouseId;
//	}
	
	public ImportInvoice(Date arrivalDate, BigDecimal discount, Employee employee, String importInvoiceCode,
			BigDecimal subtotal, BigDecimal total, Vendor vendor, Warehouse warehouse) {
		this.arrivalDate = arrivalDate;
		this.discount = discount;
		this.employee = employee;
		this.importInvoiceCode = importInvoiceCode;
		this.subtotal = subtotal;
		this.total = total;
		this.vendor = vendor;
		this.warehouse = warehouse;
	}

	public ImportInvoice(Date arrivalDate, String description, BigDecimal discount, Employee employee,
			String importInvoiceCode, Date orderDate, BigDecimal subtotal, BigDecimal total, Vendor vendor,
			Warehouse warehouse) {
		this.arrivalDate = arrivalDate;
		this.description = description;
		this.discount = discount;
		this.employee = employee;
		this.importInvoiceCode = importInvoiceCode;
		this.orderDate = orderDate;
		this.subtotal = subtotal;
		this.total = total;
		this.vendor = vendor;
		this.warehouse = warehouse;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "ImportInvoiceId", unique = true, nullable = false)
	public Integer getImportInvoiceId() {
		return this.importInvoiceId;
	}

	public void setImportInvoiceId(Integer importInvoiceId) {
		this.importInvoiceId = importInvoiceId;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "ArrivalDate", nullable = false, length = 19)
	public Date getArrivalDate() {
		return this.arrivalDate;
	}

	public void setArrivalDate(Date arrivalDate) {
		this.arrivalDate = arrivalDate;
	}

	@Column(name = "Description")
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "Discount", nullable = false, precision = 3)
	public BigDecimal getDiscount() {
		return this.discount;
	}

	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}

//	@Column(name = "EmployeeId", nullable = false)
//	public int getEmployeeId() {
//		return this.employeeId;
//	}
//
//	public void setEmployeeId(int employeeId) {
//		this.employeeId = employeeId;
//	}

	@Column(name = "ImportInvoiceCode", unique = true, nullable = false)
	public String getImportInvoiceCode() {
		return this.importInvoiceCode;
	}

	public void setImportInvoiceCode(String importInvoiceCode) {
		this.importInvoiceCode = importInvoiceCode;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "OrderDate", length = 19)
	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	@Column(name = "Subtotal", nullable = false, precision = 15, scale = 4)
	public BigDecimal getSubtotal() {
		return this.subtotal;
	}

	public void setSubtotal(BigDecimal subtotal) {
		this.subtotal = subtotal;
	}

	@Column(name = "Total", nullable = false, precision = 15, scale = 4)
	public BigDecimal getTotal() {
		return this.total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

//	@Column(name = "VendorId", nullable = false)
//	public int getVendorId() {
//		return this.vendorId;
//	}
//
//	public void setVendorId(int vendorId) {
//		this.vendorId = vendorId;
//	}

//	@Column(name = "WarehouseId", nullable = false)
//	public int getWarehouseId() {
//		return this.warehouseId;
//	}
//
//	public void setWarehouseId(int warehouseId) {
//		this.warehouseId = warehouseId;
//	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "EmployeeId", nullable = false)
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "importInvoice")
	public List<ImportInvoiceDetails> getImportInvoiceDetails() {
		return importInvoiceDetails;
	}

	public void setImportInvoiceDetails(List<ImportInvoiceDetails> importInvoiceDetails) {
		this.importInvoiceDetails = importInvoiceDetails;
	}
	
	@JsonIgnore
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "ImportInvoiceDetails", joinColumns = {
			@JoinColumn(name = "ImportInvoiceId", nullable = false, updatable = false) },
			inverseJoinColumns = { @JoinColumn(name = "ProductId",
					nullable = false, updatable = false) })
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "VendorId", nullable = false)
	public Vendor getVendor() {
		return vendor;
	}

	public void setVendor(Vendor vendor) {
		this.vendor = vendor;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "WarehouseId", nullable = false)
	public Warehouse getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}

}
