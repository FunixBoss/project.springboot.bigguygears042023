package com.project.entities;
// Generated Apr 21, 2023, 8:44:48 PM by Hibernate Tools 4.3.6.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Size generated by hbm2java
 */
@Entity
@Table(name = "Size")
public class Size implements java.io.Serializable {

	private Integer sizeId;
	private String sizeName;
	private String sizeType;
	private Set<ProductSize> productSizes = new HashSet<ProductSize>(0);

	public Size() {
	}

	public Size(String sizeName, String sizeType) {
		this.sizeName = sizeName;
		this.sizeType = sizeType;
	}

	public Size(String sizeName, String sizeType, Set<ProductSize> productSizes) {
		this.sizeName = sizeName;
		this.sizeType = sizeType;
		this.productSizes = productSizes;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "size_id", unique = true, nullable = false)
	public Integer getSizeId() {
		return this.sizeId;
	}

	public void setSizeId(Integer sizeId) {
		this.sizeId = sizeId;
	}

	@Column(name = "size_name", nullable = false, length = 50)
	public String getSizeName() {
		return this.sizeName;
	}

	public void setSizeName(String sizeName) {
		this.sizeName = sizeName;
	}

	@Column(name = "size_type", nullable = false, length = 50)
	public String getSizeType() {
		return this.sizeType;
	}

	public void setSizeType(String sizeType) {
		this.sizeType = sizeType;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "size")
	public Set<ProductSize> getProductSizes() {
		return this.productSizes;
	}

	public void setProductSizes(Set<ProductSize> productSizes) {
		this.productSizes = productSizes;
	}

}
