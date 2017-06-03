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
@Table(name = "Manufacture", catalog = "bhlkmt", uniqueConstraints = @UniqueConstraint(columnNames = "ManufactureCode"))
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class Manufacture implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4811282868605498578L;
	private Integer manufactureId;
	private String manufactureCode;
	private String manufactureName;

	private List<ComponentProduct> componentProducts;

	public Manufacture() {
	}

	public Manufacture(String manufactureCode, String manufactureName) {
		this.manufactureCode = manufactureCode;
		this.manufactureName = manufactureName;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "ManufactureId", unique = true, nullable = false)
	public Integer getManufactureId() {
		return this.manufactureId;
	}

	public void setManufactureId(Integer manufactureId) {
		this.manufactureId = manufactureId;
	}

	@Column(name = "ManufactureCode", unique = true, nullable = false)
	public String getManufactureCode() {
		return this.manufactureCode;
	}

	public void setManufactureCode(String manufactureCode) {
		this.manufactureCode = manufactureCode;
	}

	@Column(name = "ManufactureName", nullable = false)
	public String getManufactureName() {
		return this.manufactureName;
	}

	public void setManufactureName(String manufactureName) {
		this.manufactureName = manufactureName;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "manufacture")
	public List<ComponentProduct> getComponentProducts() {
		return componentProducts;
	}

	public void setComponentProducts(List<ComponentProduct> componentProducts) {
		this.componentProducts = componentProducts;
	}

}
