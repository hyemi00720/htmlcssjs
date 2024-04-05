<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Insert title here</title>
				
		<!-- Bootstrap5 외부 라이브러리 설정 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- jQuery 외부 라이브러리 설정 -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<!-- 사용자 정의 자바스크립트 -->
		<script>
		
			console.log("해석 전:", $("img").length);	
			//실행하는 시점에서 아직 해석이 안된 상태 //0
		
			function loadComplete() {
			//모든 자원이 다운로드 완료되었을 때 실행하는 함수
				console.log("모든 자원이 다운로드 완료됨");
				console.log("다운로드 후:", $("img").length);	
			}
			
			$(document).ready(function() {
				//도큐먼트 객체를 제이쿼리 객체로 랩핑(바꿔줌)
				console.log("HTML 해석이 완료됨");
				//브라우저 해석 시간과 모든 자료 다운 완료 시간이 다름
				//해석이 먼저 끝나고 다운이 훨씬 더 늦게 끝남
				console.log("해석 후:", $("img").length);	
			});		
			
			$function() { 
				console.log("HTML 해석이 완료됨");
	
				console.log("해석 후:", $("img").length);	
			});		
			
			
			//ready 이벤트가 실행되면 자동으로 실행
			//함수의 실행문 선언 순서는 상관없음
			//실질적인 실행 순서가 중요 
			//다운로드 함수가 먼저 선언되고 해석 함수가 뒤에 선언되도 해석 -> 다운로드 순서로 진행됨
			//따라서 자료의 상태를
		</script>
		
	</head>
	<body onload="loadComplete()">
		<div class="card">
		  <div class="card-header">exam05_jquery_ready_event</div>
		  <div class="card-body">
			<img src="/htmlcssjs/resources/images/photos/photo1.jpg" width="50" height="50" class="me-2"/>
			<img src="/htmlcssjs/resources/images/photos/photo2.jpg" width="50" height="50" class="me-2"/>
			<img src="/htmlcssjs/resources/images/photos/photo3.jpg" width="50" height="50" class="me-2"/>
			<img src="/htmlcssjs/resources/images/photos/photo4.jpg" width="50" height="50" class="me-2"/>
			<img src="/htmlcssjs/resources/images/photos/photo5.jpg" width="50" height="50" class="me-2"/>
			<img src="/htmlcssjs/resources/images/photos/photo6.jpg" width="50" height="50" class="me-2"/>
			<img src="/htmlcssjs/resources/images/photos/photo7.jpg" width="50" height="50" class="me-2"/>
			<img src="/htmlcssjs/resources/images/photos/photo8.jpg" width="50" height="50" class="me-2"/>
		  </div>
		</div>
	</body>
</html>