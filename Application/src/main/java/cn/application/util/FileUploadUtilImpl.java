package cn.application.util;

import java.io.File;
import java.io.FilenameFilter;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Component;
/**
 * @file 文件上传实现类
 * @author 马辉
 * @since JDK1.8
 * @history 2017年2月14日上午11:15:09 马辉 新建
 */
@Component("fileUploadUtil")
public class FileUploadUtilImpl implements FileUploadUtil {
	
	private String getExt(String fileName){
		return FilenameUtils.getExtension(fileName);
	}
	
	private String createName(String fileName){
		String ext=this.getExt(fileName);
		return UUID.randomUUID().toString() + "." + ext;
	}
	// 完成文件上传业务逻辑,返回新的文件名
	public String upload(File file,String fileName,String uploadPath){
		String newName = this.createName(fileName);
		try {
			FileUtils.copyFile(file,new File(uploadPath,newName));
			return newName;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}finally{
			file.delete();
		}
	}

	@Override
	public String[] getFileNameByPath(String path) {
		File file=new File(path);
		return file.list(new FilenameFilter() {
			@Override
			public boolean accept(File dir, String name) {
				return name.endsWith("gif");
			}
		});
	}

}
