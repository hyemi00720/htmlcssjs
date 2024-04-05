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
	
	<!--  링크와의관계=스타일을정의해놓은스타일시트  해당링크 -->
	<link rel="stylesheet" href="/htmlcssjs/resources/css/exam01_style.css">
	<!--  특정 html 페이지에서만 쓰는게 아니라 여러 페이지에서 공유사용한다면 익스터널css가 유리  -->
	
	<!--  인터널 작성법은 문서 내부의 모든 div 태그에 적용됨 -->
	<style type="text/css">
		div { 
			border:1px solid red;  
			background-color:blue;
		}
	</style>
	
<body>
	<h4>exam01_where_css</h4>
	<hr/>
	<!-- 인라인 css 는 태그 안의 내용에 적용되면 인터널보다 우선 순위로 적용된다 -->
	<!-- 스타일은 속성=보더는1픽스솔리드레드는 속성값; 백그라운드컬러아쿠아는 속성값 --> 
	<div style="border:1px solid red; background-color:aqua;">content1</div>
	<div>content2</div>
	<div>content3</div>
</body>
</html>