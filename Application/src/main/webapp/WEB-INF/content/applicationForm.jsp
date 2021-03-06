<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta name="renderer" content="webkit">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/Buttons/2.0.0/css/buttons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/bootstrap/css/application.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/bootstrap/css/loading.css" rel="stylesheet" type="text/css">
    <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>    
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
    <script src="https://cdn.bootcss.com/Buttons/2.0.0/js/buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/loading.js"></script>
    <title>application</title>
    <script type="text/javascript">
	function addFile(){
		html='<input type="file" multiple=true name="upload">';
		$("#addUpload").append(html); 
	}
	function showForm(){
		$("#form").show();
	}
	function contact(){
		$.ajax({
			url:'${pageContext.request.contextPath}/contactAction_contact.action',
			data:{fullName:$("#fullName").val(),email:$("#c-email").val(),contactPhoneNumber:$("#contactPhoneNumber").val(),subject:$("#subject").val(),detail:$("#detail").val()},
			dataType:'json',
			method:'POST',
			success:function(data){
				  if (data.status=='ok'){
					  alert("Thanks for your Inquiry. We will contact you soon.");  
				  }
			},
		})
	}
	function submit(){
		 var s=document.form1.upload.value; 
         if(s==""){
             alert("Please choose all posdetail files.");
             document.form1.upload.focus();
             return;
         }else{
        	 
        	 var dataParams = {
     				call:$('#call').val(),
     				familyName:$('#familyName').val(),
     				firstMiddleName:$('#firstMiddleName').val(),
     				age:$('#age').val(),
     				birthday:$('#birthday').val(),
     				place:$('#place').val(),
     				sex:$('#sex').val(),
     				address:$('#address').val(),
     				city:$('#city').val(),
     				state:$('#state').val(),
     				postal:$('#postal').val(),
     				country:$('#country').val(),
     				natives:$('#natives').val(),
     				secondLanguage:$('#secondLanguage').val(),
     				nationality:$('#nationality').val(),
     				passport:$('#passport').val(),
     				date:$('#date').val(),
     				homeTel:$('#homeTel').val(),
     				workTel:$('#workTel').val(),
     				fax:$('#fax').val(),
     				mobile:$('#mobile').val(),
     				email1:$('#email1').val(),
     				email2:$('#email2').val(),
     				occuption:$('#occuption').val(),
     				academic:$('#academic').val(),
     				program:$('#program').val(),
     				programDate:$('#programDate').val(),
     				f1:$('#f1').val(),
     				t1:$('#t1').val(),
     				name_school1:$('#name_school1').val(),
     				certificate1:$('#certificate1').val(),
     				marks1:$('#marks1').val(),
     				age1:$('#age1').val(),
     				f2:$('#f2').val(),
     				t2:$('#t2').val(),
     				name_school2:$('#name_school2').val(),
     				certificate2:$('#certificate2').val(),
     				marks2:$('#marks2').val(),
     				age2:$('#age2').val(),
     				languages2:$('#languages2').val(),
     				hear:$('#hear').val(),
     				accommodation:$('#accommodation').val(),
     				circle:$('#circle').val(),
     				startingDate:$('#startingDate').val(),
     				endDate:$('#endDate').val(),
     				smoke:$('#smoke').val(),
     				vegetarian:$('#vegetarian').val(),
     				room:$('#room').val(),
     				comments:$('#comments').val(),
     				email:$('#email').val(),
     				emergency:$('#emergency').val(),
     				homeTel2:$('#homeTel2').val(),
     				workTel2:$('#workTel2').val(),
     				mobileCountry:$('#mobileCountry').val(),
     				faxCountry:$('#faxCountry').val(),
     				address2:$('#address2').val(),
     				app:$('#app').val(),
     				dates:$('#dates').val(),
     				app2:$('#app2').val(),
     				dates2:$('#dates2').val(),
     			};
     		var jsonBook=JSON.stringify(dataParams);
     		$('#btnHidden').attr('value',jsonBook);
     		$("#formId").submit(); 
     		var load = new Loading();
	 			load.init();
	 			load.start();
	 			setTimeout(function() {
	 				load.stop();
	 			}, 30000)
         }
// 		$.ajax({
// 			url:'${pageContext.request.contextPath}/applicantAction_application.action',
// 			data:{jsonBook : jsonBook},
// 			dataType:'json',
// 			method:'POST',
// 			success:function(data){
// 				  if (data.status=='ok'){
// 					  alert("Thank You!");  
// 				  }
// 			},
// 		})
	}

