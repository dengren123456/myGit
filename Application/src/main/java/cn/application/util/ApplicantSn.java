package cn.application.util;

import java.text.SimpleDateFormat;

public class ApplicantSn {
	 private static double n = 1;  
//	 public static void main(String[] args) {     
//		 System.out.println(test(n));   System.out.println(test(n));  
//		 }   
	 public static double test() {   
		 String str = new SimpleDateFormat("yyyyMMdd").format(new java.util.Date());   
		 double m = Long.parseLong((str)) * 10000;   
		 double ret = m + n;   
		 n = n + 1;   
		 return ret;  
	} 
}
