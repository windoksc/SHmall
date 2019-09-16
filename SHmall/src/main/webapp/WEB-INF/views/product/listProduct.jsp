<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
<%@ include file="../header.jsp"%>
<script type="text/javascript">

</script>
</head>
<body>
	<h2>상품목록</h2>
	<c:if test="${sessionScope.adminId!=null }">
		<button type="button" id="productAdd">상품등록</button>
	</c:if>
	<table>
		<tr>
			<th>상품 번호</th>
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
				<c:if test="${sessionScope.adminId!=null }">
					<a href="product/editProduct">[상품편집]</a>
				</c:if>
			</td>
			<td>
				<fmt:formatNumber value="${row.price }" pattern="###,###,###"/>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>