package cn.application.util;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.apache.pdfbox.multipdf.PDFMergerUtility;
import org.docx4j.convert.out.pdf.viaXSLFO.PdfSettings;
import org.docx4j.fonts.IdentityPlusMapper;
import org.docx4j.fonts.Mapper;
import org.docx4j.fonts.PhysicalFont;
import org.docx4j.fonts.PhysicalFonts;
import org.docx4j.openpackaging.packages.WordprocessingMLPackage;

import com.lowagie.text.Document;
import com.lowagie.text.Image;
import com.lowagie.text.pdf.PdfWriter;

public class Word2Pdf {
	
	//success

	public static boolean fun(String[] filePathName, String pdfFilePath){
		boolean flag = true;
		try {
			int count = filePathName.length;
			List<String> templatePdfPath = new ArrayList<String>();
			List<String> imagePath = new ArrayList<String>();
			for( int i = 0; i < count; i++ ){
				if( i == 0 )
				{
					Word2Pdf.word2Pdf(filePathName[i], pdfFilePath);
					templatePdfPath.add(pdfFilePath);
				}
				else
				{
					String ext = getFileExt(filePathName[i]);
					if( ext.equals("pdf") ){
						templatePdfPath.add(filePathName[i]);
					}else if( ext.equals("docx") ){
						templatePdfPath.add(Word2Pdf.templateToPdf(filePathName[i]));
					}else{
						imagePath.add(filePathName[i]);
					}
				}
				
			}
			count = imagePath.size();
			if( count > 0 ){
				String imagePdfPath = imageToPdf(imagePath);
				templatePdfPath.add(imagePdfPath);
			}
			//String[] filesPath = new String[]{pdfFilePath, templatePdfPath};
			Word2Pdf.mergePDF(templatePdfPath, pdfFilePath);
			
			//删除上传的文件
			count = filePathName.length;
			File file = null;
			for( int i = 0; i < count; i++ ){
				file = new File(filePathName[i]);
				if( file.exists() )
					file.delete();
			}
			//删除中间生成的pdf文件
			count = templatePdfPath.size();
			for( int i = 0; i < count; i++ ){
				if( !templatePdfPath.get(i).equals(pdfFilePath) ){
					file = new File(templatePdfPath.get(i));
					if( file.exists() )
						file.delete();
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
		}
		return flag;
	}
	
	
    public static void word2Pdf(String docxFilePath, String pdfFilePath) {
        try {

            InputStream is = new FileInputStream(
                    new File(docxFilePath));
            WordprocessingMLPackage wordMLPackage = WordprocessingMLPackage
                    .load(is);
            List sections = wordMLPackage.getDocumentModel().getSections();
            for (int i = 0; i < sections.size(); i++) {

                //System.out.println("sections Size" + sections.size());
                wordMLPackage.getDocumentModel().getSections().get(i)
                        .getPageDimensions().setHeaderExtent(3000);
            }
            Mapper fontMapper = new IdentityPlusMapper();

            PhysicalFont font = PhysicalFonts.getPhysicalFonts().get(
                    "Comic Sans MS");

            fontMapper.getFontMappings().put("Algerian", font);

            wordMLPackage.setFontMapper(fontMapper);
            PdfSettings pdfSettings = new PdfSettings();
            org.docx4j.convert.out.pdf.PdfConversion conversion = new org.docx4j.convert.out.pdf.viaXSLFO.Conversion(
                    wordMLPackage);

            OutputStream out = new FileOutputStream(new File(
            		pdfFilePath));
            conversion.output(out, pdfSettings);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public static String templateToPdf(String filePath){
    	String pdfPath = "";
    	try{
    		File file = new File(filePath);
    		if( file.exists() ){
    			pdfPath = getFileName(file.getPath());
    			Word2Pdf.word2Pdf(filePath, pdfPath);
    		}
    	}catch(Exception e){
    		e.printStackTrace();
		}
    	return pdfPath;
    }
    
 	private static String getFileExt(String filename){
 		return FilenameUtils.getExtension(filename);
 	}
 	
 	private static String getFileName(String filename){
 		return filename.replace("."+getFileExt(filename), ".pdf");
 	}
 	
 	public static void mergePDF(List<String> filesPath, String pdfFilePath) throws Exception {  
        PDFMergerUtility mergePdf = new PDFMergerUtility();  
  
        for(int i = 0; i < filesPath.size(); i++)  
            mergePdf.addSource(filesPath.get(i));  
          
          
        mergePdf.setDestinationFileName(pdfFilePath);  
        mergePdf.mergeDocuments();  
          
        //System.out.print("done");  
          
    }
 	/**
 	 * 图片加入pdf中
 	 * @param imagePath 文件路径集合
 	 * @param pdfFilePath pdf文件路径
 	 */
 	public static String imageToPdf(List<String> imagePath){
 		//创建一个文档对象
 		  Document doc = new Document();
 		  String imagePdfPath = new File(imagePath.get(0)).getPath() + 
 				  					UUID.randomUUID() + ".pdf";
 		  try {
 			  // 定义输出位置并把文档对象装入输出对象中
 			  PdfWriter.getInstance(doc, new FileOutputStream(imagePdfPath));
 			  // 打开文档对象
 			  doc.open();

 			  int count = imagePath.size();
 			  for( int i = 0; i < count; i++ ){
 				  
 				  // 加入图片Deepinpl.jpg
 				  Image jpg = Image.getInstance(imagePath.get(i));
 				  
 				  jpg.setAlignment(Image.ALIGN_CENTER);
 				  
 				  doc.add(jpg);
 				  
 			  }
	 		   // 关闭文档对象，释放资源
	 		   doc.close();

 		  } catch (Exception e) {
 			  e.printStackTrace();
 		  }
 		  //System.out.println("OK");
 		  return imagePdfPath;
 		 }
}