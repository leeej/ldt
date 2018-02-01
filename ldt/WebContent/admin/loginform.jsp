<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginform.jsp</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(function(){
	var $form = $("form");
	var itemValue = localStorage.getItem("saveId");
	if(itemValue != null){
		$("input[name=id]").val(itemValue);
	}
	$form.submit(function(){
		if($("input[name=c]").prop("checked") == true){
			localStorage.setItem("saveId", $("input[name=id]").val());
		}else{
			localStorage.removeItem("saveId");
		}
		var url = "login.do";
		$.ajax({	url: url,
					method: 'POST',
					data: $form.serialize(),
					success: function(responseData){
						var data = responseData.trim();
						if(data == '1'){
							alert("로그인 성공");
							location.href='${pageContext.request.contextPath}';
						}else if(data == '-1'){
							alert("로그인 실패");
						}else{
							alert(data+"잘못 처리되었습니다.");
						}
					 }
		});
		return false;
	});
});
</script>
<body>
  <div>
    <form>
    <ul>
      <li>아이디 : <input type="text" name="id" autocomplete="off" required>
      <input type="checkbox" name="c" value="save">아이디저장</li>
      <li>비밀번호 : <input type="password" name="pwd" required></li>
      <li><input type="submit" value="로그인"></li>
    </ul>
    </form>
  </div>
</body>
</html>