</script> 
</head>
<body>
	<div class="box">
	  	<img src="${pageContext.request.contextPath}/images/top-picture.jpg" class="img-responsive center-block">
	    <div class="row">
		    <div class="col-md-12">
		    	<hr style="height:5px;border:none;border-top:5px;background-color:#473C8B;" />
	    	</div>
	    </div>
	    <div class="row">
	    	<div class="col-md-12">
	    		<p>&nbsp;</p>
		    			<img align="left" height='250px' width='620px' src="${pageContext.request.contextPath}/images/logo.png" class="img-responsive center-block"><br/>
		    			<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
		    			<font size="7" color="#1F497D"><b>&nbsp;Mongolian National University of Medical Sciences –(MNUMS)</b></font >
		    			<p>&nbsp;</p>
		    			<div id="dg" style="z-index: 9999; position: fixed ! important; right: 0px; top: 40%;">  
						<table width=""100% style="position: absolute; width:260px; right: 0px; top: 0px;">  
							<a class="btn red-btn" href="#seventh"><font size=6px>APPLY NOW</font></a>
						</table>  
						</div>
						<div id="dgg" style="z-index: 9999; position: fixed ! important; right: 0px; top: 60%;">  
						<table width=""100% style="position: absolute; width:260px; right: 0px; top: 0px;">  
							<a class="btn green-btn" href="#top"><font size=6px>BACK TO TOP</font></a>
						</table>  
						</div>
						<div style="background:#5C076A;height:60px;" id="top">&nbsp;</div>
						<div class="row text-center" style="background:#5C076A;height:140px;">
							<div class="col-xs-1">&nbsp;</div>
							<div class="col-xs-1">&nbsp;</div>
			  				<div class="col-xs-1"><a href="#second" class="btn left-btn">Message From <br/>The President</a></div>
			  				<div class="col-xs-1">&nbsp;</div>
			  				<div class="col-xs-1"><a href="#forth" class="btn left-btn">Admission <br/>Requirements</a></div>
			  				<div class="col-xs-1">&nbsp;</div>
			  				<div class="col-xs-1"><a href="#seventh" class="btn left-btn"><font size=2>&nbsp;<br/></font>Application Form</a></div>
			  				<div class="col-xs-1">&nbsp;</div>
			  				<div class="col-xs-1"><a href="#tweth" class="btn left-btn"><font size=2>&nbsp;<br/></font>News & Events</a></div>
			  				<div class="col-xs-1">&nbsp;</div>
			  				<div class="col-xs-1"><a href="#tenth" class="btn left-btn"><font size=2>&nbsp;<br/></font>Contact Us</a></div>
			    		</div>
	    	</div>
	    </div>
	    <div class="row">
		    <div class="col-xs-2 text-center" style="background:#5C076A">
	  					<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#first" class="btn left-btn"><font size=2>&nbsp;<br/></font>MBBS/ MD Program</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#second" class="btn left-btn">Message From <br/>The President</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#third" class="btn left-btn">Introduction <br/>and History</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#forth" class="btn left-btn">Admission <br/>Requirements</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#fifth" class="btn left-btn"><font size=2>&nbsp;<br/></font>Required Documents</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#sixth" class="btn left-btn">Tuition Fee and <br/>Other Expenses</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#seventh" class="btn left-btn"><font size=2>&nbsp;<br/></font>Application Form</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#eight" class="btn left-btn"><font size=2>&nbsp;<br/></font>Forms Download</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#ninth" class="btn left-btn">Program Accreditation<br/> / Recognition</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#tenth" class="btn left-btn"><font size=2>&nbsp;<br/></font>Contact Us</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div>
				  		<div class="row"><div class="col-xs-12"><a href="#eleth" class="btn left-btn"><font size=2>&nbsp;<br/></font>Photo Gallery</a></div></div>
				  		<div class="row"><div class="col-xs-12">&nbsp;</div></div> 
	  			</div>
	    	<div class="col-xs-8">
	    		<div id="first"><font style="background-color:#EDEDED" size="7" color="#1F497D"><b><u>INTRODUCTION</u></b></font></div>
    			<p>&nbsp;</p>
    			<div class="title"><font color="#1F497D">MBBS/ MD Program</font></div>
    			<p>&nbsp;</p>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>Prominent Features</b></font><br/>
				The Mongolian National University of Medical Sciences <font size="5" color="#1F497D"><b>(MNUMS)</b></font> is offering 6 years MBBS/MD program in English Medium. The prominent features of the program are as follows:
				<ul>
					<li><font size="5" color="#1F497D"><b>(MNUMS)</b></font> is State owned University under the Direct Supervision of Ministry of Education of Mongolia and Ministry of Health of Mongolia</li>
					<li><font size="5" color="#1F497D"><b>(MNUMS)</b></font> is listed in <font size="5" color="#1F497D"><b>WHO “FAIMER Directory” and “Avicenna Directory”</b></font></li>
					<li>The MBBS/MD program is recognized by WHO, MCI, PMDC, USMLE, MCCEE, AMC, PLAB, ASIIN (Europe) and MOH etc.</li>
					<li>Free Guidance and Assistance for  USME, PLAB, Canadian Evaluation Exam, Australian Exam, MCI Exam, PMDC Exam, MOH Exam preparation</li>
					<li>Free Guidance and Assistance for Post Graduate Studies in USA, Canada, Australia, UK and Europe.</li>
					<li>Free Guidance and Assistance for Exchange Program in USA, Canada, Australia, UK and Europe during MBBS/MD Studies at <font size="5" color="#1F497D"><b>(MNUMS)</b></font></li>
					<li>MBBS/MD program is of 6 years duration. From year 1 to 5 the students have to study Basic Medicine including Clinical Medicine through Lectures, Seminars, Lab Work, and Clinical Rotations; In year 6 the student has to take  rotating Clinical Internship either in a Teaching Hospital in Mongolia or in any other <font size="5" color="#1F497D"><b>(MNUMS)</b></font> approved Teaching Hospital in any Country.</li>
					<li>The Medium of Instructions of the MBBS/MD program is English; so, all the students admitted in this program must be Fluent in English. </li>
					<li>The British and American Curriculum and Text Books are used in MBBS/MD program offered by <font size="5" color="#1F497D"><b>(MNUMS)</b></font>.</li>
					<li>MBBS/MD program offered by <font size="5" color="#1F497D"><b>(MNUMS)</b></font> is administered and monitored by Mongolia- Canada Joint Management Committee.</li>
					<li>Excellent Residential Facilities for both Male and Female Students</li>
					<li>Arabian, Indian, Western/ European Style Food and Mongolian Food (Halal / Vegetarian) available.</li>
					<li><font size="5" color="#1F497D"><b>(MNUMS)</b></font> is located in the center of Ulaanbaatar City - The Capital of Mongolia</li>
					<li>Scholarship for Extra Ordinary Students Available</li>
					<li>Guaranteed Admission in Post Graduate Programs in Partner Universities in USA, Canada, UK, Australia and Europe</li>
					<li>Guaranteed Transfer during Studies in <font size="5" color="#1F497D"><b>(MNUMS)</b></font> for 1 year  in Partner Universities in USA, Canada, UK, Australia and Europe</li>
					<li>Free Counselling and Guidance for Future Jobs in Partner Hospitals /Universities in Middle East, USA, Canada, UK, Australia and Europe</li>
					<li>Guaranteed Jobs for Top Qualified Students (After Graduation From <font size="5" color="#1F497D"><b>MNUMS</b></font>)  as Doctor in Partner Hospitals /Universities in Middle East, USA, Canada, UK, Australia and Europe</li>
				</ul>
				<p>&nbsp;</p>
	   			<div id="second"class="title"><font color="#1F497D">Message From The President</font></div>
   				<div class="row">
   					<div class="col-xs-5">
   						&nbsp;<br/>
    					<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>Greetings from the President</b></font>
    					&nbsp;<br/>
    					<p>
							Our university is the one of leading state universities in Mongolia.   Since its establishment in 1942, our university has nurtured 90% of health professionals of Mongolia who are working now in health care service throughout the country. 
  									Based on our history, rich experiences and well trained faculties, we are aiming to become one of top 100 universities in the Western Pacific region of Asia between next few years. 
  									Our aim is to transform Mongolian National University of Medical Sciences from one of Mongolia’s premiere universities to one of Asian, then world’s best universities.  In order to achieve this goal, we are implementing several projects to improve our training quality and environment, renovating training curriculum and constructing university hospital by the Japanese government aid, which will be finish by 2017. 
 									I would like to thank all of our partners for your continuous support to our university over the years and looking forward to welcome International Students and faculty from all over the world.
							
						</p>
						<p>&nbsp;</p> 
   					</div>
   					<div class="col-xs-7 text-center">
   						<p>&nbsp;</p>
    					<img height='520px' width='680px' src="${pageContext.request.contextPath}/images/picture-1.jpg" class="img-responsive center-block"> 					
    					<font size="6" color="#1F497D" style="width:700px"><b>Professor G. Batbaatar, The President of (MNUMS)</b></font>
    				</div>
   				</div>
   				<div id="third" class="title"><font color="#1F497D">Introduction and History</font></div>
   				<div class="row">
   					<div class="col-xs-6">
    					<p>&nbsp;</p>
    					<p>Mongolian National University of Medical Sciences <font size="5" color="#1F497D"><b>(MNUMS)</b></font> is one of the Highest Ranking Medical University in Mongolia. <font size="5" color="#1F497D"><b>(MNUMS)</b></font> is State owned University under the Direct Supervision of Ministry of Education of Mongolia and Ministry of Health of Mongolia. <font size="5" color="#1F497D"><b>(MNUMS)</b></font> is located in the center of Ulaanbaatar City - The Capital of Mongolia.
						   Mongolian National University of Medical Sciences was founded in 1942 as the Medical Faculty of the Mongolian State University.  This marked the beginning of the history of modern medical science and practice in Mongolia.
 								   In 1961, the Medical Faculty became independent of the Mongolian State University and was re-named as the Mongolian State Medical Institute.  Soon after the Democratic Revolution of 1989, its mission was broadened, and it was reorganized as the National Medical University of Mongolia (NMUM).
									   In 2003, the NMUM was restructured and organized as a multidisciplinary training and research center called The Health Sciences University of Mongolia (HSUM).  On 1 Jun, 2014 our university changed its name from Health Sciences University to Mongolian National University of Medical Sciences.
    					</p>
   					</div>
   					<div class="col-xs-6">
    					<p>&nbsp;</p>
    					<img height='800px' width='900px' src="${pageContext.request.contextPath}/images/picture-2.jpg" class="img-responsive center-block">
    				</div>
   					<p>&nbsp;</p>
   				</div>
   				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>History</b></font>
				<p>
					<b>2014</b>    The university changed its name as Mongolian National University of Medical Sciences and reorganized to have 5 schools and 3 branch schools. 
					<br/><b>2012</b>    External evaluation of undergraduate medical curriculum by Association for Medical Education in the Western Pacific Region is conducted
					<br/><b>2012</b>    “Erkhes” Outpatient Clinic was expanded its service and reorganized as a “University General Hospital”
					<br/><b>2008</b>    Health Sciences University of Mongolia’s “Erkhes” Outpatient Clinic established
					<br/><b>2003</b>    The National Medical University was reorganized and renamed as “Health Sciences University of Mongolia renamed”
					Graduate Training Center established
					School of Biomedicine established
					<br/><b>2002</b>    School of Public Health established
					<br/><b>2000</b>    School of Traditional Medicine established
					<br/><b>1997</b>    School of Nursing merged into National Medical University of Mongolia
					<br/><b>1989</b>    The Institute was restructured as a university and called the “National Medical University of Mongolia”
					<br/><b>1969</b>    Branch School in Darkhan-Uul Province established
					<br/><b>1967</b>    Branch School in Gobi-Altai Province established
					<br/><b>1962</b>    Branch School in Dornogobi Province established
					<br/><b>1961</b>    The Medical Faculty separated from the Mongolian National University and the “Mongolian National Medical Institute” was formed
					            School of Dentistry established
					            School of Pharmacy established
					<br/><b>1951</b>    Postgraduate Training Institute established
					<br/><b>1942</b>    The University was founded as the “Medical Faculty” under the auspices of the Mongolian National University
					School of Medicine established
					<br/><b>1929</b>    School of Nursing established
				</p>
				<p>&nbsp;</p>
	   			<div id="forth" class="title"><font color="#1F497D">Admission Requirements</font></div>
   				<p>&nbsp;</p>
				<p><font size="5" color="red"><b>Note: <br/>
						1.	The Admission for September 2017 Session is open Now.<br/>
						2.	We have Limited Seats Available for September 2017 Session.<br/>
						3.	We strongly encourage the Prospective students to Apply as soon as possible. <br/>
						4.	The Selection will be based on Merit till seats are filled. <br/>
						5.	We welcome students from all over the world and we also welcome both Male and Female Students.<br/>
						6.  We strongly encourage female students to apply.<br/>
						7.	Separate Hostel Facilities available for Female Students.<br/></b></font></p>
				<p>The admission Requirements for Foreign Students from Different Countries of the world are as follows (The Qualifications shown below are the minimum required qualifications for admission in the MBBS/MD program; students with higher qualifications are also eligible to apply for this program).  :</p>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>1.	 Students From USA and Canada</b></font><br/>
				<font style="background-color:#EDEDED" size="5" color="#1F497D"><b><u>For Students From Canada:</u></b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Canadian Higher Secondary School Diploma / Higher Secondary School Certificate / CGEP (for students from province of Quebec)</li>
					<li>MCAT recommended but not Required</li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="5" color="#1F497D"><b><u>For Students From USA:</u></b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. US Higher Secondary School Diploma / Higher Secondary School Certificate  etc.</li>
					<li>MCAT recommended but not Required</li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>2.	Students From China 中国学生入学要求</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry (化学)/ Biology (生物学) in High School). e.g. Higher Secondary School Certificate (高中毕业证书) /College Diploma (大专毕业证书等) etc. 必须拥有12年完成的学习证明，比如高中毕业证书等学历；高中期间学习过化学/生物学；</li>
					<li>Must be Fluent in English Language 英语水平能够达到用英语受本科医学专业课程。</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>3.	Students From India</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate or equivalent examination. </li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>4.	Students From Sri Lanka</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate or equivalent examination.</li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>5.	Students From Malaysia, Indonesia, Thailand, Cambodia and Laos</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate or equivalent examination. </li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>6.	Students From Mauritius</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate or equivalent examination. </li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>7.	Students From Australia , Hong Kong and U.K</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate or equivalent examination. </li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>8.	Students From Africa</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate or equivalent examination. </li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>9.	Students From Bangladesh</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate or equivalent examination. </li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>10.	Students From Pakistan</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Higher Secondary School Certificate / HSC /F.Sc/ A’ level/ International Baccalaureate or equivalent examination.</li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>11.	Students From All Other Countries</b></font>
				<ul>
					<li>A proof of Satisfactory completion of “12 years” of formal School Education (student must have studied Chemistry/ Biology in High School). e.g. Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate or equivalent examination.</li>
					<li>Must be Fluent in English Language</li>
				</ul>
				<p>&nbsp;</p>
				<div id="fifth" class="title"><font color="#1F497D">Required Documents</font></div>
				<p>&nbsp;</p>
				All the students seeking admission in MBBS/MD program must submit the following documents:
				<ol type="1">
					<li>Application Form (can be completed online or can be submitted through email or  by Air Mail)
					<li>Notarized copy of Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate / F.Sc. or equivalent examination.  .
					<li>Notarized copy of Detailed Marks Sheet / Official Transcript of Higher Secondary School Certificate / HSC / A’ level/ International Baccalaureate / F.Sc. or equivalent examination.  .
					<li>Notarized copy of Grade 10, Secondary School Certificate / SSC / O’ level or equivalent examination.  .
					<li>Notarized copy of Detailed Marks Sheet / Official Transcript of Grade 10, Secondary School Certificate / SSC / O’ level or equivalent examination.  .
					<li>Police Clearance Certificate / No Criminal Certificate (Original Copy)
					<li>Notarized Copy of  “Medical Examination Form” (Original Copy must be submitted at time of Registration in the University)
					<li>Photocopy of Passport
					<li>6 Passport Size Photographs
					<li>Notarized Copy of Sponsorship Undertaking /Financial Support  Certificate
				</ol>
				<p>&nbsp;</p>
   				<div id="sixth" class="title"><font color="#1F497D">Tuition Fee and Other Expenses</font></div>
   				<p>&nbsp;</p>
   				<table border="6px" align="center" width="100%" bordercolor="#473C8B">
					<tr style="background-color:#FF0000;">
						<td class="text-center bordered-td"><b><font size="6" color="white">Total Fee 1st Year</font></b></td>
						<td class="text-center bordered-td"><b><font size="6" color="white">(Year 2 to Year 6) / Year</font></b></td>
					</tr>
					<tr style="background-color:#FF0000">
						<td class="text-center bordered-td"><b><font size="6" color="white">50000 USD</font></b> <br/></td>
						<td class="text-center bordered-td"><b><font size="6" color="white">4500 USD</font></b> <br/></td>
					</tr>
					<tr>
						<td class="bordered-td">The Fee includes: Application Fee + Visa Invitation Fee + Medical Insurance Fee + Residence Permit Fee + Tuition Fee + Hostel / Dormitory Fee including Basic Furniture, <font size="4">Electricity, Heating, Hot and Cold Water (Based on 4 Persons/ Room )/Person</font></td>
						<td class="bordered-td">The Fee includes: Medical Insurance Fee + Residence Permit Fee + Tuition Fee + Hostel / Dormitory Fee including Basic Furniture, Electricity, Heating, Hot and Cold Water (Based on 4 Persons/ Room)/Person</td>
					</tr>
				</table>
				<div><font size="7" color="red"><b>Note:</b></font><font size="5" color="red"><b><br/>All the fees must be paid in USD either by “TT” or in “Cash” to (MNUMS) University Bank Account Only.</b></font></div>
				<p>&nbsp;</p>
				<div id="seventh" class="title"><font color="#1F497D">Application Form :</font></div>
				<p>&nbsp;</p>
				<font style="background-color:#EDEDED" size="6" color="#1F497D"><b>Please Click Here to Apply online</b></font>
				<p>&nbsp;</p>
				<a class="css-3d-btn" href="#formhere" onclick="showForm()">APPLY ONLINE</a>
				<p>&nbsp;</p>
				
				<font size="8" color="#FF0E0E"><b>Note:</b></font >
				<ol type="a">
				    <li>Application Form and all supporting Documents can be submitted online</li>
				    <li><font size="5" color="#FF0E0E">OR</font> you can download the Application Form, Complete it, scan it with supporting documents and send it by email to email address:         @mnums.edu.mn </li>
				    <li><font size="5" color="#FF0E0E">OR</font> you can download the Application Form, Complete it, print it and send it with photocopies of supporting documents by Registered Air Mail / Courier :<br/>
				    	<b>
				    	To<br/>
						Dr. Pervaiz Iqbal,<br/>
						The Director of Foreign Students Admission,<br/>
						Mongolian National University of Medical Sciences,<br/>
						Zorig Street, Ulaanbaatar-14210,<br/>
						Mongolia.<br/>
						</b>											    	
				    </li>
				</ol>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<div id="eight" class="title"><font color="#1F497D">Forms Download</font></div>
				<p>&nbsp;</p>
				<div class="row">
					<div class="col-xs-3">
						<a href="${pageContext.request.contextPath}/applicantAction_downLoadInputStream.action?fileOrder=1"><img src="${pageContext.request.contextPath}/images/word.jpg" class="img-responsive center-block"></a> 
					</div>
					<div class="col-xs-3">
						<a href="${pageContext.request.contextPath}/applicantAction_downLoadInputStream.action?fileOrder=2"><img src="${pageContext.request.contextPath}/images/pdf.jpg" class="img-responsive center-block"></a>
					</div>
					<div class="col-xs-3">
						<a href="${pageContext.request.contextPath}/applicantAction_downLoadInputStream.action?fileOrder=3"><img src="${pageContext.request.contextPath}/images/word2.jpg" class="img-responsive center-block"></a>
					</div>
					<div class="col-xs-3">
						<a href="${pageContext.request.contextPath}/applicantAction_downLoadInputStream.action?fileOrder=4"><img src="${pageContext.request.contextPath}/images/pdf2.jpg" class="img-responsive center-block"></a>
					</div>
				</div>
				<p>&nbsp;</p>
	   			<div id="ninth" class="title"><font color="#1F497D">MBBS/ MD Program Accreditation / Recognition</font></div>
   				<p>&nbsp;</p>
   				<p>MBBS/ MD Program offered by <font size="5" color="#1F497D"><b>(MNUMS)</b></font> is accredited/ recognized by the following organizations:</p>
				<ul>
					<li>
						<font size="5" color="#1F497D"><b>(MNUMS)</b></font> is listed in <font size="5" color="#1F497D"><b>WHO “FAIMER-World Directory of Medical Schools.” and “Avicenna Directory for Medicine”</b></font><br/>
						<font size="5" color="#1F497D"><b>(See Website: <a>https://search.wdoms.org/home/SchoolDetail/F0001883</a>)<br/></b></font>
						<p>&nbsp;</p>
						<img height='800px' width='1050px' src="${pageContext.request.contextPath}/images/picture-3.jpg" class="img-responsive center-block"><br/>
					</li>
					<li>
						<font size="5" color="#1F497D"><b>(MNUMS)</b></font> MBBS/ MD Program is recognized by MCCEE in Canada<br/>
						<font size="5" color="#1F497D"><b>(See Website: <a>https://search.wdoms.org/home/SchoolDetail/F0001883
			 			</a>And <a>http://mcc.ca/repository/acceptable-medical-schools-as-defined-in-the-model-standards-for-medical-registration-in-canada/</a>)<br/><font style="background-color:#EDEDED" size="5" color="#1F497D"><b>
						<p>&nbsp;</p>
						<img height='800px' width='1050px' src="${pageContext.request.contextPath}/images/picture-4.jpg" class="img-responsive center-block"><br/>
						<img height='400px' width='750px' src="${pageContext.request.contextPath}/images/picture-5.jpg" class="img-responsive center-block"><br/>
					</li>
					<li>
						<font size="5" color="#1F497D"><b>(MNUMS)</b></font> MBBS/MD program is recognized by USMLE in USA<br/>
						(See Website: <a>https://search.wdoms.org/home/SchoolDetail/F0001883</a> And <a>http://www.ecfmg.org/certification/reference-guide.html</a>)<br/>
						<p>&nbsp;</p>
						<img height='800px' width='1050px' src="${pageContext.request.contextPath}/images/picture-7.jpg" class="img-responsive center-block"><br/>
						<img height='800px' width='1050px' src="${pageContext.request.contextPath}/images/picture-8.jpg" class="img-responsive center-block"><br/>
					</li>
					<li>
						<font size="5" color="#1F497D"><b>(MNUMS)</b></font> MBBS/MD program is recognized by ASIIN (European Accreditation Agency)<br>
						<p>&nbsp;</p>
						<img height='400px' width='750px' src="${pageContext.request.contextPath}/images/picture-9.jpg" class="img-responsive center-block">
						<p>&nbsp;</p>
					</li>
					<li>
						<font size="5" color="#1F497D"><b>(MNUMS)</b></font> MBBS/MD program is recognized by MCI, PMDC, AMC, MOH and PLAB etc.
						<p>&nbsp;</p>
					</li>
				</ul>
				<div id="tweth" class="title"><font color="#1F497D">News & Events</font></div>
				<p>&nbsp;</p>
				<div class="">
				<p class="text-center"><font color="red" size="7">NOTICE</font></p>
				<font color="red">  1.	The Admission for September 2017 Session is open Now.<br/>
						2.	We have Limited Seats Available for September 2017 Session.<br/>
						3.	We strongly encourage the Prospective students to Apply as soon as possible. <br/>
						4.	The Selection will be based on Merit till seats are filled. <br/>
						5.	We welcome students from all over the world and we also welcome both Male and Female Students.<br/>
						6.  We strongly encourage female students to apply.<br/>
						7.	Separate Hostel Facilities available for Female Students.<br/></font>
				</div>
				<p>&nbsp;</p>
    			<div id="tenth" class="title"><font color="#1F497D">Contact Us</font></div>
   					<div class="row">
   						<div class="col-xs-6">
   							<p>&nbsp;</p>
   							<font color="black">
   							For any further information please do not hesitate to contact us.<br/>
   							<p>&nbsp;</p>
   							<img height='160px' width='140px' src="${pageContext.request.contextPath}/images/Sami.jpg"/><br/>
   							<p>&nbsp;</p>
   							Dr. Muhammad Umair Sami <br/>
   							MBBS, MD, Ph.D (Candidate)<br/>
							Adviser to The Director of Admissions,<br/>
							International Medical Education Center,<br/>
							Mongolian National University of Medical Sciences <font size="5" color="#1F497D"><b>(MNUMS)</b></font><br/>
							Postal Address: <br/>
							<b>
						    	To<br/>
								Dr. Pervaiz Iqbal,<br/>
								The Director of Foreign Students Admission,<br/>
								Mongolian National University of Medical Sciences,<br/>
								Zorig Street, Ulaanbaatar-14210,<br/>
								Mongolia.<br/>
								</b>
							Email: admissions @mnums.edu.mn<br/>
							Phone: +86-13145223349 <br/>
							</font>
							<p><font size="5" color="red"><b>Note: Please do not call by Phone Except Emergency.</b></font></p>
							<p>&nbsp;</p>    							
   						</div>
    					<div class="col-xs-6">
    					<p>&nbsp;</p><p>&nbsp;</p>
    						<p><font size="6" color="black">Contact Form</font></p>
    						<font color="black">
		    				<label>Full Name:</label><input id="fullName" class="form-control"/>
		    				<label>Email Address:</label><input id="c-email" class="form-control"/>
		    				<label>Contact Phone Number:</label><input id="contactPhoneNumber" class="form-control"/>
		    				<label>Subject: </label><input id="subject" class="form-control"/>
		    				<label>Detailed Question/ Inquiry:</label><input id="detail" class="form-control"/>
		    				</font>
		    				<p>&nbsp;</p>
		    				<a class="btn red-btn" onclick="contact()"><font size="6">SUBMIT</font></a>
		    				<p>&nbsp;</p><p>&nbsp;</p>
    					</div>
   					</div>
   				<div id="eleth" class="title"><font color="#1F497D">Photo Gallery</font></div>
   				<p>&nbsp;</p>
   				<div class="text-center">You Can Click Here To Downlaod <font size="5" color="#1F497D"><b>(MNUMS)</b></font> Brochure.</div>
   				<p>&nbsp;</p>
   				<a href="${pageContext.request.contextPath}/applicantAction_downLoadInputStream.action?fileOrder=5"><img src="${pageContext.request.contextPath}/images/pdf3.jpg" class="img-responsive center-block"></a> 
    			<p>&nbsp;</p>
    			<div class="row">
   						<div class="col-xs-4">
   							<s:iterator var="itor" begin="1" end="15"  step="1">
					  			<img height='200px' width='350px' src="${pageContext.request.contextPath}/images/<s:property />.jpg" class="img-responsive center-block">
					  		</s:iterator>
   						</div>
   						<div class="col-xs-4">
   							<s:iterator var="itor" begin="16" end="31"  step="1">
					  			<img height='200px' width='350px' src="${pageContext.request.contextPath}/images/<s:property />.jpg" class="img-responsive center-block">
					  		</s:iterator>
   						</div>
   						<div class="col-xs-4">
   							<s:iterator var="itor" begin="31" end="47"  step="1">
					  			<img height='200px' width='350px' src="${pageContext.request.contextPath}/images/<s:property />.jpg" class="img-responsive center-block">
					  		</s:iterator>
   						</div>
   				</div>
    			
    			<p>&nbsp;</p>
   				<p>&nbsp;</p><p>&nbsp;</p>
   				<div id="form" style="display:none;">
			  		<div id="formhere">
					<%@include file="form.jsp"%>
					</div> 
				</div>
	    	</div>
  			<div class="col-xs-8">
  			<p>&nbsp;</p>
  			</div>
  		</div>
  	</div>
</body>

</html>