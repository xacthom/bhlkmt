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
@Table(name = "SalesInvoice", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = "SalesInvoiceCode"))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class SalesInvoice implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8916638217723448949L;
	private Integer salesInvoiceId;
	//private int customerId;
	private Date date;
	private String description;
	private BigDecimal discount = BigDecimal.ZERO;
	//private int employeeId;
	private String salesInvoiceCode;
	private BigDecimal subtotal = BigDecimal.ZERO;
	private BigDecimal total = BigDecimal.ZERO;
	//private int warehouseId;
	
	private Customer customer;
	private Employee employee;
	private List<Product> products;
	private List<SalesInvoiceDetails> salesInvoiceDetails;
	private Warehouse warehouse;

	public SalesInvoice() {
	}

//	public SalesInvoice(int customerId, BigDecimal discount, int employeeId, String salesInvoiceCode,
//			BigDecimal subtotal, BigDecimal total, int warehouseId) {
//		this.customerId = customerId;
//		this.discount = discount;
//		this.employeeId = employeeId;
//		this.salesInvoiceCode = salesInvoiceCode;
//		this.subtotal = subtotal;
//		this.total = total;
//		this.warehouseId = warehouseId;
//	}
//
//	public SalesInvoice(int customerId, Date date, String description, BigDecimal discount, int employeeId,
//			String salesInvoiceCode, BigDecimal subtotal, BigDecimal total, int warehouseId) {
//		this.customerId = customerId;
//		this.date = date;
//		this.description = description;
//		this.discount = discount;
//		this.employeeId = employeeId;
//		this.salesInvoiceCode = salesInvoiceCode;
//		this.subtotal = subtotal;
//		this.total = total;
//		this.warehouseId = warehouseId;
//	}
	
	public SalesInvoice(Customer customer, BigDecimal discount, Employee employee, String salesInvoiceCode,
			BigDecimal subtotal, BigDecimal total, Warehouse warehouse) {
		this.customer = customer;
		this.discount = discount;
		this.employee = employee;
		this.salesInvoiceCode = salesInvoiceCode;
		this.subtotal = subtotal;
		this.total = total;
		this.warehouse = warehouse;
	}

	public SalesInvoice(Customer customer, Date date, String description, BigDecimal discount, Employee employee,
			String salesInvoiceCode, BigDecimal subtotal, BigDecimal total, Warehouse warehouse) {
		this.customer = customer;
		this.date = date;
		this.description = description;
		this.discount = discount;
		this.employee = employee;
		this.salesInvoiceCode = salesInvoiceCode;
		this.subtotal = subtotal;
		this.total = total;
		this.warehouse = warehouse;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "SalesInvoiceId", unique = true, nullable = false)
	public Integer getSalesInvoiceId() {
		return this.salesInvoiceId;
	}

	public void setSalesInvoiceId(Integer salesInvoiceId) {
		this.salesInvoiceId = salesInvoiceId;
	}

//	@Column(name = "CustomerId", nullable = false)
//	public int getCustomerId() {
//		return this.customerId;
//	}
//
//	public void setCustomerId(int customerId) {
//		this.customerId = customerId;
//	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "Date", length = 19)
	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
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

	@Column(name = "SalesInvoiceCode", unique = true, nullable = false)
	public String getSalesInvoiceCode() {
		return this.salesInvoiceCode;
	}

	public void setSalesInvoiceCode(String salesInvoiceCode) {
		this.salesInvoiceCode = salesInvoiceCode;
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

//	@Column(name = "WarehouseId", nullable = false)
//	public int getWarehouseId() {
//		return this.warehouseId;
//	}
//
//	public void setWarehouseId(int warehouseId) {
//		this.warehouseId = warehouseId;
//	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CustomerId", nullable = false)
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
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
	@JoinTable(name = "SalesInvoiceDetails", joinColumns = {
			@JoinColumn(name = "SalesInvoiceId", nullable = false, updatable = false) },
			inverseJoinColumns = { @JoinColumn(name = "ProductId",
					nullable = false, updatable = false) })
	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "salesInvoice")
	public List<SalesInvoiceDetails> getSalesInvoiceDetails() {
		return salesInvoiceDetails;
	}

	public void setSalesInvoiceDetails(List<SalesInvoiceDetails> salesInvoiceDetails) {
		this.salesInvoiceDetails = salesInvoiceDetails;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "WarehosueId", nullable = false)
	public Warehouse getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}

}
