<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Insert title here</title>
		<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
			rel="stylesheet">
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
		
		<script type="text/javascript">
		   //변수를 선언하는 3가지 방법
		   var var1 = 1; //전역 변수
		   let var2 = 1.0; //전역 변수
		   const var3 = "abc"; //전역 변수, 상수
		   //콘솔에 변수값 출력
		   console.log("var1: " + var1);
		   console.log("var2: ", var2);
		   console.log("var3: ", var3);
		   //수정 여부
		   var1 = 2; //(o)
		   var2 = 3.5; //(o)
		   //var3 = "def"; //(x)
		</script>
		<script type="text/javascript">
		   function fun1() {
		      var var4 = 1;
		      let var5 = 10.0;
		      const var6 = "ghi";
		
		      if (true) {
		         var var7 = 100;
		         let var8 = 100.0;
		         const var9 = "jhi";
		         //******************
		         console.log("var1:", var1);
		         console.log("var2:", var2);
		         console.log("var3:", var3);
		         console.log("var4:", var4);
		         console.log("var5:", var5);
		         console.log("var6:", var6);
		         console.log("var7:", var7);
		         console.log("var8:", var8);
		         console.log("var9:", var9);
		         //******************
		      }
		      
		      const var9 = "jhi";
		      //******************
		      console.log("var1:", var1);
		      console.log("var2:", var2);
		      console.log("var3:", var3);
		      console.log("var4:", var4);
		      console.log("var5:", var5);
		      console.log("var6:", var6);
		      console.log("var7:", var7); // o
		      console.log("var8:", var8); // x
		      console.log("var9:", var9); // x
		      //******************
		      
		   }
		   function fun2() {
		      //******************
		      console.log("var1:", var1);
		      //******************
		   }
		
		   fun1();
		   fun2();
		</script>
		
	</head>
	<body>
		<div class="card">
			<div class="card-header">Header</div>
			<div class="card-body">Content</div>
			<script type="text/javascript">
			  		//변수 선언 3가지 방법  전역변수
			  		var var1 = 1;  //자스도 변수의 타입이 있긴하지만 선언시 타입을 명시하지는 않는다 . 
			  		let var2 = 1.0;
			  		const var3 ="abc";
			  		
			  		//콘솔에 변수값 출력
			  		console.log("var1: " + var1);
			  		console.log("var2: " , var2);
			  		console.log("var3: " , var3);
			  		console.log("");
			  		
			  		//수정 여부
			  		var1 = 2;         // ㅅo   
			  		var2 = 3.5;       //
			  		//var3 = "def";   //const는 한 번 값이 초기화 되면 수정 불가능
			  </script>
	
		</div>
	</body>
</html>