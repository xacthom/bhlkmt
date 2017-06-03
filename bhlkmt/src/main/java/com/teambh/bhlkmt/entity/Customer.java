package com.teambh.bhlkmt.entity;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.List;

@Entity
@Table(name = "Customer", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = "CustomerCode"))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class Customer implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8367204469902022696L;
	private Integer customerId;
	private String address;
	private String customerCode;
	private String customerName;
	private String email;
	private String phone;
	
	private List<SalesInvoice> salesInvoices;

	public Customer() {
	}

	public Customer(String customerCode, String customerName) {
		this.customerCode = customerCode;
		this.customerName = customerName;
	}

	public Customer(String address, String customerCode, String customerName, String email, String phone) {
		this.address = address;
		this.customerCode = customerCode;
		this.customerName = customerName;
		this.email = email;
		this.phone = phone;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "CustomerId", unique = true, nullable = false)
	public Integer getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	@Column(name = "Address")
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "CustomerCode", unique = true, nullable = false)
	public String getCustomerCode() {
		return this.customerCode;
	}

	public void setCustomerCode(String customerCode) {
		this.customerCode = customerCode;
	}

	@Column(name = "CustomerName", nullable = false)
	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	@Column(name = "Email")
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "Phone")
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customer")
	public List<SalesInvoice> getSalesInvoices() {
		return salesInvoices;
	}

	public void setSalesInvoices(List<SalesInvoice> salesInvoice) {
		this.salesInvoices = salesInvoice;
	}

}
