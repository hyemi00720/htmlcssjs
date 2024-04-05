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
			const board = {
				bno: 1,
				title: "오늘은 월요일",
				content: "날씨가 좋네요. 자바스크립트 공부해야겠어요",
				writer: "홍길동"
			};
			
			//var title = board.title;
			//객체의 구조를 분해해서 객체의 데이터만 얻기
			//객체를 새로 생성하는 것이 아님
			var {title} = board; //board라는 객체의 속성(필드)인 title만 구조분해 해서 얻기
			console.log(title);
			console.log("");
			
			//var title = board.title;
			//var content = board.content; 
			//board라는 객체에서 title과 content라는 속성만 얻겠다
			//title과 content라는 객체로 만드는 것이 아님
			var {title, content} = board;
			console.log("title: ", title);
			console.log("content: ", content);
			console.log("");
			//-------------------------------------
			function fun1({title}) { 
				console.log(title);
			}
			fun1(board); //title에 저장된 "오늘은 월요일"이 저장
			//-------------------------------------
			//...rest -> 나머지는 객체로 만듬
			var {writer, ...rest} = board;
			//var { ...rest, writer} = board;(안됨) //...rest 위치는 맨 뒤
			//var {bno, title, content} = board; 와 같은 표현
			//wrtier 속성만 제외하고 board객체의 다른 속성들을 모두 객체로 만듬
			console.log(writer);
			console.log(rest);
			console.log("");
			//-------------------------------------
			//...객체 -> 나머지는 구조분해 해서 그대로 넣어라
			var newBoard1 = {...board, bno:2, title:"벚꽃이 좋아요.", hitcount:1};
			//var newBoard = {bno:2, title:"벚꽃이 좋아요.", ...board};(안됨) //...객체 위치는 맨 앞
			//bno와 title의 속성값만 바꾸고 나머지는 속성값을 그대로 구조분해만 해서 넣어라
			var newBoard2 = (board) => {
				return {...board, hitcount:1};
			};
			//{board} 매개값 하나, return {...~~~} 실행문 하나일 때는 {} 생략이 가능
			var newBoard2 = board => ({...board, hitcount:1});
			//{}가 객체를 표현하는 {}로 쓰이는게 아니라 함수의 리턴값인 실행 내용을 담은 {}로 쓰이게 되어  SyntaxError
			//따라서 {}를 ()로 감싸주어서 ({}) 형태로 객체를 저장하도록 해줘야함
			//board를 매개값으로 받아서 hitcount1은 추가하고 나머지는 구조분해 해서 넣어라 
			console.log(newBoard2(board));
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam12_destructuring_assignment</div>
		  <div class="card-body"></div>
		  		구조분해(destructuring) 할당(assignment)
		  	<ul>
		  		<li><a href="#">item</a></li>
		  	</ul>
		</div>
	</body>
</html>