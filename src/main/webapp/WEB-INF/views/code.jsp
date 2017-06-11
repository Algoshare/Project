<!-- 코드 작성 form -->

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="ko" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="ko" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="ko">
<!--<![endif]-->
<head>
<title>코드 입력기</title>
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
<script src="resources/common/hyo/js/jquery.min.js"></sript>
</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-10874097-3', 'auto');
  ga('send', 'pageview');

</script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.24.2/codemirror.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.24.2/addon/edit/matchbrackets.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.24.2/addon/edit/closebrackets.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.24.2/addon/mode/loadmode.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.24.2/mode/meta.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.24.2/codemirror.min.css">
<link type="text/css" rel="stylesheet"
	href="https://ddo7jzca0m2vt.cloudfront.net/css/codemirror-style.css">
<style type="text/css">
.CodeMirror {
	height: auto;
}

.CodeMirror-scroll {
	min-height: 300px;
	overflow-y: hidden;
	overflow-x: auto;
}

#source {
	display: none;
}

.lint-error {
	font-size: 70%;
	background: #ffa;
	color: #a00;
	padding: 2px 5px 3px;
}

.lint-error-icon {
	color: white;
	background-color: red;
	font-weight: bold;
	border-radius: 50%;
	padding: 0 3px;
	margin-right: 7px;
}

.lint-warning-icon {
	color: white;
	background-color: orange;
	font-weight: bold;
	border-radius: 50%;
	padding: 0 3px;
	margin-right: 7px;
}
</style>

<link type="text/css" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.6.2/chosen.min.css">
<script async
	src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-8806842758252812",
    enable_page_level_ads: true
  });
</script>
</head>
<%
	String q_no = request.getParameter("q_no");
%>
<body>

	<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
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
			<h1>&nbsp;코드 입력</h1>
		</div>

		<div class="col-xs-3">
			<input type="text" size="10" class="form-control" id="name"
				placeholder="제출자 성명" align="center"">
		</div>
		<br>
		<br>
		<br>
	</div>
	<div class="wrap">
		<div class="form-group">
			<label class="col-md-2 control-label" for="language">언어</label>
			<div class="col-md-10" style="margin-top: 7px;">
				<select id="language" name="language" onchange="changeLanguage()"
					data-placeholder="언어를 선택해 주세요." class="form-control"
					data-no_results_text="없는 언어 입니다.">
					<option value="0">C</option>
					<option value="1">C++</option>
					<option value="3" selected>Java</option>
					<option value="6">Python</option>
					<option value="62">C# 4.0</option>
					<option value="17">node.js</option>
					<option value="7">PHP</option>
				</select>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<div class="wrap">
		<div class="form-group">
			<label class="col-md-2 control-label" for="source">소스 코드</label>
			<div class="col-md-10">
				<textarea id="source" name="source" autofocus="autofocus"></textarea>
			</div>
		</div>
		<div class="wrap" align="right">
			<p>
				<button type="button" class="btn btn-primary"
					onclick="okonclick(<%=q_no%>);">코드 제출</button>
		</div>
		<input type="hidden" name="csrf_key"
			value="5715ea3cf54b0bdc9371dc178ba36ce7">
		<div class="form-group">
			<div class="col-md-offset-2 col-md-10"></div>
		</div>
	</div>
	<div style="width: 100%;">

		<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
	</div>

	<script>
window.fbAsyncInit = function() {
  FB.init({
    appId      : '322026491226049',
    cookie     : true,
    xfbml      : true,
    version    : 'v2.8'
});
};
(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = "//connect.facebook.net/ko_KR/sdk.js";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
	<!-- Facebook Pixel Code -->
	<script>
!function(f,b,e,v,n,t,s){ if(f.fbq)return;n=f.fbq=function(){ n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments) };if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s) }(window,
document,'script','//connect.facebook.net/en_US/fbevents.js');

