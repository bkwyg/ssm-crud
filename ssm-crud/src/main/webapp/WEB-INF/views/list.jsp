<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
  <head>
       <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">-->
	
<%
pageContext.setAttribute("APP_PATH",request.getContextPath());
%>

    <!-- 引入jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) 
     <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>-->
     <script src="${APP_PATH}/static/js/jquery.min.js"></script>
	<!-- 引入样式Bootstrap -->
    <link href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script>


  </head>
  
<body>
	<div class="container">
		<h1>SSM-CRUD</h1>	
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-8">
		<button class="btn btn-primary">新增</button>
		<button class="btn btn-danger">删除</button>	  
	    </div>
   	</div>	
	<div class="row">
   		<div class="col-md-12"> 
   			<table class="table table-hover">
   			    <tr>
   					<th>#</th>
   					<th>empName</th>
   					<th>gender</th>
   					<th>email</th>
   					<th>deptName</th>
   					<th>操作</th>
				</tr>
				<c:forEach items="${pageInfo.list}" var="emp">
					<tr>
	   					<th>${emp.empId}</th>
	   					<th>${emp.empName}</th>
	   					<th>${emp.gender}</th>
	   					<th>${emp.email}</th>
	   					<th>${emp.department.deptName}</th>
	   					<th>
		   					<button class="btn btn-primary btn-sm">
		   					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
		   					新增
		   					</button>
							<button class="btn btn-danger btn-sm">
							<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							删除
							</button>	
	   					</th>
					</tr>			
				</c:forEach>

   			</table>
   		</div>	
	</div>
	<div class="row">
		<div class="col-md-6">
		当前记录数：xxx
		</div>
		<div class="col-md-6">
			<nav aria-label="Page navigation">
			  <ul class="pagination">
			  	<li><a href="#">首页</a></li>
			    <li>
			      <a href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li>
			      <a href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			    <li><a href="#">末页</a></li>
			  </ul>
			</nav>
		</div>
	</div>		
</body>
</html>
