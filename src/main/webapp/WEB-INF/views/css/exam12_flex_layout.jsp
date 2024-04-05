<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Insert title here</title>
		<style type="text/css">
			* {
				margin: 0px;
				padding: 0px;
				
			}
			
			wrapper {
				display: flex;
				flex-direction: row; 
				height: 500px;
				align-items: center;
				justify-content: flex-start;
			}
			
			header {
				border: 1px solid black;
				background-color: darkgrey
				color: #ffffff;
			}
			
			section {
				display: flex;
				flex-direction: row;
				border: 1px solid black;
				height: 300px;
			}
			
			nav {
				flex: 3;
				border: 1px solid black;
				/* height: 100%; */
				box-sizing: border-box;
				background-color: orange;
				padding: 20px;
			}
			
			article {
				flex: 7;
				border: 1px solid yellow;
				/* height: 100%; 안줘도 어차피 늘어나는 구조*/ 
				box-sizing: border-box;
				padding: 20px
				}	
			
			footer {
			border: 1px solid yellow;
			}
		</style>
	</head>
	<body>
		<h4>exam12_flex_layout</h4>
		<hr/>

	    <div id="wrapper">
	        <header>
	            <h2>Cities</h2> <!-- 블록 -->
	        </header>
	
	        <section>
	            <nav> <!-- navigation 메뉴를 감싸는 용도 / 레이아웃 만들려고 자식태그들 묶어놓음-->
	                <ul>
	                    <li><a href="#">London</a></li>
	                    <li><a href="#">Paris</a></li>
	                    <li><a href="#">Seoul</a></li>
	                </ul>
	            </nav>
	            <article>
	                <h1>London</h1> <!-- 블록요소 -->
	                <!-- 블록 -->
	                <p>London is the capital city of England. It is the most populous city in the  United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
	                <p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
	            </article>
	        </section>
	
	        <footer>
	            <p>Footer</p> <!-- 블록 -->
	        </footer>
	    </div>		
			
			
	</body>
</html>