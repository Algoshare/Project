<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0066)https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1209 -->
<html lang="ko" xml:lang="ko" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>프로그래머스</title>
<link rel="shortcut icon" type="image/x-icon"
	href="https://programmers.co.kr/assets/icons/favicon-62fbe79ee434be97a7b1791d7f5eae06e53e6806a8ad9254f51ace33e119845c.ico">
<link rel="apple-touch-icon" type="image/png"
	href="https://programmers.co.kr/assets/icons/apple-icon-ba015f4be3de92dd8274a0720169a9ac34e44c56e994511501fe7b5dfc32c9eb.png">
<meta name="theme-color" content="#5C6BC0">

<link rel="stylesheet" media="all"
	href="resources/common/program_files/application-0bd6e0054d32c670b0d3c5c1596e30a29af855d72549389859a18e7f3d1ea61f.css"
	data-turbolinks-track="true">

<meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token"
	content="MDo2L9h7RI+U0c33Ytlbh8cDMr6POy9oP438ddl2qHgW3JQX4EAKwLslPxy8SrMCwlXa68CVVCXbW51tirgrjw==">
<!--<meta name="action-cable-url"
	content="wss://programmers.co.kr:8080/cable">-->
<script async="" src="resources/common/program_files/analytics.js"></script>
<script src="resources/common/hyo/js/jquery.min.js"></script>
<script>
	//<![CDATA[

	//]]>
</script>


<script src="resources/common/program_files/jsapi"></script>
<script
	src="resources/common/program_files/chartkick-cf47ff3e1e95a894914bcfc8c97cbb4ed339a0e1b18ff55343d2a6f244410fb3.js"></script>
<style type="text/css">
.cloudinary-thumbnails {
	list-style: none;
	margin: 10px 0;
	padding: 0
}

.cloudinary-thumbnails:after {
	clear: both;
	display: block;
	content: ''
}

.cloudinary-thumbnail {
	float: left;
	padding: 0;
	margin: 0 15px 5px 0;
	display: none
}

.cloudinary-thumbnail.active {
	display: block
}

.cloudinary-thumbnail img {
	border: 1px solid #01304d;
	border-radius: 2px;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px
}

.cloudinary-thumbnail span {
	font-size: 11px;
	font-family: Arial, sans-serif;
	line-height: 14px;
	border: 1px solid #aaa;
	max-width: 150px;
	word-wrap: break-word;
	word-break: break-all;
	display: inline-block;
	padding: 3px;
	max-height: 60px;
	overflow: hidden;
	color: #999;
}

.cloudinary-delete {
	vertical-align: top;
	font-size: 13px;
	text-decoration: none;
	padding-left: 2px;
	line-height: 8px;
	font-family: Arial, sans-serif;
	color: #01304d
}

