<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>
<script type="text/javascript">
		$(function(){
		$("#loginBtn").click(function(){
			var username = $("#username").val();
			var password = $("#password").val();
			if(!username){
				alert("用户名必填!");
				$("#username").focus();
				return ;
			}
			if(!password){
				alert("密码必填!");
				$("#password").focus();
				return ;
			}
			
			var param = {"username":username,"password":password}; 
			$.post("http://localhost:8080/ssm-test/loginaction",param,function(result){
				if(result){
					window.location.href="http://localhost:8080/ssm-test/success";	
					//alert("登录成功");
				}else{
					alert("用户名或者密码错误!");
				}
			});
		});
	
	});
		
	</script>
<title>login</title>
<style>
#dh {
	padding: 22px 0;
	width: 1190px;
	height: 44px;
	margin: auto;
}

#dl {
	width: 100%;
	height: 480px;
}

#dj {
	width: 100%;
	height: 75px;
}

#bg {
	width: 55%;
	height: 480px;
	background: url("res/image/loginbz3.jpg")
}

#form {
	width: 40%;
	height: 480px;
	float: right;
	background-color: white;
	margin-top: -450px;
}
</style>
</head>
<body>
	<!--登录页导航-->
	<div id="dh"></div>
	<!-- 登录模块 -->
	<div id="dl">
		<div id="bg"></div>
		<div id="form">
			<form>
				用户名:<input type="text" id="username" name="username"><br />
				密码:<input type="text" id="password" name="password"><br /> <input
					type="button" value="登录" id="loginBtn">
			</form>
			<input type="button" value="注册" οnclick="javascrtpt:window.location.href='http://localhost:8080/ssm-test/sgin'">
		</div>
	
	</div>
	<!-- 登录页底角 -->
	<div id="dj"></div>
</body>
</html>