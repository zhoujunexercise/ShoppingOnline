package com.sgang.o2o.utils.test;

import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import com.sgang.o2o.enums.ShopStateEnum;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;

/**
 * ThumbnailatorUtils测试类.
 * <p>
 * 可参照https://www.xuebuyuan.com/3229489.html
 * <p>
 * 
 * @author zj
 */
public class ThumbnailatorUtilsTest {

	public static void main(String[] args) throws IOException {

		/**
		 * 指定大小进行缩放.单位是像素.
		 * <p>
		 * size(宽度，高度) 若图片宽度比200小，高度比300小，不变. 若图片宽度比200小，高度比300大，高度缩小到300，图片比例不变.
		 * 若图片宽度比200大，高度比300小，宽度缩小到200，图片比例不变.
		 * 若图片宽度比200大，高度比300大，图片按比例缩小，宽度为200或高度为300，另一半为比例变换后的值.
		 */
		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.size(200, 300)
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_01.bmp");

		/**
		 * 按指定像素进行缩放，不按比例.
		 * <p>
		 * keepAspectRatio(true),默认是按比例进行缩放.
		 * forceSize(宽度，高度)等同于size(宽度，高度).keepAspectRatio(false)
		 * 
		 */
		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.size(200, 300).keepAspectRatio(false)
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_02.bmp");

		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.forceSize(200, 300)
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_02_2.bmp");

		/**
		 * 按比例进行缩放.
		 * <p>
		 * scale(比例) 宽度*0.25、高度*0.25.
		 * 
		 */
		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.scale(0.25f)
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_03.bmp");

		/**
		 * 对图片进行旋转.
		 * <p>
		 * rotate(角度).正数：顺时针,负数：逆时针. 对图片进行旋转，必须先设置图片大小.
		 * 
		 */
		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.size(200, 300).rotate(180)
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_04.bmp");

		/**
		 * 对图片加水印.
		 * <p>
		 * watermark(位置，水印图,透明度). outputQuality(图片质量):输出图片质量，范围0.0~1.0,1为最高质量.
		 * 
		 * 
		 */
		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.size(200, 300)
				.watermark(Positions.BOTTOM_RIGHT, ImageIO.read(new File(
						"C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\watermark.bmp")),
						0.5f)
				.outputQuality(0.8f)
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_05.bmp");

		/**
		 * 对图片进行裁剪.
		 * <p>
		 * sourceRegion()
		 * 
		 * 
		 */
		// 图片中心100*100的区域
		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.sourceRegion(Positions.CENTER, 100, 100).size(50, 50).keepAspectRatio(false)
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_06.bmp");
		// 图片右下角100*100的区域
		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.sourceRegion(Positions.BOTTOM_RIGHT, 100, 100).size(50, 50).keepAspectRatio(false)
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_07.bmp");
		// 指定坐标
		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.sourceRegion(30, 50, 100, 100).size(50, 50).keepAspectRatio(false)
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_08.bmp");

		/***
		 * 转化图片格式. 
		 * <p>
		 * outputFormat(图像格式)
		 * 
		 * 
		 */
		Thumbnails.of("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111.bmp")
				.size(150, 150).outputFormat("jpg")
				.toFile("C:\\Users\\zj\\git\\ShoppingOnline\\ShoppingOnline\\src\\test\\resources\\image\\111_09.jpg");


	}

}
