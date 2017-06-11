//방만들기 함수
okonclick = function() {
	var input_name = $('#name').val();
	var input_content = $('#content').val();
	var query = {
			name : input_name,
			content : input_content
	};
	$
			.ajax({
				type : "GET",
				url : "insertRoom",
				data : query,
				dataType : "json",
				success : function(json) {
					location.href="main";
				}
			});	
}

//문제만들기 함수
questionokonclick = function(no) {
	alert("여기 question onclick!");
	var input_name = $('#name').val();
	var input_content = $('#content').val().replace(/\n/g, "<br>");
	var input_in = $('#input').val().replace(/\n/g, "<br>");
	var input_out = $('#output').val().replace(/\n/g, "<br>");
	var input_due = $('#due').val();
	alert(input_content);
	var query = {
			room_no : no,
			q_name : input_name,
			q_content : input_content,
			input : input_in,
			output : input_out,
			due : input_due
	};
	$
			.ajax({
				type : "GET",
				url : "insertQuestion",
				data : query,
				dataType : "json",
				success : function(json) {
					location.href="main";
				}
			});	
}

//방 수정 함수
updateonclick = function(no) {
	var input_name = $('#name').val();
	var input_content = $('#content').val();
	var query = {
			room_no : no,
			name : input_name,
			content : input_content
	};
	$
			.ajax({
				type : "GET",
				url : "updateRoom",
				data : query,
				dataType : "json",
				success : function(json) {
					location.href="main";
				}
			});	
}

//문제 수정 함수
questionupdateonclick = function(no) {
	var input_name = $('#name').val();
	var input_content = $('#content').val().replace(/\n/g, "<br>");
	var input_in = $('#input').val().replace(/\n/g, "<br>");
	var input_out = $('#output').val().replace(/\n/g, "<br>");
	var input_due = $('#due').val();
	var query = {
			q_no : no,
			q_name : input_name,
			q_content : input_content,
			input : input_in,
			output : input_out,
			due : input_due
	};
	$
			.ajax({
				type : "GET",
				url : "updateQuestion",
				data : query,
				dataType : "json",
				success : function(json) {
					location.href="main";
				}
			});	
}
//문제 지우기 함수
deletequestiononclick = function(no) {
	location.href = "deleteQuestion?q_no=" + no + "";
}