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
			//객체 생성
			const car = {};   //객체 자체의 번지가 바뀌는 것이 아니라 속성이 추가되는것
			//동적 속성 추가
			car.name = "그렌저";
			console.log(car);
			//동적 메소드 추가
			car.start = function() {
				console.log("시동을 겁니다.");
			};
			console.log(car);
			car.start();
			car["start"]();  //메소드도 멤버에 포함되기 때문에 안에 넣어서 호출 가능
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam06_dynamic_field_method</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>