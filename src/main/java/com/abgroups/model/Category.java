package com.abgroups.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="category")
public class Category implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "categor_id")
	private Integer categoryId;
	
	
	@Column(name="category_name",unique=true)
	private String categoryName;
	
	@Override
	public String toString() {
		return "Category [categoryId=" + categoryId + ", categoryName=" + categoryName + ", isActiveCategory="
				+ isActiveCategory + ", isDeleteCategory=" + isDeleteCategory + ", categoryType=" + categoryType + "]";
	}

	
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Column(name="is_active_category")
	private Integer isActiveCategory;
	
	@Column(name="is_delete_category")
	private Integer isDeleteCategory;
	/*
	 * Category 1 :  Objective category
	 * Category 2 :  Subjective category
	 * 
	 */
	@Column(name="category_type")
	private Integer categoryType;

	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getIsActiveCategory() {
		return isActiveCategory;
	}
	public void setIsActiveCategory(Integer isActiveCategory) {
		this.isActiveCategory = isActiveCategory;
	}
	public Integer getIsDeleteCategory() {
		return isDeleteCategory;
	}
	public void setIsDeleteCategory(Integer isDeleteCategory) {
		this.isDeleteCategory = isDeleteCategory;
	}
	public Integer getCategoryType() {
		return categoryType;
	}
	public void setCategoryType(Integer categoryType) {
		this.categoryType = categoryType;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
