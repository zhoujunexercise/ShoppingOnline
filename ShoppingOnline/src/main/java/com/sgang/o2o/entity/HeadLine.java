package com.sgang.o2o.entity;

import java.util.Date;

/**
 * 头条信息实体类.
 * <p>
 * 定义头条信息
 * 
 * 
 * @author zj_home
 *
 */
public class HeadLine {

	// ID
	private Long lineId;
	// 头条名称
	private String lineName;
	// 头条链接地址
	private String lineLink;
	// 图片信息
	private String lineImg;
	// 权重
	private Integer priority;
	// 有效标志 0-无效 1-有效
	private Integer enableStatus;
	// 创建时间
	private Date createTime;
	// 维护时间
	private Date lastEditTime;

	public Long getLineId() {
		return lineId;
	}

	public void setLineId(Long lineId) {
		this.lineId = lineId;
	}

	public String getLineName() {
		return lineName;
	}

	public void setLineName(String lineName) {
		this.lineName = lineName;
	}

	public String getLineLink() {
		return lineLink;
	}

	public void setLineLink(String lineLink) {
		this.lineLink = lineLink;
	}

	public String getLineImg() {
		return lineImg;
	}

	public void setLineImg(String lineImg) {
		this.lineImg = lineImg;
	}

	public Integer getPriority() {
		return priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
	}

	public Integer getEnableStatus() {
		return enableStatus;
	}

	public void setEnableStatus(Integer enableStatus) {
		this.enableStatus = enableStatus;
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

}
