$(function(){
	//주문추가 버튼 누르기
	$('#btnAdd').click(function(){
		var menu_id = $('#selected_menu').val();
		var quantity = $('#quantity').val();
		console.log(menu_id+" : "+quantity);
		$.ajax({	url: '/order/addCart',
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
			url:'/order/addPayment',
			method: 'POST',
			success: function(responseData){
				if(responseData.result == 1){
					alert("주문완료!");
					location.href = "/order/success.jsp";
				}
			 }
		});
		return false;
	});
	
});