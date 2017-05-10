/******************************************************************************
* Copyright (C) 2016 jagl.cn
* All Rights Reserved.
* 本软件为jagl.cn开发研制。未经正式书面同意，其他任何个人、团体不得使用、
* 复制、修改或发布本软件.
*****************************************************************************/
package cn.application.util;

import java.io.File;

/**
 * @file 文件上传工具类
 * @author 马辉
 * @since JDK1.8
 * @history 2017年2月14日上午11:12:39 马辉 新建
 */
public interface FileUploadUtil {
	public String upload(File file,String fileName,String uploadPath);
	public String[] getFileNameByPath(String path);
}
