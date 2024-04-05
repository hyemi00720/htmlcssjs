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
			//정규 표현식 작성 방법
			// /^ ... $/ 시작과 끝을 명확하게 표기해서 정확한 값을 얻을 수 있음
			
			//전화번호 유효성 검사
			var tel = "012-1234-1234";
			const pattern = /^(010|011)-\d{3,4}-\d{4}$/;
			///(010|011)-\d{3,4}-\d{4}/ -> 처음과 끝이 표기가 안되어 있으므로 해당 패턴의 순서만 맞으면 앞이나 뒤에 다른 패턴이 추가되어도 true가 출력
			//"/(010|011)-\d{3,4}-\d{4}/" (잘못된 표기 방식) -> 패턴을 확인해야하는데 문자열로 인식해버림
			//(010|011) -> 010 011 둘 중 하나
			//d{3,4} -> 숫자 3~4개
			//d{4} -> 숫자 4개
			var result = pattern.test(tel); //선언 형식으로 입력되어 있을 시 true 아니라면 false;
			console.log(result);  //false
			
			
			//이메일 유효성 검사
			var email = "fall@naver.com";
			const emailPattern = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			//^\ -> 시작
			//w+ -> 숫자나 문자나 한개 이상
			//[\.-] -> \ 또는 . 가능
			console.log(emailPattern.test(email));
			//test 메소드를 사용해서 이메일이 패턴이 맞게 작성되어있는지 확인해서 논리값으로 출력 
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam18_regexp</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>