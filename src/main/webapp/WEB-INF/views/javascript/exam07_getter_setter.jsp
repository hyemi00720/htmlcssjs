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
	
		<script type="text/javascript">
			const car = {
					name: "그렌저",
					price: 5000,
					speed: 100, //mile
					start: function() {
						console.log("시동을 겁니다.");
					},
					//Setter(메소드) 선언 //외부값을 필드값으로 저장
					setkmSpeed() {
						this.speed = meter/0.621371;
					},
					//Getter(메소드) 선언 //필드값을 리턴
					//Setter Gatter 메소드명은 같게 선언
					getkmSpeed() {   
						//mile -> km
						return this.speed * 0.621371;
					},
			};
			//Setter 호출
			car.kmSpeed = 60; //60이 매개값으로 들어옴 
			//속성에 값을 대입하는 것이 아닌 setter 호출
			
			//Getter 호출
			console.log("현재속도: ", car.kmSpeed)
			//속성값을 읽는 것이 아닌 getter 호출
			
			//Setter나 Getter 메소드를 호출하는 표현이 마치 속성을 사용하는 것처럼 보임
			//추가적인 연산 과정을 보여주고 싶지 않을 때 getter setter 사용
			
		//	car.speed = 10 / 0.621371; //속성값을 km에서 mile로 바꾸는 연산
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam07_getter_setter</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>