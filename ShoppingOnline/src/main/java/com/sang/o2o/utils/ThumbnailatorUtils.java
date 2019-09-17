package com.sang.o2o.utils;

import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Position;
import net.coobird.thumbnailator.geometry.Positions;

/**
 * Thumbnailator图片处理工具类.
 * <p>
 * 
 * 
 * @author zj
 *
 */
public class ThumbnailatorUtils {

	
	private static String basePath=Thread.currentThread().getContextClassLoader().getResource("").getPath();
	
	
	/**
	 * 将前台传过来的CommonsMultipartFile转换为File对象.
	 * 
	 * @param commonsMultipartFile
	 * @return
	 */
	public static File transferCommonsMultipartFileToFile(CommonsMultipartFile commonsMultipartFile)
	{
		File file = new File(commonsMultipartFile.getOriginalFilename());
		try {
			commonsMultipartFile.transferTo(file);
			
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
		public static String generateThumbnail(File thumbnail,String targetAddr)
		{
			//获取文件随机名方法.
			String realFileName =getRandomFileName();
			//获取文件扩展名
			String extension =getFileExtension(thumbnail);
			//创建目标文件路径
			makeDirPath(targetAddr);
			//目标文件相对路径
			String relativeAddr=targetAddr+realFileName+extension;
			File dest = new File(PathUtil.getImageBasePath()+relativeAddr);
			Thumbnails.of(thumbnail)
			.size(200, 300).watermark(Positions.BOTTOM_RIGHT, ImageIO.read(
					 new File(basePath+"/watermark.bmp")),
					0.5f)
			.toFile(dest);
			
			return relativeAddr;
		}
		
		/**
		 * 生成随机文件名.
		 * <p>
		 * 当前年月日时分秒+五位随机数.
		 * 
		 * @return
		 */
		private static String getRandomFileName() {
			// TODO Auto-generated method stub
			return null;
		}
	
	
	
}
