<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="admin/files/table.css"/>
<link rel="stylesheet" type="text/css" href="admin/files/theme/font_test.css"/>
<title>Admin Page</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<body>
<c:choose>
	<c:when test="${empty allPayment}">
		<h2>결제 내역이 없습니다.</h2>
	</c:when>
	<c:otherwise>
	<table class="bbs">
		<colgroup>
			<col width="50" />
			<col width="100" />
			<col width="100" />
			<col width="50" />
		</colgroup>
		<thead>
			<tr>
				<th align="center">결제번호</th>
				<th align="center">이름</th>
				<th align="center">메뉴</th>
				<th align="center">갯수</th>
				<th align="center">금액</th>
				<th align="center">총액</th>
				<th align="center">일시</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="payment" items="${allPayment}">
			<tr>
			<td rowspan="${payment.getOrderline().size()+1 }">${payment.payment_id }</td>
			<td rowspan="${payment.getOrderline().size()+1 }">${payment.getUser().getUser_name() }</td>
			<c:forEach var="orderline" items="${payment.orderline}">	
				<td>${orderline.getMenu().getMenu_name() }</td>
				<td>${orderline.quantity }</td>
				<td>${orderline.getMenu().getMenu_price() * orderline.quantity }</td>
				<c:if test="${payment.getOrderline().get(0) == orderline }">
					<td rowspan="${payment.getOrderline().size() }">${payment.getTotal_price() }</td>
					<td rowspan="${payment.getOrderline().size() }"><fmt:formatDate value="${payment.date }" pattern="yyyy.MM.dd HH:MM:SS"/></td>
				</c:if>
			</c:forEach>
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td align="center" colspan="5">1</td>
			</tr>
		</tfoot>		
	</table>
	 </c:otherwise>
</c:choose>
</body>
</html>