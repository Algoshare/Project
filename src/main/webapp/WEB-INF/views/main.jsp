<!-- 메인 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>AlogShare</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="resources/common/hyo/css/style.css" rel='stylesheet'
	type='text/css' />
<link rel="shortcut icon" type="image/x-icon"
	href="resources/common/hyo/images/fav-icon.png" />
<link href="resources/bootstrap/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
</script>
<!----webfonts---->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!----//webfonts---->
<!-- Global CSS for the page and tiles -->
<link rel="stylesheet" href="resources/common/hyo/css/main.css">
<!-- //Global CSS for the page and tiles -->
<!---start-click-drop-down-menu----->
<script src="resources/common/hyo/js/jquery.min.js"></script>
<!----start-dropdown--->
<script type="text/javascript">
	var $ = jQuery.noConflict();
	$(function() {
		$('#activator').click(function() {
			$('#box').animate({
				'top' : '0px'
			}, 500);
		});
		$('#boxclose').click(function() {
			$('#box').animate({
				'top' : '-700px'
			}, 500);
		});
	});
	$(document).ready(function() {
		//Hide (Collapse) the toggle containers on load
		$(".toggle_container").hide();
		//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
		$(".trigger").click(function() {
			$(this).toggleClass("active").next().slideToggle("slow");
			return false; //Prevent the browser jump to the link anchor
		});

	});
</script>
<!----//End-dropdown--->
<!---//End-click-drop-down-menu----->
</head>
<body>
	<!---start-wrap---->
	<!---start-header---->
	<div class="header">
		<div class="wrap">
			<div class="logo">
				<a href="main"><img
					src="resources/common/hyo/images/algoshare.PNG" width="200"
					heigth="100" /></a>
			</div>
			<!-- <div class="nav-icon">
					 <a href="#" class="right_bt" id="activator"><span> </span> </a>
				</div>
				 <div class="box" id="box">
					 <div class="box_content">        					                         
						<div class="box_content_center">
						 	<div class="form_content">
								<div class="menu_box_list">
									<ul>
										<li><a href="#"><span>홈</span></a></li>
										<li><a href="#"><span>About</span></a></li>
										<li><a href="#"><span>Works</span></a></li>
										<li><a href="#"><span>Clients</span></a></li>
										<li><a href="#"><span>Blog</span></a></li>
										<li><a href="contact.html"><span>Contact</span></a></li>
										<div class="clear"> </div>
									</ul>
								</div>
								<a class="boxclose" id="boxclose"> <span> </span></a>
							</div>                                  
						</div> 	
					</div> 
				</div>     -->
			<!--  -->
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

	<!---//End-header---->
	<!---start-content---->
	<div id='content' class="content">
		<div class="wrap">
			<div id="main" role="main">
				<ul id="tiles"></ul>
			</div>
		</div>
	</div>
	<!---//End-content---->
	<!----wookmark-scripts---->
	<script src="resources/common/hyo/js/jquery.imagesloaded.js"></script>
	<script src="resources/common/hyo/js/jquery.wookmark.js"></script>



	<script src="resources/common/hyo/js/main.js?ver=1 charset='utf-8'"></script>

	<script type="text/javascript">
		/* (function($) {
			var $tiles = $('#tiles'), $handler = $('li', $tiles), $main = $('#main'), $window = $(window), $document = $(document), options = {
				autoResize : true, // This will auto-update the layout when the browser window is resized.
				container : $main, // Optional, used for some extra CSS styling
				offset : 20, // Optional, the distance between grid items
				itemWidth : 280
			// Optional, the width of a grid item
			};
			function applyLayout() {
				$tiles.imagesLoaded(function() {
					// Destroy the old handler
					if ($handler.wookmarkInstance) {
						$handler.wookmarkInstance.clear();
					}

					// Create a new layout handler.
					$handler = $('li', $tiles);
					$handler.wookmark(options);
				});
			}
			applyLayout();
		})(jQuery); */
	</script>
	<!----//wookmark-scripts---->
	<!----start-footer--->
	<!----//End-footer--->
	<!---//End-wrap---->
</body>
</html>

