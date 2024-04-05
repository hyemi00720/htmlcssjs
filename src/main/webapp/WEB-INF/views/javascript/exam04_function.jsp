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
			//--------------------------------------------------
			//함수 선언
			function fun1() {
				console.log("fun1 실행: ");
			}
			//함수 호출
			fun1(); //자스에서 변수 선언문에서는 ; 없어도 됨
			ver fun3 = fun1; 
			//함수 자체가 변수(객체)이기도 하므로 다른 함수의 변수에 함수(변수)의 번지값 대입 가능
			//java에서 메소드(like 함수)는 객체에 소속된 존재, 객체가 될 수는 없음
	 		//--------------------------------------------------	
	 		
	 		//함수 선언
	 		var fun2 = function() {
	 			console.log("fun2() 실행");
	 		}; //실행문일 경우에는 ; 필수
	 		//자스에서는 함수도 변수 //함수 선언시 함수 객체를 생성
			fun2();
	 		//---------------------------------------------------
	 		
	 		//화살표 함수 선언(arrow fucntion)선언
	 		//람다식
	 		var fun3 = () => console.log("fun3() 실행");
	 		//함수 호출
	 		fun3()
	 		//---------------------------------------------------
	 		
	 		//함수 대입과 호출
	 		var fun4 = fun3;
	 		fun4();
	 		//---------------------------------------------------
	 		//매개 변수가 있는 함수
	 		//매개 변수의 타입을 지정해야하는 java와 달리 타입 없이 넣어줌
	 		//java처럼 매개 변수를 꼭 다 넣어줄 필요도 없음
	 		function fun5(arg1, arg2=0) { //기본값을 매개변수 안에 바로 넣어줄 수 있음
	 			console.log("fun5() 실행");
	 			console.log("arg1:" , arg1);
				console.log("arg2:" , arg2);
			}
	 		fun5(10, "abc");
	 		fun5(10); //값을 따로 넣어주지 않을 경우 기본값이 리턴 //기본값도 없을 경우 undefinded
	 		//---------------------------------------------------
	 		var var6 = (arg1, arg2) => {
	 			console.log("fun6() 실행");
	 			console.log("arg1:" , arg1);
	 			console.log("arg2:" , arg2);
	 		}
	 		var6('abc', "def");
	 		//실행문이 하나일 경우 {} 생략 가능
	 		var var7 = (arg1) => console.log("arg1:", arg1);
	 		//매개변수가 하나일 경우 () 생략 가능
	 		var var8 = arg1 => console.log("arg1:", arg1);
	 		//함수 호출
	 		var var8('abc');
	 		//---------------------------------------------------
	 		//리턴값이 있는 함수
	 		function fun9(x, y) {
	 			let result = x + y;
	 			return result;
	 		}
	 		//매개변수 2개 ()생략 불가능 실행문 1개 {return }생략 가능
	 		//리턴값이 있는 함수라면 리턴값을 받을 변수가 있어야함 (ex result)
	 		//선언한 변수에 리턴값을 받음
	 		//변수값을 바꿀 일이 없으면 const 사용 좋음
	 		//변수값을 바꿀 일이 있으면 var
	 		const fun10 = (x, y) => { return x + y; };
	 		const fun11 = (x, y) => x + y;
	 		var result1 = fun9(10, 20);
	 		var result2 = fun10(10, 20);
	 		var result3 = fun11(10, 20);
	 		console.log("result1: ", result1);
	 		console.log("result2: ", result2);
	 		console.log("result3: ", result3);
	 		
	 	</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam04_function</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#"></a></li>
		  	</ul>
		</div>
	</body>
</html>