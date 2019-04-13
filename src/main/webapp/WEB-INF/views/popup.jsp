<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>

<body>
	<h1>정보제공 팝업</h1>
	<hr>
	1. 좋은정보
	<br>
	2. 좋아요
	<br>
	<button onclick="doNot();">오늘은 안열어</button>
</body>

<script type="text/javascript">
	function doNot() {
		var expireDate = new Date();
		expireDate.setMonth(expireDate.getMonth() + 1);
		document.cookie = "popCheck=" + "true" + ";path=/; expires="
				+ expireDate.toGMTString();
		
		window.close();
	}
</script>
</html>