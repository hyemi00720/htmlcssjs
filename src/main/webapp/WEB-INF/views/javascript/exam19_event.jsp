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
			function fun1() {
				console.log(event.target); //이벤트가 발생된 속성의 위치를 출력 //어떤 태그에서 이벤트 설정을 해줬는지
				console.log("버튼1이 클릭됨");
			}
			function fun2() {
				console.log(event.target);
				console.log("버튼2가 클릭됨");
				//<a> 엘리먼트가 기본적으로 가지고 있는 액션을 막음
				event.preventDefault();
				//이벤트핸들러는 실행되긴하지만 액션을 취하지는 않음
			}
			function fun3() {
				console.log(event.target);
				console.log("사용자가 입력한 내용을 검사합니다.(유효성 검사)");
				//<form> 엘리먼트가 기본적으로 가지고 있는 액션을 막음
				event.preventDefault();
			}
			function fun4() {
				console.log("이메일 내용이 변경되었습니다.");
				console.log(event.target.value);
				//입력 내용을 파악하는 이벤트 함수
			}
			function fun5() {
				console.log("패스워드 내용이 변경되었습니다.");
				console.log(event.target.value);
			}
			function fun6() {
				console.log("체크박스 상태가 변경되었습니다.");
				if(event.target.checked) {
					console.log("체크됨");
				}else {
					console.log("체크해제됨");
				}
			}
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam19_event</div>
		  <div class="card-body">
		  	<button onclick="fun1()" class="btn btn-info btn-sm">버튼1</button>
		  	<a href="/htmlcssjs" onclick="fun2()" class="btn btn-info btn-sm">버튼2</a>
		  	<!-- 원래는 fun2에 따라 버튼을 클릭하는 이벤트가 일어나면 /htmlcssjs로 위치로 이동해야하지만 preventDfault로 동작 실행을 막음->
		  	<hr/>
			<!-- a태그와 form태그에서 이벤트 사용 주의 사항 -->
		  </div>
			
		  	
			<form action="htmlcssjs" onsubmit="fun3()">  
			<!-- submit 버튼을 클릭해서 동작하는 이벤트가 발생했을 때 함수를 실행 -->
			<!-- 원래는 fun3에 따라 버튼을 클릭하는 이벤트가 일어나면 /htmlcssjs로 위치로 이동해야하지만 preventDfault로 동작 실행을 막음-->
			  <div class="mb-3 mt-3">
			    <label for="email" class="form-label">Email:</label>
			    <input onchange="fun4()" type="email" class="form-control" id="email" placeholder="Enter email" name="email">
			    <!-- 사용자가 입력을 할 때도 이벤트 발생 가능 -->
			    <!-- <태그 on~~속성></태그> 이벤트 발생 문법  -->
			    <!-- 입력 후 다른 곳으로 이동하여 클릭하는 이벤트가 발생되었을 때 함수4를 실행시킴 -->
			  <div class="mb-3">
			    <label for="pwd" class="form-label">Password:</label>
			    <input onkeypress="fun5()" type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
			   	<!-- 키를 눌렀다가 떼는 이벤트가 발생했을 때 함수5 실행시킴 -->
			  </div>
			  <div class="form-check mb-3">
			    <label class="form-check-label">
			      <input onchange="fun6()" class="form-check-input" type="checkbox" name="remember"> Remember me
			    	<!-- 체크박스의 체크여부가 바뀌는 이벤트에 따라 함수를 실행시킴 -->
			    </label>
			  </div>
			  <button type="submit" class="btn btn-primary btn-sm">Submit</button> 
			  <!-- submit 버튼 눌렀을 때  action에 있는 것을 요청함 -->
			</form>
					  	
		  </div>
		</div>
	</body>
</html>