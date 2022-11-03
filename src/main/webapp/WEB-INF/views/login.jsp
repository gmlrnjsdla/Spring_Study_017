<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
	저는 login.jsp입니다.<br>
	<c:if test="${not empty pageContext.request.userPrincipal}">
		<P>${pageContext.request.userPrincipal.name} 님이 로그인 상태입니다.</P>	
	</c:if>

	<a href="logout.do">로그아웃</a>

	<c:if test="${empty pageContext.request.userPrincipal}">
		<P>로그아웃 상태입니다.</P>	
	</c:if>
	
		
	
</body>
</html>