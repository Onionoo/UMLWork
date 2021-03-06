<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title>在线开放课程平台</title>
	<meta charset="utf-8">
	<link rel="icon" href="<c:url value='/images/dgut.jpg' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/style/normal.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/style/normal.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/style/index/index.css'/>">

</head>

<body onload="Rendering();">
	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="top">
		<jsp:include page="/html/top.jsp" />
	</div>
	<div id="banner">
		<!--<div class="bannerImg"><img src="../images/index/bigimg.jpg">-->
			<div class="summary">
				<div class="top">首页•平台特色</div>
				<div class="center">平台特色</div>
				<div class="bottom">东莞理工学院位于松山湖畔，近几年来响应政府和国家的号召，进行高水平理工大学的建设。本平台展示了东莞理工学院这些年来的教学成果，提供给广大同学和老师进行交流和学习。</div>
			</div>
		</div>

	</div>

	

	<div id="summary">
		<div class="summaryTitle">在线开放课程平台</div>
		<div class="summaryItem">
			<a class="item1" href="teacherTeamDetail-1.html">
				<img src="../images/index/about_03.jpg">
				<div class="itemTitle">课程负责人</div>
				<div class="itemDetail">所有课程负责人的简要信息。</div>
			</a>

			<a class="item2" href="courseDetail-1.html">
				<img src="../images/index/about_05.jpg">
				<div class="itemTitle">课程简介</div>
				<div class="itemDetail">课程的一些信息，如课程名称，学习内容，先修课程，学时学分等等。</div>
			</a>

			<a class="item3" href="courseDetail-2.html">
				<img src="../images/index/about_07.jpg">
				<div class="itemTitle">课程特色</div>
				<div class="itemDetail">课程的特色和优势所在，具有怎样的竞争力。</div>
			</a>

			<a class="item4" href="leavenote.html">
				<img src="../images/index/about_12.jpg">
				<div class="itemTitle">课程动态</div>
				<div class="itemDetail">记录下来的课程的开展之中一些活动、进展以及成果等等。</div>
			</a>

			<a class="item5" href="teacherTeamDetail-1.html">
				<img src="../images/index/about13.jpg">
				<div class="itemTitle">教师团队</div>
				<div class="itemDetail">展示我校强大的师资水平。</div>
			</a>

			<a class="item6" href="teachResDetail-1.html">
				<img src="../images/index/about14.jpg">
				<div class="itemTitle">教学资源连接</div>
				<div class="itemDetail">给学生和老师提供丰富的教学资源，如：课程课件，教学录像，习题库，案例库等等。</div>
			</a>
		</div>
	</div>

    <!--滚动展示-->
    <div id="marquee">
        <div class="marqueeTitle">教师团队</div>
        <marquee direction="up" scrollamount="3" class="marqueeItem" onmouseover="this.stop();" onmouseout="this.start();">
            <b>殷建平</b>		万人计划，国家级教学名师</br></br>
            <b>李耘</b>	    	IEEE Fellow，特聘教授</br></br>
            <b>刘向阳</b>		长江学者特聘教授，百千万人才工程国家级人才，广东“珠江人才计划”科技领军人才</br></br>
            <b>袁华强</b>	    享国务院特殊津贴专家，“千百十人才工程“国家级培养对象”</br></br>
            <b>于洪年</b>	 	IEEE Fellow(柔性引进)</br></br>
            <b>毛续飞</b>	 	学科方向领军人才</br></br>
        </marquee>
    </div>

	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="bottom">
		<jsp:include page="/html/bottom.jsp" />
	</div>
	<!-- 通过js渲染，js代码在normal.js里 -->
	<div id="copyrights">
		<jsp:include page="/html/copyright.jsp" />
	</div>
</body>
</html>