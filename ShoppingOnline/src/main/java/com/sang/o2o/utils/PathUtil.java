package com.sang.o2o.utils;

import java.io.File;

/**
 * 文件路径处理工具类.
 * <p>
 * 
 * 
 * 
 * @author zj
 *
 */
public class PathUtil {

	// 文件分隔符.
	private static final String seperator = System.getProperty("file.separator");

	/**
	 * 根据系统获取图片文件的根路径.
	 * <p>
	 * 区分windows和unix
	 * 
	 * @return  图片文件的根路径
	 */
	public static String getImageBasePath() {
		
		String  os= System.getenv("os.name").toLowerCase();
		String basePath ="";
		if(os.indexOf("windows")>0)
		{
			
			basePath ="C:/Users/zj/git/ShoppingOnline/ShoppingOnline/src/test/resources/image";
			basePath.replace("/", seperator);
		}else
		{
			basePath ="/home/zj/image";
			basePath.replace("/", seperator);
		}
		
		return basePath;
	}
	
	
	
	/**
	 * 递归新建文件夹.
	 * <p>
	 * 
	 * @param targetAddr 目标文件夹路径.
	 * @return 是否创建成功.True 创建成功，False 创建失败.
	 */
	public static boolean makeDirPath(String targetAddr) {
		boolean result = true;
		File file = new File(targetAddr);
		if (!file.exists())
			result = file.mkdirs();

		return result;
	}

	/**
	 * 获取店铺图片相对路径.
	 * <p>
	 * 
	 * @param shopId 店铺编号.
	 * @return 店铺图片相对路径.
	 */
	public static String getShopImagePath(long shopId) {
		String imagePath = "/upload/item/shop" + shopId + "/";
		return imagePath.replace("/", seperator);

	}

}
