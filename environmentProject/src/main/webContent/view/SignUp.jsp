<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
    <!------------------- Use nicepage.css, Page-2.css ------------------------------->
    <link rel="stylesheet" href="../css/signup-style.css">
    <link rel="stylesheet" href="../css/nicepage.css" media="screen">

	<!------------------- Use jquery-1.9.1.min.js, nicepage.js ------------------------------->
    <script class="u-script" type="text/javascript" src="js/jquery-1.9.1.min.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    
    <!------------------- Use font site connect------------------------------->
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
</head>
<body data-home-page="https://website586556.nicepage.io/Page-2.html?version=eb22722a-7994-4203-95cf-f0dabd46ee8f" data-home-page-title="Page 2" class="u-body">
	<header class="u-black u-clearfix u-header u-header" id="sec-5d34" ><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <h3 class="u-align-left-xs u-headline u-text u-text-1">
        <!-- 로고 -->
          <a href="/">Ecology</a>
        </h3>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1" data-responsive-from="XL">
          <div class="menu-collapse">
            <a class="u-button-style u-nav-link u-text-body-alt-color" href="#" style="padding: 8px 0px;">
            <!-- 맨 위 라인의 네비여는 아이콘 -->
              <svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 302 302"><use xlink:href="#svg-a760"></use></svg>
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="svg-a760" x="0px" y="0px" viewBox="0 0 302 302" style="enable-background:new 0 0 302 302;" xml:space="preserve" class="u-svg-content"><g><rect y="36" width="302" height="30"></rect><rect y="236" width="302" height="30"></rect><rect y="136" width="302" height="30"></rect>
            </a>
          </div>
          <div class="u-nav-container">
            <ul class="u-nav u-spacing-25 u-unstyled">
            	<li class="u-nav-item">
            		<a class="u-btn-text u-button-style u-nav-link" href="Page-2.html" style="padding: 8px 0px;">Page 2</a>
				</li>
			</ul>
          </div>
          <div class="u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-sidenav-overflow">
                <div class="u-menu-close"></div>
               	<ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
               		<li class="u-nav-item">
               			<a class="u-btn-text u-button-style u-nav-link" href="index.html" style="padding: 8px 0px;">Page 2</a>
               		</li>
               	</ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div>
    </header>
<body>
	<div class="center">
		<h1><img id="logo" src="../images/logo.png"></h1>
		<form action="join.do" method="post">
			<div class="text-area">
				<label>아이디</label>
				<input type="text" name="id" value="${param.id}">
			</div>
			<div class="text-area">
				<label>비밀번호</label>
				<input type="password" name="password">
			</div>
			<div class="text-area">
				<label>비밀번호 확인</label>
				<input type="password" name="confirmPassword">
			</div>
			<div class="text-area">
				<label>이메일</label>
				<input type="text" name="email" value="${param.email}">
			</div>
			<div class="button-area">
				<button type="button" onclick="location.href = '../index.html'">취소</button>
				<button type="submit">확인</button>
			</div>
			<c:if test="${errors.duplicateId or errors.password or errors.confirmPassword or errors.email}">
				<script type="text/javascript">
					alert('모든 입력칸을 체워주세요.');
				</script>
			</c:if>
			<c:if test="${errors.notMatch}">
				<script type="text/javascript">
					alert('암호와 확인이 일치하지 않습니다.');
				</script>
			</c:if>
		</form>
	</div>
</body>
</html>