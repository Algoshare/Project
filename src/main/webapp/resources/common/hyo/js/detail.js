//방 삭제 함수
deleteonclick = function(no) {
	location.href = "deleteRoom?room_no=" + no + "";
}

//room_no를 이용해서 그 방의 문제 list를 출력
$('#questions').html('<table id="questions"><tr class="active"><th>#</th><th>문제 이름</th><th>문제 마감일</th></tr>');
var no = $('#no').val();
var query = {
	room_no : no	
};
$
		.ajax({
			type : "GET",
			url : "questionList",
			data : query,
			dataType : "json",
			success : function(json) {
				
				var list = json.questionList;
				var listLen = list.length;
				for (var i = 0; i < listLen; i++) {
					var re = list[i].q_content.replace(/"/gi, '&quot;');
					re = re.replace(/\0/gi, '&nbsp;');
					re = re.replace(/\t/gi, '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
		               $('#questions')
		                     .append(
		                           '<tr onclick="questionlistOnClick({q_no:'
		                                 + list[i].q_no
		                                 + ',q_name:\''
		                                 + list[i].q_name
		                                 + '\',q_content:\''
		                                 + re
		                                 + '\',due:\''
		                                 + list[i].due
		                                 + '\',input:\''
		                                 + list[i].input
		                                 + '\',output:\''
		                                 + list[i].output
		                                 + '\',room_no:\''
		                                 + list[i].room_no
		                                 + '\'});"><td>'
		                                 + (i+1)
		                                 + '</td><td>'
		                                 + list[i].q_name
		                                 + '</td><td>'
		                                 + list[i].due
		                                 + '</td></tr></table>');

		            }
				
				$('#questions').append('</table>');
			}
		});

//문제 클릭시 그 값을 detail페이지로 뿌리는 함수
questionlistOnClick = function(obj) {
	alert(obj['q_content']);
	location.href = "selectCertainQuestion?q_no=" + obj['q_no'] + "&q_name=" + obj['q_name'] + "&q_content=" + obj['q_content'] + "&due=" + obj['due']+"&input=" + obj['input']+"&output=" + obj['output']+"&room_no=" + obj['room_no']+"";
}

readRoom = function(){
	var input_no = $('#room_no').val();
	var input_name = $('#name').val();
	var input_content = $('#content').val();
	var query = {
			room_no : input_no,
			name : input_name,
			content : input_content
	};
	$
			.ajax({
				type : "GET",
				url : "readRoom",
				data : query,
				dataType : "json",
				success : function(json) {
					location.reload();
				}
			});	
	
}

