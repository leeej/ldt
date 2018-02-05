<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order!</title>
</head>
<body>
<table>
      <tr><th>메뉴</th><th>갯수</th><th>금액</th><th>총액</th><th>일시</th></tr>
	<tr>
	<c:forEach var="orderline" items="${payment.getOrderline()}">
		<tr>
		<td>${orderline.getMenu().getMenu_name() }</td>
		<td>${orderline.quantity }</td>
		<td>${orderline.getMenu().getMenu_price() * orderline.quantity }</td>
		</tr>
	</c:forEach>
	<td >${payment.getTotal_price() }</td>
	<td ><fmt:formatDate value="${payment.date }" pattern="yyyy.MM.dd HH:MM:SS"/></td>
	</tr>
</table>
</body>
</html>