fbq('init', '1670563073163149');
fbq('track', 'PageView');
</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=1670563073163149&ev=PageView&noscript=1" />
	</noscript>
	<!-- End Facebook Pixel Code -->

	<script type="text/javascript">
  var _gauges = _gauges || [];
  (function() {
    var t   = document.createElement('script');
    t.type  = 'text/javascript';
    t.async = true;
    t.id    = 'gauges-tracker';
    t.setAttribute('data-site-id', '5036d6eaf5a1f55338000016');
    t.src = '//secure.gaug.es/track.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(t, s);
  })();
</script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-migrate-3.0.0.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://ddo7jzca0m2vt.cloudfront.net/unify/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="https://ddo7jzca0m2vt.cloudfront.net/bower/retina.js/js/retina.js"></script>
	<script type="text/javascript"
		src="https://ddo7jzca0m2vt.cloudfront.net/unify/js/app.js"></script>
	<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
	<!--[if lt IE 9]>
    <script src="https://ddo7jzca0m2vt.cloudfront.net/unify/plugins/respond.js"></script>
    <script src="https://ddo7jzca0m2vt.cloudfront.net/unify/plugins/html5shiv.js"></script>
    <script src="https://ddo7jzca0m2vt.cloudfront.net/unify/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->


	<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
	<script src="https://apis.google.com/js/plusone.js">
window.___gcfg = { lang: 'ko' }
</script>

	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/pace/1.0.2/pace.min.js"></script>

	<script type="text/javascript">
var colors = ["red","orange","yellow","green","blue","navy","purple"];
var cnt = 0;
$(document).ready(function() {
	setInterval(function() {
		cnt += 1;
		var n = colors.length;
		$(".august14").each(function(index) {
  		var len = parseInt($(this).attr('data-length'));
			for (var i=0; i<len; i++) {
				$(this).children("span").eq(i).css('color',colors[(cnt+i)%n]);
			}
		});
	}, 100);
});
</script>

	<script src="//js.pusher.com/3.2/pusher.min.js"></script>


	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-noty/2.3.8/packaged/jquery.noty.packaged.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-noty/2.3.8/themes/bootstrap.js"></script>
	<script type="text/x-mathjax-config">
