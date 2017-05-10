<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    <link href="${pageContext.request.contextPath}/bootstrap/css/index.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.bootcss.com/jquery/3.1.1/jquery.min.js"></script>    
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
    <title>index</title>
    <script type="text/javascript">
   	 $(function(){
   		var myDate = new Date();
   		var date = myDate.toLocaleDateString(); //获取当前日期
   		var html = 'MNUMS'+data;
   		$("#to").append(html);
   	 })
    
    </script>      
</head>
<body>
	  <div class="row">
	    	<div class="col-xs-12"><img height='400px' width='660px' src="${pageContext.request.contextPath}/images/logo.png" class="img-responsive center-block"></div>
	    </div>
	    <div class="row">
	  		<div class="col-xs-12 text-center main-part">
	  			<p>&nbsp;</p>
	  			<p>&nbsp;</p><p>&nbsp;</p>
	  			<p>&nbsp;</p>
	  			<font size="6" color="red">
	  			
	  			Thanks for applying to our MBBS/ MD program. Your application has been successfully submitted. Your Application Number is: A0007XVB009. <br/>

				In all future correspondence / inquiry , you must quote this Application Number. We wish you success in your admission. <br/>

				We will contact you shortly regarding the selection result and decision by Admission Committee regarding your admission.<br/>


				<div id="to"></div><br/>
				
				</font>

			</div>
	    </div>
</body>
</html>