<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인덱스페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body>
	<form action="/join.do" method="POST">
		<h1>회원가입 - Jenkins 추가</h1>
		<hr>
		아이디
		<input type="text" name="userId">
		<br>
		비밀번호
		<input type="password" name="userPassword">
		<br>
		이름
		<input type="text" name="userName">
		<br>
		나이
		<input type="text" name="userAge" id="test1">
		<br>
		성별 남
		<input type="radio" name="userGender" value="M">
		여
		<input type="radio" name="userGender" value="F">
		<br>
		<button type="submit">가입</button>
	</form>

	<button onclick="cookieDelete();">쿠키삭제</button>
</body>

<script type="text/javascript">
	window.onload = function() {
		pageLoad();
	}

	function pageLoad() {
		popCheck = getCookieValue();
		if (popCheck != "true") {
			window.open(
					   "/popup.do",
					   "pop",
					   "width=400, height=500, history=no, resizeable=no, status=no, scrollbars=yes, menubar=no");
		}
	}

	function getCookieValue() {
		var result = "false";

		if (document.cookie != "") {
			cookie = document.cookie.split(";");
			for (var i = 0; i < cookie.length; i++) {
				element = cookie[i].split("=");
				value = element[0];
				value = value.replace(/^\s*/, '');
				if (value == "popCheck") {
					result = element[1];
				}
			}
		}
		return result;
	}

	function cookieDelete() {
	    document.cookie = "popCheck=" + "false" + ";path=/; expires=-1"; 
	}
</script>

</html>