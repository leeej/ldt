$(function(){
	//주문추가 버튼 누르기
	$('#btnAdd').click(function(){
		var menu_id = $('#menu').val();
		var quantity = $('#quantity').val();
		$.ajax({	url: '/addCart',
					method: 'GET',
					data: {"menu_id":menu_id, "quantity":quantity},
					async : false,
					success: function(responseData){
						location.reload();
					 }
		});
		return false;
	});
	
	//order 버튼 누르기
	$('#btnOrder').click(function(){
		$.ajax({
			url:'/addPayment',
			method: 'POST',
			success: function(responseData){
				if(responseData.result == 1){
					alert("주문완료!");
					location.href = "/success.jsp";
				}
			 }
		});
		return false;
	});
	
});