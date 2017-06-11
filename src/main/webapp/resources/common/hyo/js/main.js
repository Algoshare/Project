//main.js
$('#tiles').html('<ul id="tiles">');
var query = {};
$
		.ajax({
			type : "GET",
			url : "roomList",
			dataType : "json",
			success : function(json) {
				$('#tiles').empty();
				var list = json.roomList;
				var listLen = list.length;
				for (var i = 0; i < listLen; i++) {
					
					$('#tiles')
							.append(
									'<li onclick="listOnClick({room_no:'
											+ list[i].room_no
											+ ',name:\''
											+ list[i].name
											+ '\',content:\''
											+ list[i].content
											+ '\',img:\''
											+ list[i].img
											+ '\'});"><img src="resources/common/hyo/images/'
											+ list[i].img
											+ '" width="282" height="118"><div class="post-info"><div class="post-basic-info"><h3>'
											+ list[i].name
											+ '</h3><span><a href="#"><label> </label>Algorithm</a></span><p>'
											+ list[i].content
											+ '</p></div></div></li>');

				}
				$('#tiles').append('</ul>');
	
			}
		});


//방 list 중 하나를 클릭하면 실행되는 함수
listOnClick = function(obj) {
	location.href = "selectCertainRoom?room_no=" + obj['room_no'] + "&name=" + obj['name'] + "&content=" + obj['content'] + "&img=" + obj['img']+"";
}