<!-- 코드 세부 페이지 -->

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
			<h3>제출자 성명</h3>
			<br>
			<br> ${detailCodeList[0].c_name}
		</div>
		<br>
		<br>
		<br>
		<br>
		<div class="wrap">
			<h3>제출 code</h3>
			<br>
			<br> ${detailCodeList[0].c_content}
		</div>
		<br>
		<br>
		<br>
		<br>

		<!-- 
		<div class="wrap" align="right">
	<p>
	
	<button type="button" class="btn btn-default" onclick="location.href='questionupdateform?room_no=${detailQuestionList[0].room_no}&q_name=${detailQuestionList[0].q_name}&q_content=${detailQuestionList[0].q_content}&input=${detailQuestionList[0].input}&output=${detailQuestionList[0].output}&due=${detailQuestionList[0].due}&q_no=${detailQuestionList[0].q_no}';">문제 수정</button>
	<button type="button" class="btn btn-danger" onclick="deletequestiononclick('${detailQuestionList[0].q_no}');">문제 삭제</button></p><br><br><br>
</div>
-->
	</div>
	<input type="hidden" id="no" value="${detailCodeList[0].code_no}">
	<div class="wrap">
		<div class="wrap">
			<table class="table table-bordered" id="comments">

			</table>
		</div>
	</div>
	<div class="wrap">
		<div class="wrap">
			<div class="form-group">
				<label for="exampleInputName2" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="comment_name"
						placeholder="이름을 입력해주세요.">
				</div>
				<br>
				<br>
			</div>
			<div class="form-group">
				<label for="exampleInputName2" class="col-sm-2 control-label">Comment</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="comment"
						placeholder="댓글을 입력해주세요."></textarea>
				</div>
				<br>
				<br>
				<br>
			</div>
			<div class="form-group" align="right">
				<div class="col-sm-offset-2 col-sm-10">
					<button class="btn btn-default"
						onclick="okcommentonclick(${detailCodeList[0].code_no});">댓글
						입력</button>
				</div>
				<br>
				<br>
				<br>
			</div>
		</div>
	</div>
</body>
<script src="resources/common/hyo/js/comment.js?ver=2 charset='utf-8'"></script>
<script src="resources/common/hyo/js/jquery.min.js"></script>
</html>