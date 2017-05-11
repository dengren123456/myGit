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
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/locale/easyui-lang-zh_CN.js"></script>
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
		    rownumbers:true,
		    singleSelect:true,
		    rownumbers:true,
		    /*分页*/
			pagination:true,
			pageNumber:1,
			pageSize:15,
			pageList:[15,30,50,90], 
		    columns:[[
				{field:'applicantSn',title:'serialNumber',width:'20%',align:'center'},
				{field:'username',title:'name',width:'25%',align:'center'},
		        {field:'email',title:'email',width:'25%',align:'center'},
		        {field:'uploadtime',title:'uploadtime',width:'15%',align:'center'},
		        {field:'pdfPath',title:'pdfPath',align:'center',hidden:'true'},
		        {field:'down',title:'',width:'15%',align:'center',formatter:function(value,row,index){
		        	return "<a href='#' onclick='filedown(" + index +")' style='text-decoration:none'>"+"download"+"</a>"
		        	}
		        }
		    ]]
		});

	}
	
	</script>
</head>
<body class="easyui-layout">
    <div id="divHeader" data-options="region:'north',border:false">
    	<font size="7">MANAGER</font>
    </div>
    <div data-options="region:'west',title:'West',split:true" style="width:100px;">
    	<ul>   
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
            </div>
        </div>
    </div>
    <div id="divHeader" data-options="region:'south',border:false">
    	<font size="7">MANAGER</font>
    </div>
</body>
</html>