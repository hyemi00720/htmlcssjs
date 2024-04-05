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
			//자바의 String 메소드처럼 자바스크립트의 String 에서도 비슷한 메소드들을 사용 할 수 있음
			var data1 = "가나다라마바";
			var data2 = "123456-7890123";
			console.log("전체 문자수: ", data1.length);           //14
			console.log("성별 숫자: ", data2.charAt(6));         //1
			console.log("포함 여부:", data2.includes("567"));    //true //java의 contain메소드
			console.log("포함 여부:", data2.includes("5678"));   //false
			console.log("포함 여부:", data2.indexOf("7890123")); //7
			console.log("포함 여부:", data2.indexOf("12345678"));//-1
			console.log("추출하기:", data2.slice(0, 6));        //123456
			//slice(start, end); start 인덱스부터 end 인덱스 전까지 추출
			//java의 substring() 메소드와 같음
			console.log("추출하기:", data2.slice(7));           //7890123
			//slice(index); index 인덱스부터 끝까지 추출
			console.log("추출하기:", data2.substring(0, 6));       //123456
			//substring(start, end); start 인덱스부터 end 인덱스 전까지 추출
			//slice(start, end); 와 결과가 같다
			console.log("추출하기:", data2.substring(7));          //7890123
			//substring(index); index 인덱스부터 끝까지 추출
			//slice(index);와 결과가 같다
			console.log("토큰배열:", data2.split("-"));         //['123456', '7890123']
			console.log("추출하기:", data2.substr(0, 6));       //123456
			//substr(start, 개수); start 인덱스부터 개수만큼 추출
			console.log("추출하기:", data2.substr(7));          //7890123
			//substr(index, 개수); index 인덱스부터 끝까지 추출
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam13_string</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>