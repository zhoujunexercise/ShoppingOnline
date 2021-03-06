package com.sgang.o2o.entity;

import java.util.Date;

/**
 * 客户信息实体类.
 * <p>
 * 标识客户的信息，
 * 
 * @author zj_home
 *
 */
public class PersonInfo {

	// 用户ID
	private Long userId;
	// 用户姓名
	private String name;
	// 用户头像信息
	private String profileImg;
	// 邮箱
	private String email;
	// 性别
	private String gender;
	// 用户状态
	private String enableStatus;
	// 用户的身份标识,1-顾客、2-店家、3-超级管理员
	private Integer userType;
	// 创建时间
	private Date createTime;
	// 维护时间
	private Date lastEditTime;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEnableStatus() {
		return enableStatus;
	}

	public void setEnableStatus(String enableStatus) {
		this.enableStatus = enableStatus;
	}

	public Integer getUserType() {
		return userType;
	}

	public void setUserType(Integer userType) {
		this.userType = userType;
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
