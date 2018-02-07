<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order!</title>
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="/admin/css_3/bootstrap.css" type='text/css'>
<link rel="stylesheet" href="/admin/TablePanel.css"  type='text/css'>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<body>
<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">결제내역</h3>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list text_center">
                 <thead class="text_center">
			<tr>
				<th>메뉴</th>
				<th>수량</th>
				<th>금액</th>
				<th>총액</th>
				<th>일시</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			<c:forEach var="orderline" items="${payment.orderline}">
			<tr>	
				<td>${orderline.getMenu().getMenu_name() }</td>
				<td>${orderline.quantity }</td>
				<td><fmt:formatNumber value="${orderline.getMenu().getMenu_price() * orderline.quantity }" type="currency"/></td>
				<c:if test="${payment.getOrderline().get(0) == orderline }">
					<td class="text_center" rowspan="${payment.getOrderline().size() }"><fmt:formatNumber value="${payment.getTotal_price() }" type="currency"/></td>
					<td class="text_center" rowspan="${payment.getOrderline().size() }"><fmt:formatDate value="${payment.date }" pattern="yyyy.MM.dd HH:MM:SS"/></td>
				</c:if>
				</tr>
			</c:forEach>
			</tr>
		</tbody>
	</table>          
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>