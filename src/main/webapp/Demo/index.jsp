<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("button").click(function() {
			if (this.id == 'btn1')
				document.location.href = '/controller/storeDetail.do';
			else if (this.id == 'btn2')
				document.location.href = '/controller/bookStore.do';
			else if (this.id == 'btn3')
				document.location.href = '/controller/review.do';
			else if (this.id == 'btn5')
				document.location.href = '/controller/limit.do';
			else if (this.id == 'btn6')
				document.location.href = '/controller/searchResult.do';
			else if (this.id == 'btn7')
				document.location.href = '/controller/main.do';
		});
	});
</script>
</head>
<body>

	<button id="btn1">음식점 상세 페이지</button>
	<button id="btn2">예약 페이지</button>
	<button id="btn3">리뷰 페이지</button>
	<button id="btn4">개인정보</button>
	
	<button id="btn5">무한 페이지</button>
	<button id="btn6">검색결과 페이지</button>
	<button id="btn7">메인 페이지</button>
</body>

</html>