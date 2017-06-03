package com.teambh.bhlkmt.entity;

import java.math.BigDecimal;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "SalesInvoiceDetails", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = {
		"SalesInvoiceId", "ProductId" }))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class SalesInvoiceDetails implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 391556587890106904L;
	private Integer salesInvoiceDetailsId;
	private BigDecimal discount = BigDecimal.ONE;
	private BigDecimal originalPrice = BigDecimal.ZERO;
	private BigDecimal price = BigDecimal.ZERO;
	// private int productId;
	private int quantity;
	// private int salesInvoiceId;
	private BigDecimal total;

	private Product product;
	private SalesInvoice salesInvoice;

	public SalesInvoiceDetails() {
	}

	// public SalesInvoiceDetails(BigDecimal discount, BigDecimal originalPrice,
	// BigDecimal price, int productId,
	// int quantity, int salesInvoiceId, BigDecimal total) {
	// this.discount = discount;
	// this.originalPrice = originalPrice;
	// this.price = price;
	// this.productId = productId;
	// this.quantity = quantity;
	// this.salesInvoiceId = salesInvoiceId;
	// this.total = total;
	// }

	public SalesInvoiceDetails(BigDecimal discount, BigDecimal originalPrice, BigDecimal price, Product product,
			int quantity, SalesInvoice salesInvoice, BigDecimal total) {
		this.discount = discount;
		this.originalPrice = originalPrice;
		this.price = price;
		this.product = product;
		this.quantity = quantity;
		this.salesInvoice = salesInvoice;
		this.total = total;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "SalesInvoiceDetailsId", unique = true, nullable = false)
	public Integer getSalesInvoiceDetailsId() {
		return this.salesInvoiceDetailsId;
	}

	public void setSalesInvoiceDetailsId(Integer salesInvoiceDetailsId) {
		this.salesInvoiceDetailsId = salesInvoiceDetailsId;
	}

	@Column(name = "Discount", nullable = false, precision = 3)
	public BigDecimal getDiscount() {
		return this.discount;
	}

	public void setDiscount(BigDecimal discount) {
		this.discount = discount;
	}

	@Column(name = "OriginalPrice", nullable = false, precision = 15, scale = 4)
	public BigDecimal getOriginalPrice() {
		return this.originalPrice;
	}

	public void setOriginalPrice(BigDecimal originalPrice) {
		this.originalPrice = originalPrice;
	}

	@Column(name = "Price", nullable = false, precision = 15, scale = 4)
	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

//	@Column(name = "ProductId", nullable = false)
//	public int getProductId() {
//		return this.productId;
//	}
//
//	public void setProductId(int productId) {
//		this.productId = productId;
//	}

	@Column(name = "Quantity", nullable = false)
	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

//	@Column(name = "SalesInvoiceId", nullable = false)
//	public int getSalesInvoiceId() {
//		return this.salesInvoiceId;
//	}
//
//	public void setSalesInvoiceId(int salesInvoiceId) {
//		this.salesInvoiceId = salesInvoiceId;
//	}

	@Column(name = "Total", nullable = false, precision = 15, scale = 4)
	public BigDecimal getTotal() {
		return this.total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ProductId", nullable = false)
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SalesInvoiceId", nullable = false)
	public SalesInvoice getSalesInvoice() {
		return salesInvoice;
	}

	public void setSalesInvoice(SalesInvoice salesInvoice) {
		this.salesInvoice = salesInvoice;
	}

}
