package com.sgang.o2o.entity;

import java.util.Date;

/**
 * 店铺类别实体类.
 * <p>
 * 描述店铺的类别,以及类别的上下级关系.
 * 
 * 
 * @author zj_home
 *
 */
public class ShopCategory {

	//ID
	private Long shopCategoryId;
	//店铺类别名称
	private String shopCategoryName;
	//店铺类别描述
	private String shopCategoryDesc;
	//店铺类别图片信息
	private String shopCategoryImg;
	//店铺类别权重
	private Integer priority;
	//创建时间
	private Date createTime;
	//维护类别
	private Date lastEditTime;
	//上级店铺类别实体类
	private ShopCategory parent;
	public Long getShopCategoryId() {
		return shopCategoryId;
	}
	public void setShopCategoryId(Long shopCategoryId) {
		this.shopCategoryId = shopCategoryId;
	}
	public String getShopCategoryName() {
		return shopCategoryName;
	}
	public void setShopCategoryName(String shopCategoryName) {
		this.shopCategoryName = shopCategoryName;
	}
	public String getShopCategoryDesc() {
		return shopCategoryDesc;
	}
	public void setShopCategoryDesc(String shopCategoryDesc) {
		this.shopCategoryDesc = shopCategoryDesc;
	}
	public String getShopCategoryImg() {
		return shopCategoryImg;
	}
	public void setShopCategoryImg(String shopCategoryImg) {
		this.shopCategoryImg = shopCategoryImg;
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
	public ShopCategory getParent() {
		return parent;
	}
	public void setParent(ShopCategory parent) {
		this.parent = parent;
	}
	
	
	
}
