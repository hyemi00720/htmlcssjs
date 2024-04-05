<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Insert title here</title>
		
		<!-- Bootstrap5 외부 라이브러리 설정 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- jQuery 외부 라이브러리 설정 -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
		<!-- 사용자 정의 자바스크립트 -->
		<script>
			function changeBgColor1() {
				
				//HTML NodeList 객체 얻기
				var el_color_div = document.querySelectorAll(".colorDiv");
				console.log(el_color_div);
				
				//for문으로 반복해서 스타일 적용
				//Element 객체가 가지고 있는 속성과 메소드 사용
				for(var el of el_color_div) {
					//el.style.backgroundColor = "orange";
					el.classList.add("bg-warning");
				}
			}	
				
			function changeBgColor2() {	
				//jQuery 객체 얻기
				var jq_color_div = $(".colorDiv");
				console.log(jq_color_div);
				
				//jQuery 객체가 가지고 있는 메소드 호출
				//jq_color_div.css("background-color", "orange");
				jq_color_div.addClass("bg-danger");
			}
			
			function changeBgColor3() {	
		
				var jq_color_div = $(".colorDiv");
				console.log(jq_color_div);
				//바꿔준 스타일 제거하기
				jq_color_div.removeClass(["bg-danger", "bg-warning"] );
				//jq_color_div.removeClass("bg-warning");
			}
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam01_jquery_object</div>
		  <div class="card-body"></div>
		  		<!-- 
		  		[jQuery 객체란] 
		  		1. jQuery API를 이용해서 만들어진 객체
		  		2. jQuery 객체 내부에는 Element 객체 배열이 저장
		  		3. jQuery 객체 내부에는 Element 객체들을 일괄적으로 변경하는 메소드를 포함
			  		 -->
		<!-- 	  		 
				┌─jQuery Object───────────────────────────────────────┐
				│                                                     │
				│  method1(), method2(), method3(), ...               │
				│                                                     │
				├─────────┬─────────┬─────────┬───────────────────────┤
				│    0    │    1    │    2    │ ...                   │
				│ Element │ Element │ Element │ ...                   │
				└─────────┴─────────┴─────────┴───────────────────────┘		
				 -->
		<!-- jquery 객체를 찾아서 일괄 적용  -->		
		<!-- 만약 배경색을 바꾸는 메소드를 호출하게 된다면 특정 엘리먼트뿐만이 아니라 배열안의 모든 엘리먼트들에 적용됨  -->	 
		<!-- 엘리먼트나 태그가 가진 메소드가 아닌 jquery가 단독으로 가지고 있는 메소드이므로 jquery 도큐먼트 봐야함  -->
			 <div>
			 	<button onclick="changeBgColor1()" class="btn btn-info btn-sm">HTML로 배경색 변경</button>
			 	<button onclick="changeBgColor2()" class="btn btn-info btn-sm">JQuery로 배경색 변경</button>
			 	<button onclick="changeBgColor3()" class="btn btn-info btn-sm">배경색 초기화</button>
			 </div>
			  <hr/>
			  
			  <div class="d-flex">
			  	<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
			  	<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
			  	<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
			  </div>
		</div>
	</body>
</html>