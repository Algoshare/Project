
//$('#tiles').empty();
//$('#tiles').append('<li><img src="resources/common/hyo/images/tmon.png"></li>');
//alert($('#main').html());
//main.js
//모든 방 리스트
//$('#tiles').html('<ul id="tiles">');

var query = {};
$
		.ajax({
			type : "GET",
			url : "roomList",
			dataType : "json",
			success : function(json) {
				var list = json.roomList;
				var listLen = list.length;
				$("#tiles").empty();
					for (var i = 0; i < listLen; i++) {
						var text = '<li onclick="listOnClick({room_no:'+ list[i].room_no
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
							+ '</p></div></div></li>';
					$('#tiles').append(text);
				}
					(function($) {
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
					})(jQuery);				
			}
		});
//방 list 중 하나를 클릭하면 실행되는 함수
listOnClick = function(obj) {
	location.href = "selectCertainRoom?room_no=" + obj['room_no'] + "&name=" + obj['name'] + "&content=" + obj['content'] + "&img=" + obj['img']+"";
}