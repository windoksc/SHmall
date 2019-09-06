<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록 페이지</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h2></h2>
	<form action="">
		<table>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="productName" id="productName"/></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="productPrice" id="price"/></td>
			</tr>
			<tr>
				<td>썸네일</td>
				<td><input type="file" name="thumbnail" id="thumbnail"/></td>
			</tr>
			<tr>
				<td>상품정보</td>
				<td><textarea rows="5" cols="60" name="contents" id="contents"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="등록" id="addProduct">
					<input type="button" value="취소" id="cancelProduct">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>