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
			//산술 연산자
			var var1 = 2 *3;
			console.log("var1: ", var1);
			console.log("");
			
			//비교 연산자
			console.log(3 == "3");   //true   //== 값 비교
			console.log(3 === "3");  //false  //=== 타입 비교  (사용 권장)
			console.log(3 != "3");   //false  //!= 값 비교
			console.log(3 !== "3");  //true   //!== 타입 비교  (사용 권장)
			console.log("");
			//논리 연산자
			var var2 = true;
			var var3 = false;
			
			//앞이 false면 어차피 볼 것도 없이 fasle 앞이 true면 뒤에거 보고 판단
			console.log(var2 && var3);    //false //&&앞이 false 면 false 리턴
			console.log(var2 && "홍길동"); //홍길동   //&&앞이 true일 경우 &&뒤에 있는 변수 값이 출력
			console.log(var3 && "홍길동"); //false
			
			//앞이 true면 볼게 없으니까 true 앞이 false 면 뒤에거 보고 판단해야함
			console.log(var2 || var3);    //true //||앞이 true 면 true 리턴
			console.log(var2 || "홍길동"); //true //
			console.log(var3 || "홍길동"); //홍길동 //||앞이 false면 ||뒤 변수 값 출력 
		</script>	
	
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam03_operations</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>