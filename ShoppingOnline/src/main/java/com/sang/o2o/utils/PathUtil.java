package com.sang.o2o.utils;

public class PathUtil {
	private static final String seperator = System.getProperty("file.separator");

	/**
	 * 获取系统图片文件的根路径.
	 * <p>
	 * 区分windows和unix
	 * 
	 * @return
	 */
	public static String getImageBasePath() {

		return "";
	}

	/**
	 * 获取店铺图片相对路径.
	 * <p>
	 * 
	 * @param shopId  店铺编号.
	 * @return  店铺图片相对路径.
	 */
	public static String getShopImagePath(long shopId)
	{
		String imagePath="/upload/item/shop"+shopId+"/";
		return imagePath.replace("/", seperator);
		
		
	}

}
