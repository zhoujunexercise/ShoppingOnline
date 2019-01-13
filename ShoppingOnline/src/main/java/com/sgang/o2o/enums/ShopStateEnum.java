package com.sgang.o2o.enums;

/**
 * 店铺状态枚举类.
 * 
 * 
 * @author zj
 *
 */
public enum ShopStateEnum {

	CHECK(0,"审核中"),OFFLINE(-1,"非法店铺"),SUCCESS(1,"操作成功"),INNER_ERROR(-1001,"内部系统错误"),NULL_SHOPID(-1002,"ShopId为空");
	
	private int state;
	private String stateInfo;
	
	private ShopStateEnum(int state,String stateInfo)
	{
		this.state=state;
		this.stateInfo=stateInfo;
	}
	
	/**
	 * 依据传入的state返回相应的enum值
	 * 
	 * @param state
	 * @return
	 */
	public static ShopStateEnum stateOf(int state)
	{
		for (ShopStateEnum shopStateEnum : values()) {
			if(shopStateEnum.state ==state)
			{
				return shopStateEnum;
		    }
		}
		return null;
		
	}
	
	
	
}
