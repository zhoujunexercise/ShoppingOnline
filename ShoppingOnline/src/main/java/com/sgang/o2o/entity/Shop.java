package com.sgang.o2o.entity;

import java.util.Date;

/**
 * 店铺实体类.
 * <p>
 * 
 * 
 * @author zj_home
 *
 */
public class Shop {

	//ID
	private Long shopId;
	//店铺名称
	private String shopName;
	//店铺描述
	private String shopDesc;
	//店铺地址
	private String shopAddr;
	//店铺的联系方式
	private String phone;
	//店铺图片的地址
	private String shopImg;
	//店铺的权重
	private Integer priority;
	//店铺创建时间
	private Date createTime;
	//店铺更新时间
	private Date lastEditTime;
	//-1-不可用 0-审核中 1-可用
	private Integer enableStatus;
	//超级管理员给店家的建议
	private String advice;
	//店铺所属区域
	private Area area;
	//店铺的用户信息
	private PersonInfo personInfo;
	//店铺的类别
	private ShopCategory shopCategory;
	public Long getShopId() {
		return shopId;
	}
	public void setShopId(Long shopId) {
		this.shopId = shopId;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public String getShopDesc() {
		return shopDesc;
	}
	public void setShopDesc(String shopDesc) {
		this.shopDesc = shopDesc;
	}
	public String getShopAddr() {
		return shopAddr;
	}
	public void setShopAddr(String shopAddr) {
		this.shopAddr = shopAddr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getShopImg() {
		return shopImg;
	}
	public void setShopImg(String shopImg) {
		this.shopImg = shopImg;
	}
	public Integer getPriority() {
		return priority;
	}
	public void setPriority(Integer priority) {
		this.priority = priority;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getLastEditTime() {
		return lastEditTime;
	}
	public void setLastEditTime(Date lastEditTime) {
		this.lastEditTime = lastEditTime;
	}
	public Integer getEnableStatus() {
		return enableStatus;
	}
	public void setEnableStatus(Integer enableStatus) {
		this.enableStatus = enableStatus;
	}
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	public Area getArea() {
		return area;
	}
	public void setArea(Area area) {
		this.area = area;
	}
	public PersonInfo getPersonInfo() {
		return personInfo;
	}
	public void setPersonInfo(PersonInfo personInfo) {
		this.personInfo = personInfo;
	}
	public ShopCategory getShopCategory() {
		return shopCategory;
	}
	public void setShopCategory(ShopCategory shopCategory) {
		this.shopCategory = shopCategory;
	}
}
