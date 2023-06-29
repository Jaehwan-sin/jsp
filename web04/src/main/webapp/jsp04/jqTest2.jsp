<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../jq/jquery-3.7.0.min.js"></script>
</head>
<body>

<style>
	#display{
		width : 200px;
		height : 200px;
		border : 3px double #333;
	}
</style>

<script>
	$().ready(function(){
		$("#b1").click(function () {
			$("#b2").text($("p").text());
		});
		$("#b2").click(function () {
			$("#display").html("<img src='../img/mug.png'/>");
		});
	});
</script>

<h2>jqTest2</h2>
<p>이미지표시</p>
<button id="b1">버튼의 레이블 변경</button>
<div id="display"></div>
<button id="b2">버튼</button>
</body>
</html>