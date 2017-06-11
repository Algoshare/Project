//code_no를 사용해서 댓글의 리스트를 출력
$('#comments').html('<table id="comments"><tr class="active"><th>#</th><th>이름</th><th>댓글 내용</th></tr>');
var query = {};
var code_no = $('#no').val();
$
		.ajax({
			type : "GET",
			url : "commentList?code_no="+code_no,
			dataType : "json",
			success : function(json) {
				var list = json.commentList;
				var listLen = list.length;
				for (var i = 0; i < listLen; i++) {
					$('#comments')
							.append(
									'<tr><td>'
											+ (i+1)
											+ '</td><td>'
											+ list[i].comment_name
											+ '</td><td>'
											+ list[i].comment
											+ '</td></tr></table>');

				}

				$('#comments').append('</table>');
			}
		});

//댓글 입력
okcommentonclick = function(no) {
	var input_name = $('#comment_name').val();
	var input_content = $('#comment').val().replace(/\n/g, "<br>");;
	var query = {
			code_no : no,
			comment_name : input_name,
			comment : input_content
	};
	$
			.ajax({
				type : "GET",
				url : "insertComment",
				data : query,
				dataType : "json",
				success : function(json) {
					location.reload();
				}
			});	
}