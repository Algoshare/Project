<!-- 스터디 세부 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>detail page</title>
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
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="resources/common/hyo/css/main2.css">
<script src="resources/common/hyo/js/jquery.min.js">
	</sript>
</script>
</head>
<body>

	<div class="header">
		<div class="wrap">
			<div class="logo">
				<a href="main"><img
					src="resources/common/hyo/images/algoshare.PNG" width="200"
					heigth="100" /></a>
			</div>
			<div class="top-searchbar">
				<form>
					<input type="text" /><input type="submit" value="" />
				</form>
			</div>
			<div class="userinfo">
				<div class="user">
					<p>
						<button type="button" class="btn btn-primary btn-xs"
							onclick="location.href='form';">스터디 그룹 만들기</button>
					</p>
				</div>
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
			<h1>&nbsp;모임 세부사항</h1>
		</div>
		<div style="border: 1px dashed #BDBDBD;">
			<img src="resources/common/hyo/images/${detailRoomList[0].img}"
				align="left" width="282" height="150">
			<!-- ${detailRoomList[0].room_no} -->
			<h1>&nbsp;&nbsp;&nbsp;${detailRoomList[0].name}</h1>
			<br>
			<h3>&nbsp;&nbsp;&nbsp;${detailRoomList[0].content}</h3>
			<br>
			<br>
			<br>
		</div>
	</div>
	<!-- 
<div class="content">
	<div class="wrap">
		<ul id="certain">
		</ul>
	</div>
</div>
 -->
	<br>
	<div class="wrap" align="right">
		<form action="readRoom" method="GET">
		<p>
		<input type="hidden" name ="room_no" id="room_no" value='${detailRoomList[0].room_no}'>
		<input type="hidden" id="name" name= "name" value='${detailRoomList[0].name}'>
		<input type="hidden" id="content" name="content" value='${detailRoomList[0].content}'>
			<input type="submit" class="btn btn-default"
				value ="그룹 수정">
			<button type="button" class="btn btn-danger"
				onclick="deleteonclick('${detailRoomList[0].room_no}');">그룹
				삭제</button>
		</p>
				</form>
	</div>
	<div class="wrap">
		<div class="page-header">
			<h1>문제</h1>
		</div>
	</div>
	<input type="hidden" id="no" value="${detailRoomList[0].room_no}">
	<div class="wrap">
		<table class="table table-bordered" id="questions">

		</table>
	</div>
	<div class="wrap" align="right">
		<p>
			<button type="button" class="btn btn-primary"
				onclick="location.href='questionform?room_no=${detailRoomList[0].room_no}';">문제
				등록</button>
		</p>
	</div>
	<script src="resources/common/hyo/js/jquery.imagesloaded.js"></script>
	<script src="resources/common/hyo/js/jquery.wookmark.js"></script>
	<script src="resources/common/hyo/js/detail.js?ver=2 charset='utf-8'"></script>
	<script type="text/javascript">
		(function($) {
			var $certain = $('#certain'), $handler = $('li', $certain), $main = $('#main'), $window = $(window), $document = $(document), options = {
				autoResize : true, // This will auto-update the layout when the browser window is resized.
				container : $main, // Optional, used for some extra CSS styling
				offset : 20, // Optional, the distance between grid items
				itemWidth : 280
			// Optional, the width of a grid item
			};
			function applyLayout() {
				$certain.imagesLoaded(function() {
					// Destroy the old handler
					if ($handler.wookmarkInstance) {
						$handler.wookmarkInstance.clear();
					}

					// Create a new layout handler.
					$handler = $('li', $certain);
					$handler.wookmark(options);
				});
			}
			applyLayout();
		})(jQuery);
	</script>
</body>
</html>