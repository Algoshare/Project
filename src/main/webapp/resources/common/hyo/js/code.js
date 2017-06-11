//q_no를 이용해서 코드를 제출한  사람들의 list를 출력
$('#codes').html('<table id="codes"><tr class="active"><th>#</th><th>제출자 성명</th><th>제출 일</th></tr>');
var query = {};
var q_no = $('#no').val();
$
		.ajax({
			type : "GET",
			url : "codeList?q_no="+q_no,
			dataType : "json",
			success : function(json) {
				var list = json.codeList;
				var listLen = list.length;
				for (var i = 0; i < listLen; i++) {
					$('#codes')
							.append(
									'<tr onclick="codelistOnClick({q_no:'
											+ list[i].q_no
											+ ',c_name:\''
											+ list[i].c_name
											+ '\',c_content:\''
											+ list[i].c_content
											+ '\',givedate:\''
											+ list[i].givedate
											+ '\',code_no:\''
											+ list[i].code_no
											+ '\'});"><td>'
											+ (i+1)
											+ '</td><td>'
											+ list[i].c_name
											+ '</td><td>'
											+ list[i].givedate
											+ '</td></tr></table>');

				}

				$('#codes').append('</table>');
			}
		});

//코드 list중 하나를 클릭하면 detail페이지에서 쓸 값을 뿌리는 함수
codelistOnClick = function(obj) {
	location.href = "selectCertainCode?q_no=" + obj['q_no'] + "&c_name=" + obj['c_name'] + "&c_content=" + obj['c_content'] + "&givedate=" + obj['givedate']+"&input=" + obj['input']+"&code_no=" + obj['code_no']+"";
}

//코드 생성
okonclick = function(no) {
	var input_name = $('#name').val();
	var input_content = $('#source').val().replace(/\n/g, "<br>");;
	var query = {
			q_no : no,
			c_name : input_name,
			c_content : input_content
	};
	$
			.ajax({
				type : "GET",
				url : "insertCode",
				data : query,
				dataType : "json",
				success : function(json) {
					location.href="main";
				}
			});	
}