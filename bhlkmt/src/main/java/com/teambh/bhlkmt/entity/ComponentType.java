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

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.voodoodyne.jackson.jsog.JSOGGenerator;

@Entity
@Table(name = "ComponentType", catalog = "bhlkmt")
@JsonIdentityInfo(generator = JSOGGenerator.class)
public class ComponentType implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5483949133515798037L;
	private Integer componentTypeId;
	private String componentTypeCode;
	private String componentTypeName;
	
	private List<ComponentProduct> componentProducts;

	public ComponentType() {
	}

	public ComponentType(String componentTypeCode, String componentTypeName) {
		this.componentTypeCode = componentTypeCode;
		this.componentTypeName = componentTypeName;
	}

	public ComponentType(String componentTypeCode, String componentTypeName, List<ComponentProduct> componentProducts) {
		this.componentTypeCode = componentTypeCode;
		this.componentTypeName = componentTypeName;
		this.componentProducts = componentProducts;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "ComponentTypeId", unique = true, nullable = false)
	public Integer getComponentTypeId() {
		return this.componentTypeId;
	}

	public void setComponentTypeId(Integer componentTypeId) {
		this.componentTypeId = componentTypeId;
	}

	@Column(name = "ComponentTypeCode", unique = true, nullable = false)
	public String getComponentTypeCode() {
		return this.componentTypeCode;
	}

	public void setComponentTypeCode(String componentTypeCode) {
		this.componentTypeCode = componentTypeCode;
	}

	@Column(name = "ComponentTypeName", nullable = false)
	public String getComponentTypeName() {
		return this.componentTypeName;
	}

	public void setComponentTypeName(String componentTypeName) {
		this.componentTypeName = componentTypeName;
	}

	@JsonIgnore
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "componentType")
	public List<ComponentProduct> getComponentProducts() {
		return componentProducts;
	}

	public void setComponentProducts(List<ComponentProduct> componentProducts) {
		this.componentProducts = componentProducts;
	}

}
