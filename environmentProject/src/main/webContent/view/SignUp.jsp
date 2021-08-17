<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../css/signup-style.css">
</head>
<body>
	<div class="center">
		<h1><img id="logo" src="../images/logo.png"></h1>
		<form method="post">
			<div class="text-area">
				<label>아이디</label>
				<input type="text" required>
			</div>
			<div class="text-area">
				<label>비밀번호</label>
				<input type="password" required>
			</div>
			<div class="text-area">
				<label>비밀번호 확인</label>
				<input type="password" required>
			</div>
			<div class="text-area">
				<label>이메일</label>
				<input type="text" required>
			</div>
			<div class="button-area">
				<button type="button">취소</button>
				<button type="submit">확인</button>
			</div>
		</form>
	</div>
</body>
</html>