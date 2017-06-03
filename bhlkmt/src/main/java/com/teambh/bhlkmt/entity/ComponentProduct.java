package com.teambh.bhlkmt.entity;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

@Entity
@Table(name = "ComponentProduct", catalog = "bhlkmt")
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class ComponentProduct implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8894919638458351046L;
	private int productId;
	// private int componentTypeId;
	private String feature;
	// private int manufactureId;

	private Product product;
	private ComponentType componentType;
	private Manufacture manufacture;

	public ComponentProduct() {
	}

	// public ComponentProduct(int productId, int componentTypeId, int
	// manufactureId) {
	// this.productId = productId;
	// this.componentTypeId = componentTypeId;
	// this.manufactureId = manufactureId;
	// }
	//
	// public ComponentProduct(int productId, int componentTypeId, String
	// feature, int manufactureId) {
	// this.productId = productId;
	// this.componentTypeId = componentTypeId;
	// this.feature = feature;
	// this.manufactureId = manufactureId;
	// }

	public ComponentProduct(Product product, ComponentType componentType, Manufacture manufacture) {
		this.product = product;
		this.componentType = componentType;
		this.manufacture = manufacture;
	}

	public ComponentProduct(Product product, ComponentType componentType, String feature, Manufacture manufacture) {
		this.product = product;
		this.componentType = componentType;
		this.feature = feature;
		this.manufacture = manufacture;
	}

	@GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter(name = "property", value = "product"))
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "ProductId", unique = true, nullable = false)
	public int getProductId() {
		return this.productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	// @Column(name = "ComponentTypeId", nullable = false)
	// public int getComponentTypeId() {
	// return this.componentTypeId;
	// }

	// public void setComponentTypeId(int componentTypeId) {
	// this.componentTypeId = componentTypeId;
	// }

	@Column(name = "Feature")
	public String getFeature() {
		return this.feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}

	// @Column(name = "ManufactureId", nullable = false)
	// public int getManufactureId() {
	// return this.manufactureId;
	// }
	//
	// public void setManufactureId(int manufactureId) {
	// this.manufactureId = manufactureId;
	// }

	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ComponentTypeId", nullable = false)
	public ComponentType getComponentType() {
		return componentType;
	}

	public void setComponentType(ComponentType componentType) {
		this.componentType = componentType;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ManufactureId", nullable = false)
	public Manufacture getManufacture() {
		return manufacture;
	}

	public void setManufacture(Manufacture manufacture) {
		this.manufacture = manufacture;
	}

}
