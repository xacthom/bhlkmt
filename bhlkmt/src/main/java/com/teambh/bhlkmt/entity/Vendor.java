package com.teambh.bhlkmt.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;

import java.util.List;

import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

@Entity
@Table(name = "Vendor", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = "VendorCode"))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class Vendor implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6850544155438725273L;
	private Integer vendorId;
	private String descripition;
	private boolean isActive = true;
	private String vendorCode;
	private String vendorName;
	private String website;
	
	private List<ImportInvoice> importInvoices;

	public Vendor() {
	}

	public Vendor(boolean isActive, String vendorCode, String vendorName) {
		this.isActive = isActive;
		this.vendorCode = vendorCode;
		this.vendorName = vendorName;
	}

	public Vendor(String descripition, boolean isActive, String vendorCode, String vendorName, String website) {
		this.descripition = descripition;
		this.isActive = isActive;
		this.vendorCode = vendorCode;
		this.vendorName = vendorName;
		this.website = website;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "VendorId", unique = true, nullable = false)
	public Integer getVendorId() {
		return this.vendorId;
	}

	public void setVendorId(Integer vendorId) {
		this.vendorId = vendorId;
	}

	@Column(name = "Descripition")
	public String getDescripition() {
		return this.descripition;
	}

	public void setDescripition(String descripition) {
		this.descripition = descripition;
	}

	@Column(name = "IsActive", nullable = false)
	public boolean isIsActive() {
		return this.isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}

	@Column(name = "VendorCode", unique = true, nullable = false)
	public String getVendorCode() {
		return this.vendorCode;
	}

	public void setVendorCode(String vendorCode) {
		this.vendorCode = vendorCode;
	}

	@Column(name = "VendorName", nullable = false)
	public String getVendorName() {
		return this.vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	@Column(name = "Website")
	public String getWebsite() {
		return this.website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "vendor")
	public List<ImportInvoice> getImportInvoices() {
		return importInvoices;
	}

	public void setImportInvoices(List<ImportInvoice> importInvoices) {
		this.importInvoices = importInvoices;
	}

}
