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
			//객체를 초기화하는 생성자 정의
			//일반 함수와는 차이가 있음
			function Car() {
				this.name = "그렌저";
				//일반 함수와는 형태부터 다름 var name = "그렌저"; 
				this.price = 50000000;
				this.start = function() {
					console.log("시동을 겁니다.");
				};
			}
			
			//생성자 
			function Person(name, age) {
				this.name = name;
				this.age = age;
			}
			
			//객체 생성
			const myCar = new Car();
			//속성과 메소드 호출
			console.log(myCar.name);
			console.log(myCar.price);
			myCar.start();
			
			//객체 생성
			const my = new Person("홍길동", 30);
			const you = new Person("감자바", 27);
			console.log(my);
			console.log(you);
			
			//객체를 생성하는 2가지 방법
			//1.{}로 생성하기
			//이것저것 선언 필요없이 바로바로 객체 생성이 가능 //객체 생성 때 마다 중복 코드를 작성하게 됨
			//2.생성자로 생성하기
			//생성자만 하나 만들어 놓으면 개별적으로 만들 필요없이 new를 통해 객체를 생성할 수 있음
		
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam08_function_constructor</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>