MathJax.Hub.Config({
	showProcessingMessages: false,
	messageStyle: "none",
	extensions: ["tex2jax.js"],
	jax: ["input/TeX", "output/SVG"],
	tex2jax: {
		inlineMath: [ ["\\(","\\)"] ],
		displayMath: [ ["\\[","\\]"] ],
		processEscapes: true,
		preview: ["수식"],
		ignoreClass: "no-mathjax|redactor-editor"
	},
	
	"SVG": { 
		availableFonts: ["TeX", "STIX"], 
		linebreaks: { 
			automatic: true, 
			width: "container" 
		},
		preferredFont: "TeX",
		showMathMenu: false,
		scale: 90,
		undefinedFamily: "'Open Sans','Helvetica Neue', Helvetica, Arial, 'Apple SD Gothic Neo','Noto Sans CJK KR', 'Noto Sans KR', '나눔바른고딕','나눔고딕','NanumGothic','맑은고딕','Malgun Gothic', 'Nanum Gothic', sans-serif",
	},
	
	TeX: { equationNumbers: { autoNumber: "AMS" } } ,
});
</script>
	<script type="text/javascript"
		src="//cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_SVG"></script>

	<script type="text/javascript"
		src="https://ddo7jzca0m2vt.cloudfront.net/js/lecture-request.js"></script>
	<script type="text/javascript">var myTextArea = document.getElementById("source");CodeMirror.modeURL = "https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.24.2/mode/%N/%N.js";var myCodeMirror = CodeMirror.fromTextArea(myTextArea,{lineNumbers: true,matchBrackets: true,indentUnit: 4,autoCloseBrackets: true,});myCodeMirror.setOption("extraKeys", {Tab: function(cm) {var spaces = Array(cm.getOption("indentUnit") + 1).join(" ");cm.replaceSelection(spaces);},'Ctrl-Enter': function() {$('form.submit-form').submit();},'Cmd-Enter': function() {$('form.submit-form').submit();},});if (document.getElementById("language").value == 58) {myCodeMirror.setOption("indentUnit",0);}function language_id_to_mime(now) {if (now == 0 || now == 59 || now == 75 || now == 77) {return "text/x-csrc";} else if (now == 1 || now == 41 || now == 49 || now == 60 || now == 88 || now == 66 || now == 67) {return "text/x-c++src";} else if (now == 3) {return "text/x-java";} else if (now == 9 || now == 62) {return "text/x-csharp";} else if (now == 4 || now == 65 || now == 68) {return "text/x-ruby";} else if (now == 8 || now == 42) {return "text/x-perl";} else if (now == 6 || now == 28 || now == 32 || now == 73) {return "text/x-python";} else if (now == 5) {return "text/x-sh";} else if (now == 2) {return "text/x-pascal";} else if (now == 7) {return "text/x-php";} else if (now == 12) {return "text/x-go";} else if (now == 14) {return "text/x-scheme";} else if (now == 16) {return "text/x-lua";} else if (now == 17 || now == 34 || now == 38) {return "text/javascript";} else if (now == 18) {return "text/x-coffeescript";} else if (now == 20 || now == 63) {return "text/x-vb";} else if (now == 22) {return "text/x-ocaml";} else if (now == 37) {return "text/x-fsharp";} else if (now == 15) {return "text/x-scala";} else if (now == 33) {return "text/x-clojure";} else if (now == 29) {return "text/x-d";} else if (now == 25) {return "text/x-groovy";} else if (now == 26) {return "text/x-tcl";} else if (now == 44) {return "text/x-rustsrc";} else if (now == 13) {return "text/x-fortran";} else if (now == 10 || now == 64) {return "text/x-objectivec";} else if (now == 11) {return "text/x-haskell";} else if (now == 30) {return "text/x-common-lisp";} else if (now == 31) {return "text/x-erlang";} else if (now == 35) {return "text/x-cobol";} else if (now == 36) {return "text/x-stsrc";} else if (now == 45) {return "application/dart";} else if (now == 57) {return "text/x-julia";} else if (now == 23) {return "text/x-brainfuck";} else if (now == 72) {return "text/x-rsrc";} else if (now == 74) {return "text/x-swift";} else if (now == 69) {return "text/x-kotlin";} else if (now == 76) {return "text/x-ceylon";} else if (now == 81) {return "text/x-haxe";}return "text/plain";}function changeLanguage() {var now = document.getElementById("language").value;var val = language_id_to_mime(now);if (now == 58) {myCodeMirror.setOption("indentUnit",0);} else {myCodeMirror.setOption("indentUnit",4);}var mode, spec;var info = CodeMirror.findModeByMIME(val);if (info) {mode = info.mode;spec = val;}if (mode) {myCodeMirror.setOption("mode", spec);CodeMirror.autoLoadMode(myCodeMirror, mode);}}changeLanguage();</script>
	<script>
</script>



	<script>
	$(document).ready(function() {
		$(".chosen-select").chosen();
	});
</script>

	<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","licenseKey":"f27ac3bf9b","applicationID":"16313868","transactionName":"ZgNRYhZVVhIDBxcMW19JZkQNG0sUAAkKEURQAVYYFFxI","queueTime":0,"applicationTime":82,"atts":"SkRGFF5PRU1ABUFfT0wb","errorBeacon":"bam.nr-data.net","agent":""}</script>
	<script src="resources/common/hyo/js/jquery.imagesloaded.js"></script>
	<script src="resources/common/hyo/js/jquery.wookmark.js"></script>
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
<script src="resources/common/hyo/js/code.js?ver=2 charset='utf-8'"></script>
</html>
