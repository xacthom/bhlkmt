package com.teambh.bhlkmt.entity;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "WarehouseTransferDetails", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = {
		"WarehouseTransferId", "ProductId" }))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class WarehouseTransferDetails implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3193887171625863022L;
	private Integer warehouseTransferDetailsId;
//	private int productId;
	private int quantity = 0;
//	private int warehouseTransferId;
	
	private Product product;
	private WarehouseTransfer warehouseTransfer;

	public WarehouseTransferDetails() {
	}

//	public WarehouseTransferDetails(int productId, int quantity, int warehouseTransferId) {
//		this.productId = productId;
//		this.quantity = quantity;
//		this.warehouseTransferId = warehouseTransferId;
//	}

	public WarehouseTransferDetails(Product product, int quantity, WarehouseTransfer warehouseTransfer) {
		this.product = product;
		this.quantity = quantity;
		this.warehouseTransfer = warehouseTransfer;
	}
	
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "WarehouseTransferDetailsId", unique = true, nullable = false)
	public Integer getWarehouseTransferDetailsId() {
		return this.warehouseTransferDetailsId;
	}

	public void setWarehouseTransferDetailsId(Integer warehouseTransferDetailsId) {
		this.warehouseTransferDetailsId = warehouseTransferDetailsId;
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

//	@Column(name = "WarehouseTransferId", nullable = false)
//	public int getWarehouseTransferId() {
//		return this.warehouseTransferId;
//	}
//
//	public void setWarehouseTransferId(int warehouseTransferId) {
//		this.warehouseTransferId = warehouseTransferId;
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
	@JoinColumn(name = "WarehouseTransferId", nullable = false)
	public WarehouseTransfer getWarehouseTransfer() {
		return warehouseTransfer;
	}

	public void setWarehouseTransfer(WarehouseTransfer warehouseTransfer) {
		this.warehouseTransfer = warehouseTransfer;
	}

}
