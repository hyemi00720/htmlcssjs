<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Insert title here</title>
		
		<!-- bootstrap5를 위한 외부 라이브러리 설정-->
		<!-- 라이브러리 링크가 외부에 있는 경우의 태그 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- 라이브러리 링크가 내부(작업장소)에 있는 경우의 태그 -->
		<!-- <link href="https://htmlcssjs/resources/bootstrap-5.3.3-dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://htmlcssjs/resources/bootstrap-5.3.3-dist/css/bootstrap.bundle.min"></script> -->
	</head>
	<body>
		<h4>exam01_grid</h4>
		<hr/>
		<!-- container 박스 크기/p padding 여백 크기/ bg background 배경 색 warning 노랑 danger 빨강/-->
		<div class="container-fluid  bg-danger text-warning text-center">
		  <h1>My First Bootstrap Page</h1>
		  <p>Resize this responsive page to see the effect!</p>
		</div>
		<div class="container-fluid bg-warning">
		
		<!-- row는 12등분까지 가능 -->
		  <div class="row">
			<!-- col-sm-2  행이 small 사이즈일 경우 수평으로 뒤에 명시된 비율만큼 보여줌 small보다 작아지면 수직으로 바뀜 -->
		   
		   <!-- col-4 디바이스가 크기에 상관없이 계속 4  col = col-4 -->
		   <!-- col-md-2 디바이스 크기가 md로 들어오면 2등분 사용 -->
		    <div class="col-4 col-md-2">
		      <h3>Column 1</h3>
		      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
		      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
		    </div>
		     <!-- 디바이스 크기가 sm일 때는 4등분 사용 md일때는 8등분 사용-->
		    <div class="col-sm-4 col-md-8">
		      <h3>Column 2</h3>
		      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
		      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
		    </div>
		    <div class="col-sm-4 col-md-2">
		      <h3>Column 3</h3>
		      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
		      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
		    </div>
		  </div>
		</div>
	</body>
</html>