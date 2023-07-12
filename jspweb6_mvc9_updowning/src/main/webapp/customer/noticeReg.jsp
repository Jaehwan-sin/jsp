<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/nstyle.css" />
<script>
	function cancelurl() {
		location.href="notice.do"
	}
</script>
</head>
<body>
<h2>noticeReg</h2>

<form action="noticeRegProc.do" method="post" enctype="multipart/form-data">

<table class="twidth">
	<colgroup>
		<col width="15%" />
		<col width="35%" />
		<col width="15%" />
		<col width="35%" />
	</colgroup>
	<caption>Write</caption>
		<tbody>
			<tr>
				<th class="left">제목</th>
				<td colspan="3">
					<input type="text" class="inp" name="title"/>
				</td>
			</tr>
			<tr>
				<th class="left">내용</th>
				<td colspan="3" id="content">
					<textarea name="content" class="txt"></textarea>
				</td>
			</tr>
			<tr>
				<th class="left">첨부파일</th>
				<td colspan="3" id="addfile">
					<input type="file" name="file" size="50" class="inp" />
				</td>
			</tr>
		</tbody>
</table>
	<input type="hidden" name="uid" value="${uid }" /> <!-- 로그인 된 아이디 정보를 가져가기 위한 과정 -->
	<input type="submit" value="SAVE" />
	<input type="button" value="CANCEL" class="cancel" onclick="cancelurl()"/>

</form>
</body>
</html>