package com.project.models;
// Generated Apr 22, 2023, 11:44:21 AM by Hibernate Tools 4.3.6.Final

import java.io.Serializable;
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
 * CouponType generated by hbm2java
 */
@Entity
@Table(name = "CouponType")
public class CouponType implements java.io.Serializable {

	private Integer couponTypeId;
	private String couponTypeName;
	private Set<Coupon> coupons = new HashSet<Coupon>(0);

	public CouponType() {
	}

	public CouponType(String couponTypeName) {
		this.couponTypeName = couponTypeName;
	}

	public CouponType(String couponTypeName, Set<Coupon> coupons) {
		this.couponTypeName = couponTypeName;
		this.coupons = coupons;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "coupon_type_id", unique = true, nullable = false)
	public Integer getCouponTypeId() {
		return this.couponTypeId;
	}

	public void setCouponTypeId(Integer couponTypeId) {
		this.couponTypeId = couponTypeId;
	}

	@Column(name = "coupon_type_name", nullable = false)
	public Serializable getCouponTypeName() {
		return this.couponTypeName;
	}

	public void setCouponTypeName(String couponTypeName) {
		this.couponTypeName = couponTypeName;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "couponType")
	public Set<Coupon> getCoupons() {
		return this.coupons;
	}

	public void setCoupons(Set<Coupon> coupons) {
		this.coupons = coupons;
	}

}
