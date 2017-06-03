package com.teambh.bhlkmt.entity;

import java.math.BigDecimal;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "ImportInvoiceDetails", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = {
		"ImportInvoiceId", "ProductId" }))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class ImportInvoiceDetails implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4875872016841865399L;
	private Integer importInvoiceDetailsId;
	// private int importInvoiceId;
	private BigDecimal price = BigDecimal.ZERO;
	// private int productId;
	private int quantity = 0;
	private BigDecimal total = BigDecimal.ZERO;

	private ImportInvoice importInvoice;
	private Product product;

	public ImportInvoiceDetails() {
	}

	// public ImportInvoiceDetails(int importInvoiceId, BigDecimal price, int
	// productId, int quantity, BigDecimal total) {
	// this.importInvoiceId = importInvoiceId;
	// this.price = price;
	// this.productId = productId;
	// this.quantity = quantity;
	// this.total = total;
	// }

	public ImportInvoiceDetails(ImportInvoice importInvoice, BigDecimal price, Product product, int quantity,
			BigDecimal total) {
		this.importInvoice = importInvoice;
		this.price = price;
		this.product = product;
		this.quantity = quantity;
		this.total = total;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "ImportInvoiceDetailsId", unique = true, nullable = false)
	public Integer getImportInvoiceDetailsId() {
		return this.importInvoiceDetailsId;
	}

	public void setImportInvoiceDetailsId(Integer importInvoiceDetailsId) {
		this.importInvoiceDetailsId = importInvoiceDetailsId;
	}

	// @Column(name = "ImportInvoiceId", nullable = false)
	// public int getImportInvoiceId() {
	// return this.importInvoiceId;
	// }
	//
	// public void setImportInvoiceId(int importInvoiceId) {
	// this.importInvoiceId = importInvoiceId;
	// }

	@Column(name = "Price", nullable = false, precision = 15, scale = 4)
	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	// @Column(name = "ProductId", nullable = false)
	// public int getProductId() {
	// return this.productId;
	// }
	//
	// public void setProductId(int productId) {
	// this.productId = productId;
	// }

	@Column(name = "Quantity", nullable = false)
	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Column(name = "Total", nullable = false, precision = 15, scale = 4)
	public BigDecimal getTotal() {
		return this.total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ImportInvoiceId", nullable = false)
	public ImportInvoice getImportInvoice() {
		return importInvoice;
	}

	public void setImportInvoice(ImportInvoice importInvoice) {
		this.importInvoice = importInvoice;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ProductId", nullable = false)
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}
