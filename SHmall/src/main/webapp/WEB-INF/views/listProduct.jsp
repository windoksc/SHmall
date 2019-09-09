<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<h2>상품목록</h2>
	<table>
		<tr>
			<th>상품번호</th>
			<th>상품 이미지</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>
		<c:forEach var="row" items="${list }">
		<tr>
			<td>${row.productNumber }</td>
			<td>
				<a><img alt="" src=""></a>
			</td>
			<td>
				<a>${row.productName }</a>
			</td>
			<td>
				<fmt:formatNumber value="${row.price }" pattern="###,###,###"/>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>