<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면 - 미구현</title>
</head>
<body>
<c:if test="${! empty authUser}">
	${authUser.id}님, 안녕하세요.
</c:if>
<c:if test="${empty authUser}">
	<a href="join.do">[회원가입]</a>
	<a href="login.do">[로그인]</a>
</c:if>
</body>
</html>