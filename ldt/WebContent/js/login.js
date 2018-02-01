$(function(){
	
	$('#btnLogin').click(function(){
		/*if($("input[name=c]").prop("checked") == true){
			localStorage.setItem("saveId", $("input[name=id]").val());
		}else{
			localStorage.removeItem("saveId");
		}*/
		var url = "/admin/login";
		var admin = { "adminId" : "", "password" : "", "result" : 0 };
		admin.adminId = $('#loginId').val().trim();
		admin.password = $('#loginPassword').val().trim();
		$.ajax({	url: url,
					method: 'POST',
					contentType: 'application/json; charset=UTF-8',
					dataType : 'json',
					data: JSON.stringify(admin),
					success: function(responseData){
						admin = responseData;
						if(admin.result == 1){
							alert("로그인 성공");
							location.href='/';
						}else if(data < 1){
							alert("로그인 실패");
						}else{
							alert(data+"잘못 처리되었습니다.");
						}
					 }
		});
		return false;
	});
});