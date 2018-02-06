<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head> 
	<title>Payment-List</title>
	<link rel="stylesheet" type="text/css" href="/files/theme/font_test.css"/>
	<style>
	</style>

	<script type="text/javascript">
		function move(url){
			location.href=url;
		}
	</script>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- <script type='text/javascript' src="/js/order.js"></script> -->	

<body>
<c:choose>
	<c:when test="${empty allPayment}">
		<h2>결제 내역이 없습니다.</h2>
	</c:when>
	<c:otherwise>
	<marquee behavior="alternate" scrolldelay="100" direction="right">테스트뷰</marquee>
	<table class="bbs" width="800" height="100" border="2" bgcolor="D8D8D8">
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
			</c:forEach>
			<td >${payment.getTotal_price() }</td>
			<td ><fmt:formatDate value="${payment.date }" pattern="yyyy.MM.dd"/></td>
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td align="center" colspan="5">1</td>
			</tr>
		</tfoot>		
	</table>
	<!-- 
		<input type="button" value="처음으로" onclick="move('Board_List.jsp');" />
		<input type="button" value="글쓰기" onclick="move('Board_Write.jsp');" />
	 -->
	 </c:otherwise>
</c:choose>
</body>

</body>
</html>