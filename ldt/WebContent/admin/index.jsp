<%@page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="/admin/css_3/bootstrap.css" type='text/css'>
<link rel="stylesheet" href="/admin/TablePanel.css"  type='text/css'>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<body>
<c:choose>
	<c:when test="${empty allPayment}">
		<h2>결제 내역이 없습니다.</h2>
	</c:when>
	<c:otherwise>
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
				<th>No</th>
				<th>이름</th>
				<th>메뉴</th>
				<th>수량</th>
				<th>금액</th>
				<th>총액</th>
				<th>일시</th>
				<th>픽업완료</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="payment" items="${allPayment}">
			<tr>
			<td class="text_center" rowspan="${payment.getOrderline().size()+1 }">${payment.payment_id }</td>
			<td class="text_center"  rowspan="${payment.getOrderline().size()+1 }">${payment.getUser().getUser_name() }</td>
			<c:forEach var="orderline" items="${payment.orderline}">
			<tr>	
				<td>${orderline.getMenu().getMenu_name() }</td>
				<td>${orderline.quantity }</td>
				<td><fmt:formatNumber value="${orderline.getMenu().getMenu_price() * orderline.quantity }" type="currency"/></td>

				<c:if test="${payment.getOrderline().get(0) == orderline }">
					<td class="text_center" rowspan="${payment.getOrderline().size() }"><fmt:formatNumber value="${payment.getTotal_price() }" type="currency"/></td>
					<td class="text_center" rowspan="${payment.getOrderline().size() }"><fmt:formatDate value="${payment.date }" pattern="yyyy.MM.dd HH:MM:SS"/></td>
					<td class="text_center" rowspan="${payment.getOrderline().size() }">${payment.getIs_paid() }</td>
				</c:if>
				</tr>
			</c:forEach>
			</tr>
		</c:forEach>
		</tbody>
                </table>          
              </div>
					<div class="panel-footer">
						<div class="row">
							<div class="col col-xs-4">Page 1 of 5
								</div>
									<div class="col col-xs-8">
										<ul class="pagination hidden-xs pull-right">
										  <li><a href="#">1</a></li>
										  <li><a href="#">2</a></li>
										  <li><a href="#">3</a></li>
										  <li><a href="#">4</a></li>
										  <li><a href="#">5</a></li>
										</ul>
										<ul class="pagination visible-xs pull-right">
											<li><a href="#">«</a></li>
											<li><a href="#">»</a></li>
										</ul>
									</div>
								</div>
						  </div>
						</div>
					</div>
				</div>
			</div>
	 </c:otherwise>
</c:choose>
</body>
</html>