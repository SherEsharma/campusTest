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
	
	@Override
	public String toString() {
		return "Category [categoryId=" + categoryId + ", categortName=" + categortName + ", isActiveCategory="
				+ isActiveCategory + ", isDeleteCategory=" + isDeleteCategory + "]";
	}

	@Column(name="category_name",unique=true)
	private String categortName;
	
	@Column(name="is_active_category")
	private Integer isActiveCategory;
	
	@Column(name="is_delete_category")
	private Integer isDeleteCategory;
	
	

}
