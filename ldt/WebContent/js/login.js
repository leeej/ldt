$(function(){
	//login 버튼 누르기
	$('#btnLogin').click(function(){
		//alert("Clicked");
		/*if($("input[name=c]").prop("checked") == true){
			localStorage.setItem("saveId", $("input[name=id]").val());
		}else{
			localStorage.removeItem("saveId");
		}*/
		var url = "/admin/login";
		var admin = { "admin_id" : "", "password" : "", "result" : 0 };
		admin.admin_id = $('#loginId').val().trim();
		admin.password = $('#loginPassword').val().trim();
		
		console.log(admin);
		$.ajax({	url: url,
					method: 'POST',
					contentType: 'application/json; charset=UTF-8',
					dataType : 'json',
					data: JSON.stringify(admin),
					async : false,
					success: function(responseData){
						admin = responseData;
						if(admin.result == 1){
							alert("로그인 성공");
							location.href = "/admin/paymentList";
						}else{
							alert("로그인 실패");
						}
					 }
		});
		return false;
	});
	
	//List뿌려주기
});