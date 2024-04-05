<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Insert title here</title>
      <!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
   
   <script type="text/javascript">
      
      function findElementById() {
    	 //id정보를 가진 p태그 찾는 방법1 -> 아이디로만 사용가능
         var el_p1 = window.document.getElementById("p1");
         console.log(el_p1);
         
         
         //id정보를 가진 p태그 찾는 방법2 -> 다양하게 활용 가능 (권장)
         el_p1 = document.querySelector("#p1");
         console.log(el_p1);
      }
      
      
      function findElementByClass() {
         
    	 //class1을 가진 태그들을 찾는 방법1
         var el_class1 = document.getElementsByClassName("class1");
         // HTML Collection 타입으로 리턴
         console.log(el_class1);
         console.log(el_class1[0]);
         // 배열은 아니지만 collection 타입이라 배열 처럼 사용할 수 있음
         // of 뒤에도 나올 수 있고, 인덱스로 호출도 가능
         
         for(var el of el_class1) {
            console.log(el);
         }
         
         //class1을 가진 태그들을 찾는 방법2
         el_class1 = document.querySelectorAll(".class1");
         // NodeList 타입으로 리턴
         //querySelector는 만족하는 태그가 여러개라도 첫번째 태그 1개만 리턴함 
		 //따라서 만족하는 모든 태그들을 리턴하려면 querySelectorAll 메소드 사용
         console.log(el_class1);
         console.log(el_class1[0]);
         for(var el of el_class1) {
            console.log(el);
         }
      }
   
      
      function findElementByTag() {
    	  //태그로 찾는 방법1
    	  var el_p = document.getElementsByTagName("p");
    	  for(var el of el_p) {
              console.log(el);
           }
      }
      		//방법2
      el_p = document.querySelectorAll("p");
	      var el_p = document.getElementsByTagName("p");
		  for(var el of el_p) {
	          console.log(el);
	       }
      	
		function findElementByChecked() {
			var el_checked = document.querySelectorAll("[name=skill]:checked");
			//[속성의 값]
			for(var el of el_checked) {
		          console.log(el);
		       }
		}
   
   </script>
   
   
   
   </head>
   <body>
      <div class="card">
          <div class="card-header">Header</div>
                <div class="card-body">
            <button onclick="findElementById()" class="btn btn-info btn-sm">ID로 찾기</button>
            <button onclick="findElementByClass()" class="btn btn-info btn-sm">Class로 찾기</button>
            <button onclick="findElementByTag()" class="btn btn-info btn-sm">Tag로 찾기</button>
            <button onclick="findElementByChecked()" class="btn btn-info btn-sm">체크된 것만 찾기</button>
            <hr/>
            <div class="d-flex">
            <!-- p태그는 블록요소이지만 디스플레이플랙스 때문에 인라인요소처럼 출력 됨 -->
            	<!--  보통 보더 같은 경우 style="board: 1px solid black" 으로 설정을 해줬음 -->
                <p id="p1" class="border bg-success" style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-danger" style="width: 100px; height: 100px;"></p>
                <p class="class1 border bg-info" style="width: 100px; height: 100px;"></p>
            </div>
            <hr/>
            <div class="d-flex align-items-center justify-content-center" style="height:300px">
              <!-- align-items-center 수직 중앙 정렬 / 수평 정렬 추가하고 싶으면 justify -->
                <div class="me-3"><input type="checkbox" name="skill" value="java"/>java</div>
                <div class="me-3"><input type="checkbox" name="skill" value="javascript"/>javascript</div> 
                <div class="me-3"><input type="checkbox" name="skill" value="vue"/>vue</div> 
            </div>
                </div> 
            </div>
         </div>
   </body>
</html>