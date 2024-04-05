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
			//객체 표기법 {}
			var var1 = 3;           //number
			let var2 = "abc";		//string	
			const var3 = () => {};	//function
			var var4 = {};			//object  //java에서는 {} 배열이지만 자스에서는 객체
			var var5 = [];			//object(배열)
			console.log("var1의 타입: " + typeof(var1));
			console.log("var2의 타입: ", typeof(var2));
			console.log("var3의 타입: ", typeof(var3));
			console.log("var4의 타입: ", typeof(var4));
			console.log("var5의 타입: ", typeof(var5));
			console.log("");
			
			//객체 생성
			var car = {
				//필드(속성)
				company: "현대자동차",
				name: "그렌저",
				price: 50000000   //마지막에는 ,없어도 됨
				
				//메소드 //객체가 실행하는 기능 //함수는 객체와 상관없이 단독적으로 실행하는 것
			};
			//필드(속성)값 읽기
			console.log(car.company);
			console.log(car.name);
			console.log(car.price);
			console.log(car["company"]);  //[]안에 변수가 와도 되고 변수의 값이 와도 됨
			console.log(car["name"]);
			console.log(car["price"]);
			console.log("");
			
			//필드(속성) 값 변경
			car.company = "포르쉐";
			car["name"] = "911";
			console.log(car.company);
			console.log(car["name"]);
			console.log("");
			
			//객체의 메소드 정의
			car = {
				//필드(속성)
				company: "현대자동차",
				name: "그렌저",
				price: 50000000,
				
				//메소드
				run: function() {       //전통적인 메소드 표현 문법
			//	run => function() //쓰지x 자신을 지칭할 때 this 사용 불가능
					//자신의 필드값을 읽을 때는 this 필수
					this.setSpeed(60);
					console.log(this.company + "의" + 
								this.name + "가" +
								this.speed + "로 달립니다.")
				},
				
			/* 	run() {					//위의 표현과 같은 결과(ES6부터 사용 가능해짐)
					this.setSpeed(60);		
					console.log(this.company + "의" + 
								this.name + "가" +
								this.speed + "로 달립니다.")
				}, */
				
				/* 	//자신의 필드(속성)값에 저장하기 위해 this.
				setSpeed: function(speed) {
					this.speed = speed;
				}, */     
				
				setSpeed(speed) {       //위의 표현과 같은 결과
					this.speed = speed;
				},
				
				/* toString: function() {
					return this.company + "-" + name; //리턴값이 있음
				}, */
				
				toString() {    		//위의 표현과 같은 결과
					return this.company + "-" + this.name; //리턴값이 있음
				},
				
				sound1() {
					console.log(this.name + "빵빵");
				},
			
				sound2: () => {
					//화살표 함수는 this가 객체 자신이 아니라, window 객체를 참조
					//그렇기 때문에 this를 사용하는 코드를 작성하면 안됨
					console.log("빵빵");
				}
			};
			//메소드 호출
			car.run(); //리턴값이 없으므로 메소드 호출만 함
			var info = car.toString(); //리턴값이 있는 메소드는 호출 후 변수에 리턴값을 담는다
			console.log("info: ", info)
			car.sound1();
			car.sound2();
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam05_object</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>