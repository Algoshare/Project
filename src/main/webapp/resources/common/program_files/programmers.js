saveOnclick = function() {
	alert("저장 되었습니다")

}
submitOnclick = function(no) {
//	
//	alert($('#code').val());
	var input_content = $('#code').val().replace(/\n/g, "<br>");
	var query = {
		q_no : no,
		c_content : input_content
	};
	$
			.ajax({
				type : "GET",
				url : "insertCode",
				data : query,
				dataType : "json",
				success : function(json) {
					location.href="selectCertainQuestion?q_no="+no;	
				}
			});
}

