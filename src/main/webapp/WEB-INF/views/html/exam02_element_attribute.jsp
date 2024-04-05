<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> <!--  문서 타입 html-->
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<title>Insert title here</title>
</head>
<body>

	<h4>exam02_element_attribute</h4>

	<hr/>
	<p> 
	<!--  //p태그 //<p></p> 안에 들어오는 내용을 한 문단으로 봄 //앞뒷열에 공백이 함께 출력됨 
	      // <div> 그냥 구분만 해줌 앞뒷열 공백 없음 -->
	      <!-- 이미지 태그 리소스 절대경로 -->
		<img src="http://localhost:8080/htmlcssjs/resources/images/photos/photo1.jpg" width="100"/>
	</p>
	
	<p> 
		<label for="userPassword">비밀번호 </label>
		<input type="password" id="userPassword"/>
	</p>
	
	<p>
		<input type="submit" id="로그인"/>
		<input type="reset" id="다시 작성"/>
	</p>
</body>
</html>