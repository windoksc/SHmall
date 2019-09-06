<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-1.12.4.	js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../css/v10.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<script type="text/javascript">
	function set() {
		var params = jQuery("#login").serialize();
		jQuery.ajax({
			url : 'login',
			type : 'POST',
			dataType : 'json',
			async : false,
			contentType : 'application/x-www-form-urlencoded; charset=UTF-8',
			data : params,
			success : function(data) {
				if (data == 0) {
					alert("로그인");
					location.href="main";
				} else {
					alert("정보 틀림 다시");
					return;
				}
			}
		});
	}
</script>
</head>
<form action="" method="post" id="login" name="login">
	<div class="login-cont" id="loginArea">
		<script type="text/javascript"
			src="/Scripts/Login/LogIn.js?637032122268835961"></script>
		<div class="login">
			<h2>
				<span id="title_member" class="title_login" style="display: block;">로그인</span>
			</h2>
			<div id="mem_login" style="display: block;">
				<div class="login-input">
					<div class="user-input">
						<label for="id" title="회원 아이디 입력"> <span class="txt"><img
								src="https://sslimage.gmarket.co.kr/_Net/MyInfo/login/txt04.gif"
								alt="아이디"></span> <span id="id_span" class="input"><input
								type="text" id="id" name="id" value="" maxlength="10"
								style="width: 174px;"></span>
						</label> <label for="pwd" title="비밀번호 입력"> <span class="txt"><img
								src="https://sslimage.gmarket.co.kr/_Net/MyInfo/login/txt05.gif"
								alt="비밀번호"></span> <span id="password_span" class="input"><input
								type="password" id="pwd" name="pwd" value="" maxlength="15"
								style="width: 174px;"></span>
						</label>
					</div>
					<div class="btn-login">
						<a><input type="image" onclick="set();"
							src="https://sslimage.gmarket.co.kr/_Net/MyInfo/login/btn_login.gif"
							alt="LOGIN" title="로그인"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

</body>
</html>