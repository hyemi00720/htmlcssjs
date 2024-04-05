<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Insert title here</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
		<script>
			function fun1() {
				//ViewPort의 크기 얻기
				window.console.log("viewport width:", window.innerWidth); 
				console.log("viewport height:", window.innerHeight);  
				//window 생략 가능
			}
			
			function fun2() {
				window.open(
						"https://www.w3schools.com", 
						// 어떤 사이트
						"mywin", 
						"top=100,left=500,width=350,height=500");
						//팝업이 윈도우에 뜨는 위치(윈도우창 좌상단부터 제시된 공간만큼 띄움)
			}
			
			function fun3() {
				window.location.href="/htmlcssjs"; 
				//"/htmlcssjs" 로 이동
				//window 생략 가능
			}
			
			function fun4() {
				window.history.back();
				//윈도우 페이지 뒤로가기
			}
			
			function fun5() {
				window.history.forward();
				//윈도우 페이지 앞으로 가기
			}
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam01_</div>
		  <div class="card-body">
		  	<!-- 
		  	[BOM과 DOM의 차이]
		  	
		  	1.BOM(Browser Object Model)
		  		브라우저의 정보 또는 제어를 위해서 사용하는 객체 모델
		  	2.DOM(Document Object Model)
		  		HTML Document 내의 정보 또는 제어를 위해서 사용하는 객체 모델
		  	 -->
		  
		  	<button onclick="fun1()">window 객체 정보 얻기</button>
		  	<button onclick="fun2()">window 띄우기(팝업)</button>
		  	<hr/>
		  	
		  	<button class="btn btn-info btn-sm" onclick="fun3()">URL변경하기</button>
		  	<hr/>
		  		
		  	<button class="btn btn-info btn-sm" onclick="fun4()">이전</button>
		  	<button class="btn btn-info btn-sm" onclick="fun5()">다음</button>
		  	
		  </div>
		</div>
	</body>
</html>