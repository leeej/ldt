<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="files/table.css"/>
<title>Admin Page</title>
</head>
<body>
<c:choose>
	<c:when test="${empty allPayment}">
		<h2>결제 내역이 없습니다.</h2>
	</c:when>
	<c:otherwise>
		<table>
        <tr><th>결제번호</th><th>이름</th><th>메뉴</th><th>갯수</th><th>금액</th><th>총액</th><th>일시</th></tr>
		<c:forEach var="payment" items="${allPayment}">
			<tr>
			<td rowspan="${payment.getOrderline().size()+1 }">${payment.payment_id }</td>
			<td rowspan="${payment.getOrderline().size()+1 }">${payment.getUser().getUser_name() }</td>
			<c:forEach var="orderline" items="${payment.orderline}">
				<tr>
				<td>${orderline.getMenu().getMenu_name() }</td>
				<td>${orderline.quantity }</td>
				<td>${orderline.getMenu().getMenu_price() * orderline.quantity }</td>
				<c:if test="${payment.getOrderline().get(0) == orderline }">
				<td rowspan="${payment.getOrderline().size() }">${payment.getTotal_price() }</td>
				<td rowspan="${payment.getOrderline().size() }"><fmt:formatDate value="${payment.date }" pattern="yyyy.MM.dd HH:MM:SS"/></td>
				</c:if>
				</tr>
			</c:forEach>
			</tr>
		</c:forEach>
		</table>
	</c:otherwise>
</c:choose>
</body>
</html>