<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
</head>
<body>
	<h2>관리자 로그인</h2>
	<hr>
	<c:url value = "j_spring_security_check" var="loginUrl"/>	

	<form action="${loginUrl}" method="post">
		<c:if test="${param.ng !=null}">
			<p>
				로그인 실패! <br><br>
				<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != NULL}">
					message : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"></c:out>
				</c:if>
			</p>
		</c:if>
			아이디 : <input type="text" name="j_username"><br><br>
			비밀번호 : <input type="password" name="j_password"><br><br>
			<input type="submit" value="로그인"><br><br>
		
	</form>
</body>
</html>