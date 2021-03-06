<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>教学管理</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../style/normal.css">
	<link rel="stylesheet" type="text/css" href="../style/eduManage/eduManageDetail.css">
    <link rel="stylesheet" type="text/css" href="../style/eduManage/normal.css">


	
	<script type="text/javascript" src="../js/normal.js"></script>
</head>


        <script type="text/javascript">  
			function a(){
				$.ajax({  
            		url:"/HomeworkServlet?method=LoadHomework&HomeworkpageQuery=1",//servlet文件的名称
            		type:"POST",
            		success:function(e){
            			alert("servlet调用成功！");
            		}
            	});
				
			}
        </script>  


<body onload="Rendering(); a();">
	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="top"></div>

	<article class="content">

	    <section id="banner">
	        <img src="../images/index/abouttop_03.jpg">
	    </section>
	    <section class="mainWrap relative">
	        <div class="detailContent">
	            <div class="column_1">
	                <section class="leftNav">
	                    <h3>教学管理</h3>
	                    <ul>
							<li><a href="${pageContext.request.contextPath}/OpenCoursePlanServlet?method=showFront">开课计划</a></li>
							<li><a href="eduManageDetail-2.jsp">上课班级</a></li>
							<li><a href="eduManageDetail-3.jsp">学生成绩</a></li>
							<li><a href="eduManageDetail-4.jsp">班级名册</a></li>
							<li class="current"><a href="eduManageDetail-5.jsp">作业案例</a></li>
						</ul>
	                </section>
	            </div>
	            <div class="column_2 ">
	                <article class="mainContent">
	                    <header class="contentNav">
	                        <nav class="nav">
	                            <a href="index.html">首页</a>·
	                            <a href="eduManageDetail-1.jsp">教学管理</a>·
	                            <a href="eduManageDetail-5.jsp">作业案例</a>
	                        </nav>
	                        <h1>作业案例</h1>
	                    </header>
	                    
								     
     <!-- 列表样式 -->     
            <div class="column_3" style="width: 700px;">
                <h3 style="color:black;">作业案例列表</h3>
                <br>
                <table style="border-collapse:collapse;color:black;" border="1" bordercolor="#000000">
			    	<td width="80">作业名称</td>
			        <td width="150">作业主题</td>
			        <td width="150">作业时间</td>
			        <td width="150">作业下载</td>
			    <c:forEach items="${HomeworkpageQuery.items}" var="homework">
			        <tr>
			            <td>${homework.realname}</td>
			            <td>${homework.description}</td>
			            <td>${homework.timestamp}</td>
			            <td><a style = "color:blue;" title="下载" href="<c:url value='/HomeworkServlet?method=Download_Homework&id=${homework.id}'/>">  下载  </a></td>
			        </tr>
			    </c:forEach>
			    </tbody>
                </table>
                <div class="pagination" style = "color:black;">
				    <ul style="margin: auto">
				        <c:if test="${HomeworkpageQuery.currentPage!=1}">
				            <li><a href="<c:url value='/HomeworkServlet?method=LoadHomework&HomeworkpageQuery=1'/>">首页</a></li>
				            <li><a href="<c:url value='/HomeworkServlet?method=LoadHomework&HomeworkpageQuery=${HomeworkpageQuery.currentPage-1}'/>">上一页</a></li>
				        </c:if>
				        <c:if test="${HomeworkpageQuery.currentPage!=HomeworkpageQuery.totalPage}">
				            <li><a href="<c:url value='/HomeworkServlet?method=LoadHomework&HomeworkpageQuery=${HomeworkpageQuery.currentPage+1}'/>">下一页</a></li>
				            <li><a href="<c:url value='/HomeworkServlet?method=LoadHomework&HomeworkpageQuery=${HomeworkpageQuery.totalPage}'/>">尾页</a></li>
				        </c:if>
				    </ul>
                </div>
            </div>
     
                    
	
	                </article>
	            </div>
	        </div>
	    </section>
	</article>
	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="bottom"></div>
	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="copyrights"></div>
</body>


    <script type="text/javascript" src="../js/eduManage/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../js/eduManage/bootstrap.js"></script>
    <script type="text/javascript" src="../js/eduManage/bootstrap-table.js"></script>
    


</html>
