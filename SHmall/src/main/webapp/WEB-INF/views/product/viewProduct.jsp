<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
<%@ include file="../header.jsp"%>
</head>
<body>
	<h2>상품 상세정보</h2>
	<table>
		<tr>
			<td>
				<img alt="" src="">
			</td>
			<td>
				 <table>
				 	<tr>
				 		<td>상품명</td>
				 		<td>${product.productName }</td>
				 	</tr>
				 	<tr>
				 		<td>가격</td>
				 		<td>
				 			<fmt:formatNumber value="${product.price }" pattern="###,###,###"/>
				 		</td>
				 	</tr>
				 	<tr>
				 		<td colspan="2">
				 			 <form action="addCart" method="post">
				 			 	<input type="hidden" name="productId" value="${product.productId }">
				 			 	<select name="amount">
				 			 		<c:forEach begin="1" end="10" var="i">
				 			 			<option value="${i }">${i }</option>
				 			 		</c:forEach>
				 			 	</select>&nbsp;개
				 			 	<input type="submit" value="장바구니에 담기">
				 			 </form>
				 		</td>
				 	</tr>
				 	<tr>
				 		<td>상세정보</td>
				 		<td>${product.contents }</td>
				 	</tr>
				 </table>
			</td>
		</tr>
	</table>
</body>
</html>