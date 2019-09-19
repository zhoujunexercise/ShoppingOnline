package com.sang.o2o.utils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Random;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import net.coobird.thumbnailator.Thumbnails;
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

	private final static Logger logger = LoggerFactory.getLogger(ThumbnailatorUtils.class);

	private static String basePath = Thread.currentThread().getContextClassLoader().getResource("").getPath();

	/**
	 * 将前台传过来的CommonsMultipartFile转换为File对象.
	 * <p>
	 * 
	 * @param commonsMultipartFile 页面前端上传文件对象.
	 * @return 上传文件的File对象.
	 */
	public static File transferCommonsMultipartFileToFile(CommonsMultipartFile commonsMultipartFile) {
		File file = null;
		try {
			file = new File(commonsMultipartFile.getOriginalFilename());
			commonsMultipartFile.transferTo(file);

		} catch (IllegalStateException e) {
			logger.error(e.toString());
		} catch (IOException e) {
			logger.error(e.toString());
		}
		return file;
	}

	/**
	 * 为图片添加水印，并保存到指定文件夹下.
	 * <p>
	 * 文件名变更为当前年月日时分秒+五位随机数. 文件压缩为200*300像素. 水印添加到图片右下角.
	 * 
	 * @param thumbnail  待添加水印的图片对象.
	 * @param targetAddr 图片存放相对路径
	 * @return 图片相对路径+文件名+文件后缀.
	 * @throws IOException
	 */
	public static String generateThumbnail(File thumbnail, String targetAddr) throws IOException {
		// 获取文件随机名方法.
		String realFileName = getRandomFileName();
		// 获取文件扩展名
		String extension = getFileExtension(thumbnail);
		// 创建目标文件路径
		PathUtil.makeDirPath(PathUtil.getImageBasePath() + targetAddr);
		// 目标文件相对路径
		String relativeAddr = targetAddr + realFileName + extension;

		File dest = new File(PathUtil.getImageBasePath() + relativeAddr);
		Thumbnails.of(thumbnail).size(200, 300)
				.watermark(Positions.BOTTOM_RIGHT, ImageIO.read(new File(basePath + "/watermark.bmp")), 0.5f)
				.toFile(dest);

		return relativeAddr;
	}



	/**
	 * 获取文件扩展名.
	 * <p>
	 * 
	 * @param file 文件对象.
	 * @return 文件扩展名.
	 */
	private static String getFileExtension(File file) {
		String fileExtension = "";
		if (null != file) {
			String fileName = file.getName();
			fileExtension = fileName.substring(fileName.lastIndexOf(".") + 1);
		}

		return fileExtension;
	}

	/**
	 * 生成随机文件名.
	 * <p>
	 * 当前年月日时分秒+五位随机数.
	 * 
	 * @return 随机文件名.
	 */
	private static String getRandomFileName() {

		// 生成五位随机数
		String sources = "0123456789";// 加上一些字母，就可以生成PC站的验证码
		Random rd = new Random();
		StringBuffer strBuffer = new StringBuffer();
		for (int i = 0; i < 5; i++) {
			strBuffer.append(sources.charAt(rd.nextInt(10)) + "");
		}
		// 定义时间格式
		SimpleDateFormat dataFormat = new SimpleDateFormat("YYYYMMddHHmmss");
		return dataFormat.format(System.currentTimeMillis()) + strBuffer.toString();
	}
}
