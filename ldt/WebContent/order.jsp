<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order!</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="js/app.js"></script>
<body>
<c:choose>
	<c:when test="${empty sessionScope.user }">잘못된 접근입니다.</c:when>
	<c:otherwise>
	<h2>${sessionScope.user.getUser_id() }(${sessionScope.user.getUser_name() })님 어서오세요.</h2>
		<c:choose>
			<c:when test="${!empty recommend_menu }">
				<img src="${recommend_menu.getMenu_img() }"><br>
				[${recommend_menu.getMenu_name() }] <br>
				<fmt:formatNumber value="${recommend_menu.getMenu_kcal()}" type="number"/>kcal
				<fmt:formatNumber value="${recommend_menu.getMenu_price() }" type="currency"/><br>
				<select id="menu">
					<option value="${recommend_menu.getMenu_name() }" selected>${recommend_menu.getMenu_name() }</option>
				</select>
			</c:when>
			<c:otherwise>
				<c:forEach var="menu" items="${menus}">
					<img src="${menu.getMenu_img()}"><br>
					[${menu.getMenu_name() }]<br>
					<fmt:formatNumber value="${menu.getMenu_kcal()}" type="number"/>kcal
					<fmt:formatNumber value="${menu.getMenu_price() }" type="currency"/><br>
				</c:forEach>
				<select id="menu">
				<c:forEach var="menu" items="${menus}">
					<option value="${menu.getMenu_id() }">${menu.getMenu_name() }</option>
				</c:forEach>
				</select>
			</c:otherwise>
		</c:choose>
	<select id="quantity">
		<c:forEach var="i" begin="1" end="10">
	       <option value="${i}">${i}</option>
	    </c:forEach>
	</select>
	<button id="btnAdd">주문 추가하기</button>
	<c:if test="${!empty sessionScope.cart }">
		<c:forEach var="menu" items="${menus }">
			<c:if test="${!empty sessionScope.cart.get(menu) }">
			<br>${menu.getMenu_name() }:${sessionScope.cart.get(menu) }
			</c:if>
		</c:forEach>
	<input type="submit" id="btnOrder" value="주문하기">
	</c:if>
	<br>
	</c:otherwise>
</c:choose>
</body>
</html>