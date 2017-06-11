<!-- 문제 수정 페이지 -->

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
	<%
		String q_no = request.getParameter("q_no");
		String room_no = request.getParameter("room_no");
		String q_name = request.getParameter("q_name");
		String q_content = request.getParameter("q_content");
		String input = request.getParameter("input");
		String output = request.getParameter("output");
		String due = request.getParameter("due");
		q_content = q_content.replaceAll("<br>", "\r\n");
		input = input.replaceAll("<br>", "\r\n");
		output = output.replaceAll("<br>", "\r\n");
	%>
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
			<h1>&nbsp;Question Update</h1>
		</div>
		<div class="col-xs-7">
			<input type="text" class="form-control" id="name" value="<%=q_name%>"><br>
		</div>
		<br> <br> <br> <br>
		<div class="col-xs-7">
			<textarea class="form-control" rows="7" id="content"><%=q_content%></textarea>
			<br>
		</div>
		<br> <br> <br> <br>
		<div class="col-xs-7">
			<textarea class="form-control" rows="4" id="input"><%=input%></textarea>
			<br>
		</div>
		<br> <br> <br> <br>
		<div class="col-xs-7">
			<textarea class="form-control" rows="4" id="output"><%=output%></textarea>
		</div>
		<br> <br> <br> <br>
		<div class="col-xs-3">
			<label for="exampleInputPassword1">마감 기한</label> <input type="date"
				class="form-control" id="due" value="<%=due%>"><br>
		</div>
		<br> <br> <br> <br>
		<div class="col-sm-10">
			<button class="btn btn-primary"
				onclick="questionupdateonclick(<%=q_no%>);">수정</button>
			<button type="reset" class="btn btn-default">취소</button>
		</div>
	</div>
</body>

<script src="resources/common/hyo/js/form.js?ver=1 charset='utf-8'"></script>
<script src="resources/common/hyo/js/jquery.min.js"></script>
</html>