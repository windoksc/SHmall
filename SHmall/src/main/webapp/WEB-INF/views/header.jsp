<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="../css/header.css">
</head>
<body>
	<div class="cover">
		<div class="category">
			<ul class="menu">
				<li><a href="./main">HOME</a></li>
				<li><a href="">TOP</a></li>
				<li><a href="">PANTS</a></li>
			</ul>
		</div>
		<div class="category">
			<ul class="menu">
				<c:if test="${empty login }">
					<li class="login"><a href="logins">Login</a></li>
				</c:if>
				<c:if test="${!empty login }">
					<li class="login"><a href="logout">Logout</a></li>
				</c:if>
				<li class="sign"><a href="sigin">회원가입</a></li>
				<li class="bag"><a href="">장바구니</a></li>
			</ul>
		</div>
	</div>
	<hr>
</body>
</html>