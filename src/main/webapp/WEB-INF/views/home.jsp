<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>웅마트컴</title>
	<link href="${pageContext.request.contextPath}/resources/stylesheets/css/start_page.css" rel="stylesheet">
</head>
<body>

<svg id="svg" width="200" height="200" viewBox="0 0 200 200">
  <path id="circle-path" d="M10,100a90,90 0 1,0 180,0a90,90 0 1,0 -180,0"/>
  <path id="rect-path" d="M90,10 110,10 110,190 90,190 90,10" />
  
  <path id="triangle-path" d="M100,40 170,160 30,160 100,40" />
</svg>
<canvas id="canvas" width="200" height="200" 
onclick=" location.href='${pageContext.request.contextPath}/MainController/main'"></canvas>

<script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenLite.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/start_page_animation.js"></script>

</body>
</html>
