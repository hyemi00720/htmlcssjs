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
			//JSON이란 
			//JavaScript Object Notation(자바스크립트 객체 표기)
			//{"속성명":값, "속성명":값, ...}
			//반드시 속성명은 큰따옴표로 감싸야 함
			
			//값의 타입
			//숫자일 경우 : {"price": 3000}, {"tall": 170.5}
			//문자열일 경우 : {"name": "홍길동"} -> 문자를 반드시 큰따옴표로 감싸기
			//객체일 경우 : {"data": {"bno":1, "title":"제목"}} -> 객체일 경우 중괄호 안에 감싸기
			//배열일 경우 : {"hobby" ["음악", "게임", "여행"]} -> 배열일 경우 대괄호 안에 감싸기
			
			//용도 : 프론트엔드와 백엔드 사이의 데이터 전달을 위해서 사용 (서버<->클라이언트)
			
			//자바스크립트 객체와 JSON은 다른 것 / JSON은 문자열
			
			//자바스크립트 객체를 JSON으로 변환시키기--------------
			const person = {
				name: "홍길동",
				nation: '한국',
				age: 25,
				family: {father:'홍삼원', mother:"김자바"},
				hobby: ["영화", '게임']
			};
			console.log(person); //객체 출력
			
		 	//Jason 문법 사용
		 	const strJson = JSON.stringify(person);
			console.log(strJson);  //문자열 출력 
			//jason은 작은따옴표 쓰면 안됨 작은 따옴표 쓰면 큰따옴표로 변환
		 	
			//JSON 문자열을 자바스크립트로 변환시키기
			const person2 = JSON.parse(strJson);
			console.log(person2);
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam17_json</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>