package cn.application.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;

import cn.application.entity.Applicant;
import cn.application.util.Word2Pdf;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ApplicantAction extends BaseAction<Applicant> {
	private static final long serialVersionUID = 1L;
	
	private String email;
	private String username;
	private String pdfPath;
	private String fileOrder;
	private InputStream fileInputStream;
	private String downloadFileName;
	private File[] upload;
	private String[] uploadContentType;
	private String[] uploadFileName;
	private JSONObject jsonObject =new JSONObject();
	private JSONArray jsonArray=new JSONArray();
	
	public String application(){
		jsonObject.put("status", "ok");
		int count = uploadFileName.length;
		String path = ServletActionContext.getServletContext().getRealPath("/application");
		String pdfPath = ServletActionContext.getServletContext().getRealPath("/pdf") + 
				File.separator + UUID.randomUUID() + ".pdf" ;
		String[] filePathName = new String[count];
		for( int i = 0; i < count; i++ )
		{
			filePathName[i] = path + File.separator + 
					fileUploadUtil.upload(upload[i], uploadFileName[i], path);
		}
		Word2Pdf.fun(filePathName, pdfPath);
		Applicant applicant = new Applicant();
		try{
			applicant.setEamil(email);
			applicant.setUsername(username);
			applicant.setPdfPath(pdfPath);
			applicantService.save(applicant);
		}catch(Exception e){
			jsonObject.put("status", "nook");
		}
		System.out.println(pdfPath);
		return "jsonObject";
	}
	
	public String downLoadInputStream() throws Exception {
		String path = ServletActionContext.getServletContext().getRealPath("/application");
		if(fileOrder.equals("1")){
		String filepath=path+"\\"+"MONGOLIA MBBS APPLICATION FORM.docx";
		fileInputStream = new FileInputStream(new File(filepath)); 
	    downloadFileName = URLEncoder.encode("MONGOLIA MBBS APPLICATION FORM.docx", "UTF-8");
		}
		return SUCCESS;
	}
	
	public String queryByPage(){
		String hql="select a from Applicant a";
		JSONArray array=new JSONArray();
		for(Applicant applicant:applicantService.queryByPage(hql, page, rows)){
			JSONObject jo=new JSONObject();
			jo.put("username", applicant.getUsername());
			jo.put("email", applicant.getEamil());
			jo.put("pdfPath", applicant.getPdfPath());
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
