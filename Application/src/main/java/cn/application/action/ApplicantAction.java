package cn.application.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLEncoder;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

import cn.application.entity.Applicant;
import cn.application.util.ApplicantSn;
import cn.application.util.Textword;
import cn.application.util.Word2Pdf;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ApplicantAction extends BaseAction<Applicant> {
	private static final long serialVersionUID = 1L;
	
	private String email;
	private String username;
	private String pdfPath;
	private String jsonBook;
	private String fileOrder;
	private InputStream fileInputStream;
	private String downloadFileName;
	private File[] upload;
	private String[] uploadContentType;
	private String[] uploadFileName;
	private JSONObject jsonObject =new JSONObject();
	private JSONArray jsonArray=new JSONArray();
	
	public String getJsonBook() {
		return jsonBook;
	}

	public void setJsonBook(String jsonBook) {
		this.jsonBook = jsonBook;
	}

	public String application() throws Exception{
		Map<String, Object> params = new HashMap<String, Object>(); 
		JSONObject ja = JSONObject.fromObject(jsonBook);
		Iterator<Object> it = ja.keys(); 
		while (it.hasNext())  
			{  
	           String key = String.valueOf(it.next());  
	           String value = (String) ja.get(key); 
	           if( value == null ){
	        	   value = "";
	           }
	           params.put(key, value);  
			}  
		String email = (String) params.get("email1");
		String username = (String) params.get("firstMiddleName") + (String) params.get("familyName");
		Textword Textword = new Textword();
		String path = ServletActionContext.getServletContext().getRealPath("/application");
		String filePath = path + File.separator + "MONGOLIA MBBS APPLICATION FORM MODEL.docx";  //模板文件
		String createFilePath = path + File.separator + "model.docx";//生成文件
		Textword.testTemplateWrite(params, filePath, createFilePath);
		
		File file = new File(createFilePath);

		String[] fileName = new String[uploadFileName.length + 1];
		File[] files = new File[uploadFileName.length + 1];
		
		for( int i = -1; i < uploadFileName.length; i++ ){
			
			if( i == -1 ){
				files[ i + 1 ] = file;
				fileName[ i + 1 ] = file.getName();
			}else{
				files[ i + 1 ] = upload[i];
				fileName[ i + 1 ] = uploadFileName[i];
			}
			
		}
		
		
		jsonObject.put("status", "ok");
		int count = fileName.length;
		//String path = ServletActionContext.getServletContext().getRealPath("/application");
		String pdfPath = ServletActionContext.getServletContext().getRealPath("/pdf") + 
				File.separator + UUID.randomUUID() + ".pdf" ;
		String[] filePathName = new String[count];
		for( int i = 0; i < count; i++ )
		{
			filePathName[i] = path + File.separator + 
					fileUploadUtil.upload(files[i], fileName[i], path);
		}
		Word2Pdf.fun(filePathName, pdfPath);
		
		if( file.exists() ){
			file.delete();
		}
		
		Applicant applicant = new Applicant();
		
		double code = ApplicantSn.test();
		try{
			applicant.setApplicantSn(code);
			applicant.setEamil(email);
			applicant.setUsername(username);
			applicant.setUploadtime(LocalDate.now());
			applicant.setPdfPath(pdfPath);
			applicantService.save(applicant);
		}catch(Exception e){
			jsonObject.put("status", "nook");
		}
		System.out.println(pdfPath);
		sendMailUtil.sendEmail(email, code);
		return "jsonObject";
	}
	
	public String downLoadInputStream() throws Exception {
		String path = ServletActionContext.getServletContext().getRealPath("/application");
		if(fileOrder.equals("1")){
			String filepath=path+"\\"+"MONGOLIA MBBS APPLICATION FORM.docx";
			fileInputStream = new FileInputStream(new File(filepath)); 
		    downloadFileName = URLEncoder.encode("MONGOLIA MBBS APPLICATION FORM.docx", "UTF-8");
		}else if(fileOrder.equals("2")){
			String filepath=path+"\\"+"MONGOLIA MBBS APPLICATION FORM.pdf";
			fileInputStream = new FileInputStream(new File(filepath)); 
		    downloadFileName = URLEncoder.encode("MONGOLIA MBBS APPLICATION FORM.pdf", "UTF-8");
		}else if(fileOrder.equals("3")){
			String filepath=path+"\\"+"Medical Examination Form.docx";
			fileInputStream = new FileInputStream(new File(filepath)); 
		    downloadFileName = URLEncoder.encode("Medical Examination Form.docx", "UTF-8");
		}else if(fileOrder.equals("4")){
			String filepath=path+"\\"+"Medical Examination Form.pdf";
			fileInputStream = new FileInputStream(new File(filepath)); 
		    downloadFileName = URLEncoder.encode("Medical Examination Form.pdf", "UTF-8");
		}else if(fileOrder.equals("5")){
			String filepath=path+"\\"+"(MNUMS) Brochure.pdf";
			fileInputStream = new FileInputStream(new File(filepath)); 
		    downloadFileName = URLEncoder.encode("(MNUMS) Brochure.pdf", "UTF-8");
		}else{
			String filepath=fileOrder;
			fileInputStream = new FileInputStream(new File(filepath)); 
			downloadFileName = URLEncoder.encode(username+".pdf", "UTF-8");
		}
		return SUCCESS;
	}
	
	public String queryByPage(){
		String hql="select a from Applicant a";
		JSONArray array=new JSONArray();
		for(Applicant applicant:applicantService.queryByPage(hql, page, rows)){
			JSONObject jo=new JSONObject();
			jo.put("applicantSn", applicant.getApplicantSn());
			jo.put("username", applicant.getUsername());
			jo.put("email", applicant.getEamil());
			jo.put("pdfPath", applicant.getPdfPath());
			jo.put("uploadtime", applicant.getUploadtime().toString());
			array.add(jo);
		}
		jsonObject.put("rows", array);
		jsonObject.put("total", applicantService.countByHql(hql.replaceFirst("a", "count(a)")));
		return "jsonObject";
	}
	
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPdfPath() {
		return pdfPath;
	}

	public void setPdfPath(String pdfPath) {
		this.pdfPath = pdfPath;
	}

	public String getFileOrder() {
		return fileOrder;
	}

	public void setFileOrder(String fileOrder) {
		this.fileOrder = fileOrder;
	}

	public InputStream getFileInputStream() {
		return fileInputStream;
	}
	public void setFileInputStream(InputStream fileInputStream) {
		this.fileInputStream = fileInputStream;
	}

	public String getDownloadFileName() {
		return downloadFileName;
	}

	public void setDownloadFileName(String downloadFileName) {
		this.downloadFileName = downloadFileName;
	}

	public File[] getUpload() {
		return upload;
	}

	public void setUpload(File[] upload) {
		this.upload = upload;
	}

	public String[] getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String[] uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String[] getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String[] uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public JSONObject getJsonObject() {
		return jsonObject;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}

	public JSONArray getJsonArray() {
		return jsonArray;
	}

	public void setJsonArray(JSONArray jsonArray) {
		this.jsonArray = jsonArray;
	}
	
	
}
