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
			var data1 = "10";
			var num1 = parseInt(data1);
			console.log("num1:", num1);
			
			var data2 = "10.5";
			var num2 = parseFloat(data2);   //자스에서는 실수는 모두 float으로 표기 //자바는 float, double
			console.log("num2:", num2, ", 타입:", typeof(num2));
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam16_global_fun</div>
		  <div class="card-body"></div>
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>