.cloudinary-button {
	color: #fefeff;
	text-decoration: none;
	font-size: 18px;
	line-height: 28px;
	height: 28x;
	border-radius: 6px;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	font-weight: normal;
	text-decoration: none;
	display: inline-block;
	padding: 4px 30px 4px 30px;
	background: #0284cf;
	font-family: Helvetica, Arial, sans-serif;
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzAyODRjZiIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiMwMjU5OGIiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
	background: -moz-linear-gradient(top, #0284cf 0%, #02598b 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #0284cf),
		color-stop(100%, #02598b));
	background: -webkit-linear-gradient(top, #0284cf 0%, #02598b 100%);
	background: -o-linear-gradient(top, #0284cf 0%, #02598b 100%);
	background: -ms-linear-gradient(top, #0284cf 0%, #02598b 100%);
	background: linear-gradient(to bottom, #0284cf 0%, #02598b 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#0284cf',
		endColorstr='#02598b', GradientType=0);
}

.cloudinary-button:hover {
	background: #02598b;
	background:
		url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIwJSIgeTI9IjEwMCUiPgogICAgPHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzAyNTk4YiIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgICA8c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiMwMjg0Y2YiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
	background: -moz-linear-gradient(top, #02598b 0%, #0284cf 100%);
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #02598b),
		color-stop(100%, #0284cf));
	background: -webkit-linear-gradient(top, #02598b 0%, #0284cf 100%);
	background: -o-linear-gradient(top, #02598b 0%, #0284cf 100%);
	background: -ms-linear-gradient(top, #02598b 0%, #0284cf 100%);
	background: linear-gradient(to bottom, #02598b 0%, #0284cf 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#02598b',
		endColorstr='#0284cf', GradientType=0);
}
</style>
</head>
<body class="challenge-algorithm-codes challenge-algorithm-codes-show"
	data-controller="challenge_algorithm_codes" data-action="show">

	<div class="main ">

		<div class="topbar-wrap">
			<div class="topbar flex-space-between">
				<div class="col-flex flex-center">
					<ul class="nav navbar-nav">

						<li><a class="disabled"
							href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1209#">Algoshare</a></li>
					</ul>
				</div>
				<div class="col-flex flex-center right-menu">
					<ul class="nav navbar-nav">
						<!-- <li><a onclick="Hera.challengeAlgorithmCodes.startTour(true)"
							id="help"
							href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1209#">도움말</a></li>
						<li><a data-remote="true"
							href="https://programmers.co.kr/shortcuts">키보드 단축키</a></li>
						<li><a data-remote="true"
							href="https://programmers.co.kr/compile_options">컴파일 옵션</a></li> -->
						<li><a class="exit"
							href="https://programmers.co.kr/tryouts/3/result">나가기</a></li>
					</ul>
				</div>
			</div>
		</div>





		<ul class="algorithm-nav nav nav-tabs nav-tabs-dark task-tab" id="tab"
			role="tablist">

			<li class="algorithm-item nav-item active" id="&quot;tour1&quot;">
				<a onclick="Hera.challengeAlgorithmCodes.changeChallenge(3,1209)">
					<div class="algorithm-panel">
						<svg id="checkbox-316" class="outline-box">
							</svg>
						<div class="info">
							<div class="title">문제 1</div>
							
						</div>
					</div>
					
			</a>
			</li>
			<li class="nav-item dropdown pull-right" id="tour7"><a
				class="dropdown-toggle" data-toggle="dropdown"
				href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1210#"
				aria-expanded="false"> java </a>
				<ul class="dropdown-menu">
					<li><a
						href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1209">C++</a>
					</li>
					<li><a
						href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1950">C#</a>
					</li>
					<li><a
						href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1210">Java</a>
					</li>
					<li><a
						href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1207">JavaScript</a>
					</li>
					<li><a
						href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1211">Python3</a>
					</li>
					<li><a
						href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1208">Ruby</a>
					</li>
					<li><a
						href="https://programmers.co.kr/tryouts/3/challenge_algorithm_codes/1498">Swift</a>
					</li>
				</ul></li>
		</ul>
		<div class="algorithm-content language level-group"
			data-tryout-token-id="10758" data-tryout-id="3"
			data-interact-mode="testing_and_scoring"
			data-algorithm-code-id="1209" data-language="cpp"
			data-is-competition="false">
			<div class="main-section">
				<div class="guide-section" id="tour2"
					style="width: calc(40% - 12px);">
					<div class="markdown">
						<p>구구단을 출력하는 문제입니다.</p>

						<h5>제한사항</h5>

						<ul>
							<li>N값은 100 이하의 자연수</li>
						</ul>

						<hr>

						<h5>입출력 예</h5>
						<table class="table">
							<thead>
								<tr>
									<th>N</th>
									<th>Result</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>5</td>
									<td>5 * 1 = 5<br/>5 * 2 = 10<br/>5 * 3 = 15<br/>5 * 4 = 20<br/>5 * 5 = 25<br/>5 * 6 = 30<br/>5 * 7 = 35<br/>
									5 * 8 = 40<br/>5 * 9 = 45<br/></td>
								</tr>
								<tr>
									<td>9</td>
									<td>9 * 1 = 9<br/>9 * 2 = 18<br/>9 * 3 = 27<br/>9 * 4 = 36<br/>9 * 5 = 45<br/>9 * 6 = 54<br/>9 * 7 = 63<br/>
									9 * 8 = 72<br/>9 * 9 = 81<br/></td>
								</tr>
							</tbody>
						</table>
						<h5>입출력 예 설명</h5>

						<p>
							입출력 예 #1<br> 주어진 N의 수가 5일 때, 구구단 중 5단을 출력합니다.
						</p>

						<p>
							입출력 예 #2<br> 주어진 N의 수가 9일 때, 구구단 중 9단을 출력합니다.
						</p>
					</div>
				</div>
				<div class="gutter gutter-horizontal"
					style="width: 24px; background-image: url(&quot;/assets/img-grippie_vertical@2x-b21116f4dfa3dc24d45927e5b3005a4590c092ea6a5b4fe9736520efd1633172.png&quot;);"></div>
				<div class="run-section" style="width: calc(60% - 12px);">
					<div id="tour3" class="code-section"
						onkeyup="Hera.challengeAlgorithmCodes.resizeEditor(this);"
						style="height: calc(60% - 7px);">
						<div class="editor">
							<textarea hidden="" id="code" name="code" style="display: none;">
public class Solution {
	public static void main(String args[]) {
	
	}
}</textarea>
							<div class="CodeMirror cm-s-grepp CodeMirror-wrap">
								<div
									style="overflow: hidden; position: relative; width: 3px; height: 0px; top: 274px; left: 186px;">
									<textarea autocorrect="off" autocapitalize="off"
										spellcheck="false"
										style="position: absolute; padding: 0px; width: 1000px; height: 1em; outline: none;"
										tabindex="0"></textarea>
								</div>
								<div class="CodeMirror-vscrollbar" cm-not-content="true">
									<div style="min-width: 1px; height: 0px;"></div>
								</div>
								<div class="CodeMirror-hscrollbar" cm-not-content="true">
									<div style="height: 100%; min-height: 1px; width: 0px;"></div>
								</div>
								<div class="CodeMirror-scrollbar-filler" cm-not-content="true"></div>
								<div class="CodeMirror-gutter-filler" cm-not-content="true"></div>
								<div class="CodeMirror-scroll" tabindex="-1" draggable="false">
									<div class="CodeMirror-sizer"
										style="margin-left: 48px; margin-bottom: -10px; border-right-width: 20px; min-height: 359px; padding-right: 0px; padding-bottom: 0px;">
										<div style="position: relative; top: 0px;">
											<div class="CodeMirror-lines">
												<div style="position: relative; outline: none;">
													<div class="CodeMirror-measure">
														<pre>x</pre>
													</div>
													<div class="CodeMirror-measure"></div>
													<div style="position: relative; z-index: 1;"></div>
													<div class="CodeMirror-cursors">
														<div class="CodeMirror-cursor"
															style="left: 138px; top: 270px; height: 27px;">&nbsp;</div>
													</div>
													<div class="CodeMirror-code">
														<div style="position: relative;" class="">
															<div class="CodeMirror-gutter-wrapper"
																style="left: -48px;">
																<div class="CodeMirror-linenumber CodeMirror-gutter-elt"
																	style="left: 0px; width: 21px;">1</div>
															</div>
															<pre class=" CodeMirror-line ">
																<span style="padding-right: 0.1px;"><span
																	class="cm-variable"></span></span>
															</pre>
														</div>
														
													</div>
												</div>
											</div>
										</div>
									</div>
									<div
										style="position: absolute; height: 20px; width: 1px; border-bottom: 0px solid transparent; top: 359px;"></div>
									<div class="CodeMirror-gutters" style="height: 379px;">
										<div class="CodeMirror-gutter CodeMirror-linenumbers"
											style="width: 48px;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="gutter gutter-vertical"
						style="height: 14px; background-image: url(&quot;/assets/img-grippie_horizontal@2x-edd7280baf6e6e994910eaeec709f478621d19aa46e4868551b3fc70c30939da.png&quot;);"></div>
					<div class="output-section" id="tour6"
						style="height: calc(50% - 7px);">
						
						<div class="console tab-content">
							<div id="output" class="console-output tab-pane fade in active">
								<pre class="console-content">
									<div></div>
									<div class="console-heading">코드를 저장 하였습니다.</div>
								</pre>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="button-section">
				<div class="testcase-button">
				</div>
				<div class="func-buttons">
					 <a id=""
						class="btn btn-dark-teal" data-trigger="hover"
						data-toggle="popover" data-placement="top"
						data-content="제출하시면 기록이 됩니다."
						onclick="submitOnclick();"
						data-original-title="" title="">제출</a>


				</div>
			</div>





		</div>
	</div>


	<div class="modal fade" id="modal-dialog" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true"></div>
	<script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-72680702-5', 'auto', {'userId': 'G34814'});
        ga('send', 'pageview');

    </script>

	<script
		src="resources/common/program_files/application-0907e1e09d1c1249f269db1c8ff2cd3c7951dcb45cffd243d85e6140c5f97269.js"></script>
<script
		src="resources/common/program_files/programmers.js?ver=1 charset='utf-8'"></script>
	<script src="resources/common/program_files/all.js"
		type="text/javascript">
    cloudinary.setCloudName('eightcruz');
</script>

	<script src="resources/common/program_files/highlight.min.js"></script>
	<script src="resources/common/program_files/loader.js"
		type="text/javascript"></script>

	<script type="text/javascript">
    Rollbar.configure({
        payload: {
            
            
        }
    });
</script>



	<noscript>이 사이트의 기능을 모두 활용하기 위해서는 자바스크립트를 활성화 시킬 필요가 있습니다.
		&lt;a href="http://www.enable-javascript.com/ko/" target="_blank"&gt;
		브라우저에서 자바스크립트를 활성화하는 방법&lt;/a&gt;을 참고 하세요.</noscript>



</body>
</html>