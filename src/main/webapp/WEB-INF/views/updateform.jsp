<!-- 스터디 수정 페이지 -->

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
	<div class="wrap">
		<div class="page-header">
			<h1>&nbsp;Group Update</h1>
		</div>

		<div class="col-xs-7">
			<input type="text" size="10" class="form-control" id="name"
				align="center" value='$detailRList[0].name'>
		</div>
		<br>
		<br>
		<br>
		<br>
		<div class="col-xs-7">
			<input type="text" class="form-control" id="content"
				value='$detailRList[0].content'>
		</div>
		<br>
		<br>
		<br>
		<br>
		<div class="col-sm-10">
			<label for="exampleInputFile">대표 이미지 업로드</label> <input type="file"
				id="img">
		</div>
		<br> <br> <br> <br>
		<div class="col-sm-10">
			<button class="btn btn-primary"
				onclick="updateonclick($detailRList[0].room_no);">확인</button>
			<button type="reset" class="btn btn-default">취소</button>
		</div>
	</div>
</body>

<script src="resources/common/hyo/js/form.js?ver=1 charset='utf-8'"></script>
<script src="resources/common/hyo/js/jquery.min.js"></script>
</html>