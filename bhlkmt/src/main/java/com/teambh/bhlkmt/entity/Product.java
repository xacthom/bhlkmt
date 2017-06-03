package com.teambh.bhlkmt.entity;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "Product", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = "ProductCode"))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class Product implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6307609731945084302L;
	private Integer productId;
	private String imageUrl;
	private boolean isActive = true;
	private BigDecimal price = BigDecimal.ZERO;
	private String productCode;
	private String productName;
	private int warrantyMonth = 0;
	
	private ComponentProduct componentProduct;
	private List<ImportInvoiceDetails> importInvoiceDetails;
	private List<ImportInvoice> importInvoices;
	private List<SalesInvoiceDetails> salesInvoiceDetails;
	private List<SalesInvoice> salesInvoices;
	private List<WarehouseDetails> warehouseDetails;
	private List<Warehouse> warehouses;
	private List<WarehouseTransferDetails> warehouseTransferDetails;
	private List<WarehouseTransfer> warehouseTransfers;

	public Product() {
	}

	public Product(boolean isActive, BigDecimal price, String productCode, String productName, int warrantyMonth) {
		this.isActive = isActive;
		this.price = price;
		this.productCode = productCode;
		this.productName = productName;
		this.warrantyMonth = warrantyMonth;
	}

	public Product(String imageUrl, boolean isActive, BigDecimal price, String productCode, String productName,
			int warrantyMonth) {
		this.imageUrl = imageUrl;
		this.isActive = isActive;
		this.price = price;
		this.productCode = productCode;
		this.productName = productName;
		this.warrantyMonth = warrantyMonth;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "ProductId", unique = true, nullable = false)
	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	@Column(name = "ImageURL")
	public String getImageUrl() {
		return this.imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Column(name = "IsActive", nullable = false)
	public boolean isIsActive() {
		return this.isActive;
	}

	public void setIsActive(boolean isActive) {
		this.isActive = isActive;
	}

	@Column(name = "Price", nullable = false, precision = 15, scale = 4)
	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	@Column(name = "ProductCode", unique = true, nullable = false)
	public String getProductCode() {
		return this.productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	@Column(name = "ProductName", nullable = false)
	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Column(name = "WarrantyMonth", nullable = false)
	public int getWarrantyMonth() {
		return this.warrantyMonth;
	}

	public void setWarrantyMonth(int warrantyMonth) {
		this.warrantyMonth = warrantyMonth;
	}

	@OneToOne(fetch = FetchType.LAZY, mappedBy = "product", cascade = CascadeType.ALL)
	public ComponentProduct getComponentProduct() {
		return componentProduct;
	}

	public void setComponentProduct(ComponentProduct componentProduct) {
		this.componentProduct = componentProduct;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	public List<ImportInvoiceDetails> getImportInvoiceDetails() {
		return importInvoiceDetails;
	}

	public void setImportInvoiceDetails(List<ImportInvoiceDetails> importInvoiceDetails) {
		this.importInvoiceDetails = importInvoiceDetails;
	}

	@JsonIgnore
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "ImportInvoiceDetails", joinColumns = {
			@JoinColumn(name = "ProductId", nullable = false, updatable = false) },
			inverseJoinColumns = { @JoinColumn(name = "ImportInvoiceId",
					nullable = false, updatable = false) })
	public List<ImportInvoice> getImportInvoices() {
		return importInvoices;
	}

	public void setImportInvoices(List<ImportInvoice> importInvoices) {
		this.importInvoices = importInvoices;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	public List<SalesInvoiceDetails> getSalesInvoiceDetails() {
		return salesInvoiceDetails;
	}

	public void setSalesInvoiceDetails(List<SalesInvoiceDetails> salesInvoiceDetails) {
		this.salesInvoiceDetails = salesInvoiceDetails;
	}

	@JsonIgnore
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "SalesInvoiceDetails", joinColumns = {
			@JoinColumn(name = "ProductId", nullable = false, updatable = false) },
			inverseJoinColumns = { @JoinColumn(name = "SalesInvoiceId",
					nullable = false, updatable = false) })
	public List<SalesInvoice> getSalesInvoices() {
		return salesInvoices;
	}

	public void setSalesInvoices(List<SalesInvoice> salesInvoices) {
		this.salesInvoices = salesInvoices;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	public List<WarehouseDetails> getWarehouseDetails() {
		return warehouseDetails;
	}

	public void setWarehouseDetails(List<WarehouseDetails> warehouseDetails) {
		this.warehouseDetails = warehouseDetails;
	}

	@JsonIgnore
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "WarehouseDetails", joinColumns = {
			@JoinColumn(name = "ProductId", nullable = false, updatable = false) },
			inverseJoinColumns = { @JoinColumn(name = "WarehouseId",
					nullable = false, updatable = false) })
	public List<Warehouse> getWarehouses() {
		return warehouses;
	}

	public void setWarehouses(List<Warehouse> warehouses) {
		this.warehouses = warehouses;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "product")
	public List<WarehouseTransferDetails> getWarehouseTransferDetails() {
		return warehouseTransferDetails;
	}

	public void setWarehouseTransferDetails(List<WarehouseTransferDetails> warehouseTransferDetails) {
		this.warehouseTransferDetails = warehouseTransferDetails;
	}

	@JsonIgnore
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "WarehouseTransferDetails", joinColumns = {
			@JoinColumn(name = "ProductId", nullable = false, updatable = false) },
			inverseJoinColumns = { @JoinColumn(name = "WarehouseTransferId",
					nullable = false, updatable = false) })
	public List<WarehouseTransfer> getWarehouseTransfers() {
		return warehouseTransfers;
	}

	public void setWarehouseTransfers(List<WarehouseTransfer> warehouseTransfers) {
		this.warehouseTransfers = warehouseTransfers;
	}

}
