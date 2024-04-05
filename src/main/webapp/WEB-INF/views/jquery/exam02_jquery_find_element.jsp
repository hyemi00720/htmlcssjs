<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert title here</title>
	<!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- jQuery 외부 라이브러리 설정 -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script> 
  
	<script type="text/javascript">
      
      function findElementById() {
    	 var jq_p1 = $("#p1");
         console.log("찾은 엘리먼트 수:", jq_p1.length);
         console.log("내부 배열의 0인덱스에 저장된 엘리먼트:", jq_p1[0]);
         //jquery 객체가 아닌 jquery 내부의 엘리먼트 배열 객체의 인덱스
      }
      
      
      function findElementByClass() { 
         //class1을 가진 태그 찾기
         var jq_class1 = $(".class1");
         // jquery 객체 리턴
         console.log("찾은 엘리먼트 수:", jq_class1.length);
         //jquery 객체의 길이
       
         for(var el of jq_class1) {
            console.log(el);
         }
      }
   
      
      function findElementByTag() {
    	  //태그로 찾는 방법
    	  var jq_p = $("p");
    	  console.log("찾은 엘리먼트 수:", jq_p.length);
    	  for(var el of jq_p) {
              console.log(el);
           }
      }
      		//방법2
      	/*   var jq_p = $("p");
	      var el_p = document.getElementsByTagName("p");
		  for(var el of el_p) {
	          console.log(el);
	       } */
      	
		function findElementByChecked() {
			var jq_checked = $("[name=skill]:checked");
			console.log("찾은 엘리먼트 수:", jq_checked.length);
			for(var el of jq_checked) {
		          console.log(el);
		       }
		}
   
   </script>
   
   
   
   </head>
   <body>
      <div class="card">
          <div class="card-header">exam02_jquery_find_element</div>
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