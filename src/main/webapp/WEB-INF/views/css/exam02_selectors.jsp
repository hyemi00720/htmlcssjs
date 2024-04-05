<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<title>Insert title here</title>
</head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	
	<!--  인터널 작성법은 문서 내부의 모든 div 태그에 적용됨 -->
		<!-- div는 선택자 -->
		<!--  -->
		<!-- #divId1 #은 하나만 선택 //Id1의 백그라운드컬러는 오렌지로 -->
		<!-- .divClass1  .은 그룹으로 여러개 선택가능 //그룹이름이 divClass2 인 애들 다-->
		<!--  -->
	<style type="text/css">
	
	
		* { 
			text-align:center;
			color:blue;
		}
		
		div { 
			border:1px solid red;  
			background-color:aqua;
		}
		
		#divId1 {
			background-color:orange;
		
		}
		.divClass1 {
			background-color:red;
		}
		
		.divClass2 {
			background-color:gray;
		}
		
		p, header, article {
			border:1px solid orange;  
			text-align:right;
			color:red;
		}
		
		p.classA{
			background-color:purple;
		}
		
	</style>
<body>
	<h4>exam02_selectors</h4>
	<hr/>
	<div>content1</div> <!-- 인터널 css 속성 적용됨 -->
	<div id="divId1">content2</div> <!-- id는 식별값이므로 중복되지않도록 주의 -->
	<div class="divClass1">content2</div> <!-- css에서 클래스는 그룹을 의미 -->
	<div class="divClass1">content3</div> <!-- div 적용은 작은단위가 우선순위에 있음 -->
	<div class="divClass2">content4</div>
	<div class="divClass2">content5</div>
	<p>content6</p>
	<header>content7</header> <!-- 가급적이면 제목으로 쓰는게 관례//꼭 그래하는 것은 아님 -->
	<article>content8</article>
	
	
	<p class="classA">content9</p>
	<div class="classA">content10</div>
</body>
</html>