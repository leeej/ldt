<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
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
<form>
<select name="menu">
	<c:forEach var="menu" items="${menus}">
		<option value="${menu.getMenu_id() }">${menu.getMenu_name() }</option>
	</c:forEach>
</select>
<select name="quantity">
	<c:forEach var="i" begin="1" end="10">
       <option value="${i}">${i}</option>
    </c:forEach>
</select>
<button id="btnAdd">주문 추가하기</button>
</form>
</body>
</html>