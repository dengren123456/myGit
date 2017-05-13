<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/datagrid-detailview.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	function filedown(index){
		$('#box').datagrid('selectRow',index);
		var row=$('#box').datagrid('getSelected');
		$('<form method="post" action="${pageContext.request.contextPath}/applicantAction_downLoadInputStream.action" ><input type="text" value="'+row.pdfPath+'" name="fileOrder"/><input type="text" value="'+row.username+'" name="username"/></form>').appendTo('body').submit().remove();
	}
	
	function application(){
		$('#box').datagrid({    
		    url:'${pageContext.request.contextPath}/applicantAction_queryByPage.action',
		    fitColumns:true,
		    fit:true,
		    striped:true,/*斑马线*/
		    nowarp:true,/*数据同一行*/ 
		    loadmsg:'请等待',
		    toolbar : '#divFooter',
		    rownumbers:true,
		    singleSelect:true,
		    rownumbers:true,
		    /*分页*/
			pagination:true,
			pageNumber:1,
			pageSize:15,
			pageList:[15,30,50,90], 
		    columns:[[
				{field:'applicantSn',title:'serialNumber',width:'15%',align:'center'},
				{field:'username',title:'name',width:'15%',align:'center'},
		        {field:'email',title:'email',width:'20%',align:'center'},
		        {field:'uploadtime',title:'uploadtime',width:'15%',align:'center'},
		        {field:'pdfPath',title:'pdfPath',align:'center',hidden:'true'},
		        {field:'code',title:'codeFilePath',align:'center',hidden:'true'},
		        {field:'codeFilePath',title:'code',width:'20%',align:'center',formatter:function(value,row,index){
		        	return "<image height='100px' width='100px' src='"+row.codeFilePath+"'>";
		        }},
		        {field:'down',title:'',width:'15%',align:'center',formatter:function(value,row,index){
		        	return "<a href='#' onclick='filedown(" + index +")' style='text-decoration:none'>"+"download"+"</a>"
		        	}
		        }
		    ]]
		});

	}
	function contact(){
		$('#box').hide();
		$('#box2').datagrid({    
		    url:'${pageContext.request.contextPath}/contactAction_queryByPage.action',
		    fitColumns:true,
		    fit:true,
		    striped:true,/*斑马线*/
		    nowarp:true,/*数据同一行*/ 
		    loadmsg:'请等待',
		    rownumbers:true,
		    singleSelect:true,
		    rownumbers:true,
		    /*分页*/
			pagination:true,
			pageNumber:1,
			pageSize:15,
			pageList:[15,30,50,90], 
		    columns:[[
				{field:'fullName',title:'fullName',width:'20%',align:'center'},
				{field:'email',title:'email',width:'20%',align:'center'},
		        {field:'contactPhoneNumber',title:'contactPhoneNumber',width:'15%',align:'center'},
		        {field:'subject',title:'subject',width:'15%',align:'center'},
		        {field:'detail',title:'detail',width:'15%',align:'center'},
		        {field:'time',title:'time',width:'15%',align:'center'}
		    ]]
		});
	}
	 $(function(){
		$("#select").change(function(){
			$.ajax({
				url:'${pageContext.request.contextPath}/applicantAction_select.action',
				data:{select:$('#select').val()},
	    		dataType:'json',
				method:'POST',
				success:function(data){
					$("#totle").empty();
					var html='<h2>totle:'+ data.status + '</h2>';
					$("#totle").append(html);
				},
			})
		})
	}) 
	</script>
</head>
<body class="easyui-layout">
    <div id="divHeader" data-options="region:'north',border:false">
    	<font size="7"><b>MANAGER</b></font>
    </div>
    <div data-options="region:'west',title:'menu',split:true" style="width:200px;">
    	<ul class="easyui-tree">   
            <li>   
                <span><a href="#" onclick="application()">Application</a></span>   
            </li>   
            <li>   
                <span><a href="#" onclick="contact()">Contact</a></span>   
            </li>    
        </ul>   
    </div> 
    <div id="divContent" data-options="region:'center',title:false">
        <div id="tabs" class="easyui-tabs" data-options="fit:true,border:false">
            <div id="divTitleBar" title="Page">
            	<div id="box"></div>
            	<div id="box2"></div>
            </div>
        </div>
    </div>
    <div data-options="region:'south',border:false" style="height:100px;">
    	<div id="divFooter">
	    	<select id="select" style="display:none;">
	    		<option>day</option>
	    		<option>month</option>
	    		<option>year</option>
	    	</select>
    	</div>
    	<div id="totle"></div>
    </div>
</body>
</html>