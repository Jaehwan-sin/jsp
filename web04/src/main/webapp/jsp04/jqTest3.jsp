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
	p{
		width : 500px;
		height : 200px;
		background : green;
	}
</style>

<script>
	$().ready(function(){
		$("p").mouseenter(function () {
			$(this).text("마우스 접근");
		});
		$("p").mouseleave(function () {
			$(this).text("마우스 사라짐");
		});
	});
</script>

<h2>jqTest3</h2>
<p>마우스를 이 곳으로 이동해보세요</p>
<button id="b2">버튼</button>

</body>
</html>