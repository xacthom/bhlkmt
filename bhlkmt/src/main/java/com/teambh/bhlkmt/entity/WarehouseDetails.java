package com.teambh.bhlkmt.entity;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "WarehouseDetails", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = {
		"WarehouseId", "ProductId" }))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class WarehouseDetails implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3364926616809681626L;
	private Integer warehouseDetailsId;
	// private int productId;
	private int quantity = 0;
	// private int warehouseId;

	private Product product;
	private Warehouse warehouse;

	public WarehouseDetails() {
	}

	// public WarehouseDetails(int productId, int quantity, int warehouseId) {
	// this.productId = productId;
	// this.quantity = quantity;
	// this.warehouseId = warehouseId;
	// }

	public WarehouseDetails(Product product, int quantity, Warehouse warehouse) {
		this.product = product;
		this.quantity = quantity;
		this.warehouse = warehouse;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "WarehouseDetailsId", unique = true, nullable = false)
	public Integer getWarehouseDetailsId() {
		return this.warehouseDetailsId;
	}

	public void setWarehouseDetailsId(Integer warehouseDetailsId) {
		this.warehouseDetailsId = warehouseDetailsId;
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

//	@Column(name = "WarehouseId", nullable = false)
//	public int getWarehouseId() {
//		return this.warehouseId;
//	}
//
//	public void setWarehouseId(int warehouseId) {
//		this.warehouseId = warehouseId;
//	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ProductId", nullable = false)
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
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
