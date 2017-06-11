<!-- 문제 세부 페이지 -->

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="resources/common/hyo/css/style.css" rel='stylesheet'
	type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="resources/common/hyo/images/fav-icon.png" />
<link href="resources/bootstrap/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<link href="resources/bootstrap/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<title>Making Group</title>
<link rel="stylesheet" href="resources/common/hyo/css/main.css">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!-- //Global CSS for the page and tiles -->
<!---start-click-drop-down-menu----->
<script src="resources/common/hyo/js/jquery.min.js"></script>
</head>
<body>
	<div class="header">
		<div class="wrap">
			<div class="logo">
				<a href="main"><img
					src="resources/common/hyo/images/algoshare.PNG" width="200"
					heigth="100" /></a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<!-- ${detailQuestionList[0].img} -->
	<div class="wrap">
		<div class="page-header">
			<h1>&nbsp;Question Detail</h1>
		</div>
		<br>
		<div class="wrap">
			<h3>문제 이름</h3>
			<br> <br> ${detailQuestionList[0].q_name}
		</div>
		<br> <br> <br> <br>
		<div class="wrap">
			<h3>문제 내용</h3>
			<br> <br> ${detailQuestionList[0].q_content}
		</div>
		<br> <br> <br> <br>
		<div class="wrap">
			<h3>입력</h3>
			<br> <br> ${detailQuestionList[0].input}
		</div>
		<br> <br> <br> <br>
		<div class="wrap">
			<h3>출력</h3>
			<br> <br> ${detailQuestionList[0].output}
		</div>
		<br> <br> <br> <br>
		<div class="wrap">
			<h3>마감일</h3>
			<br> <br> ${detailQuestionList[0].due}
		</div>
		<br> <br> <br> <br>
		</div>
		<div align="right">
			<form action="/project/updateQuestion" method="POST">
				<input type="hidden" name="room_no"
					value="${detailQuestionList[0].room_no}"> <input
					type="hidden" name="q_content" value='${detailQuestionList[0].q_content}'>
				<input type="hidden" name="q_name"
					value="${detailQuestionList[0].q_name}"> <input
					type="hidden" name="due" value="${detailQuestionList[0].due}">
				<input type="hidden" name="input"
					value="${detailQuestionList[0].input}"> <input
					type="hidden" name="output" value="${detailQuestionList[0].output}">
				<input type="hidden" name="q_no"
					value="${detailQuestionList[0].q_no}"> <input type="submit"
					class="btn btn-default" value="문제 수정">
				<button type="button" class="btn btn-danger"
					onclick="deletequestiononclick('${detailQuestionList[0].q_no}');">문제
					삭제</button>
			</form>

			<br> <br> <br>
		</div>
	
	<input type="hidden" id="no" value="${detailQuestionList[0].q_no}">
	<div class="wrap">
		<div class="wrap">
			<table class="table table-bordered" id="codes">

			</table>
		</div>

		<div class="wrap" align="right">
			<p>
				<button type="button" class="btn btn-primary"
					onclick="location.href='code?q_no=${detailQuestionList[0].q_no}';">코드
					제출</button>
			</p>
			<br> <br> <br>
		</div>
	</div>
</body>
<script src="resources/common/hyo/js/code.js?ver=2 charset='utf-8'"></script>
<script src="resources/common/hyo/js/jquery.min.js"></script>
</html>