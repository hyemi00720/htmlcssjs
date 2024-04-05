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
			function basic() {
				console.log("basic() 실행");
				//배열 생성
				const arr = ["Java", "JanaScript", "Vue.js"];
				//배열값 읽기
				console.log("1인덱스값:", arr[1]);
				console.log("배열의 길이:", arr.length);
				//배열 항목 변경
				arr[2] = "Spring";
				//항목 반복 읽기
				for(var i=0; i<arr.length; i++) {
					console.log(arr[i]);
				}
				//자바에서는 for(String item : arr) 
				//of 항목 반복
				//in 인덱스 반복
				for(var item of arr) {
					console.log(item);
				}
			}
			
			function appendItem() {
				console.log("appendItem() 실행")
				//배열 생성
				const arr = ["java"];
				//맨 뒤에 새항목 추가
				arr.push("html");
				arr.push("css");
				//항목 반복 읽기
				for(var item of arr) {
					console.log(item);
				}
			}
			
			function removeAndInsertItem() {
				console.log("removeAndInsertItem() 실행")
				//배열 생성
				const arr1 = ["Banana", "Orange", "Apple", "Mango"];
				
				//항목 삭제(자바스크립트 배열은 자바의 리스트와 비슷)
				//자바의 배열->크기 고정, 자바의 리스트->추가 가능
				//항목을 삭제할 경우 뒤에 인덱스의 값이 앞으로 당겨옴
				arr1.splice(2, 1); //2인덱스부터 1개를 삭제 //Apple 삭제
				console.log(arr1); //['Banana', 'Orange', 'Mango']
				
				//항목 삽입
				arr2 = ["Banana", "Orange", "Apple", "Mango"];
				arr2.splice(2, 0, "Lemon", "Kiwi"); //2인덱스부터 0개를 삭제하고 세번째값 이후를 삽입
				console.log(arr2); //['Banana', 'Orange', 'Lemon', 'Kiwi', 'Apple', 'Mango']
				
				//항목 대체
				arr3 = ["Banana", "Orange", "Apple", "Mango"];
				arr3.splice(2, 2, "Lemon", "Kiwi")  //2인덱스부터 2개를 삭제하고, 세번째 이후를 삽입
				console.log(arr3); //['Banana', 'Orange', 'Lemon', 'Kiwi']
			}

			function concatArray() {
				const arr1 = ["Banana", "Orange"];
				const arr2 = ["Apple", "Mango"];
				const arr3 = arr1.concat(arr2); //arr1과 arr2를 합쳐서 새로운 배열 arr3을 만듬
				console.log(arr1);
				console.log(arr2);
				console.log(arr3);
				}
			
			function filterItem() {
			 const arr = [ //객체가 5개 들어간 배열
		          { bno: 1, title: "제목1", writer: "홍길동" },
		          { bno: 2, title: "제목2", writer: "홍길서" },
		          { bno: 3, title: "제목3", writer: "홍길남" },
		          { bno: 4, title: "제목4", writer: "홍길서" },
		          { bno: 5, title: "제목5", writer: "홍길북" },
		        ];
			 //.filter의 매개값으로는 화살표 함수를 받음
			/*  const newArr = arr.filter((item) => {
				 return item.writer === "홍길서"     
			 }); */
			
			 //매개변수 하나라 생략, 실행문 하나라 생략, 리턴 생략
			 const newArr = arr.filter(item => item.writer === "홍길서"  );   
		     //항목의 개수만큼(5) 반복해서  wrtier가 홍길서와 같을(true) 경우에만 item(항목)을 빼서 배열로 만들어라
		     console.log(newArr);
		     
		     const newArr2 = arr.filter(item => item.bno%2 === 1);
		     //항목의 개수만큼(5) 반복해서  bno가 홀수일(true) 경우에만 item(항목)을 빼서 배열로 만들어라
		     console.log(newArr2);
			}
			
			function findItem() {
				 const arr = [ //객체가 5개 들어간 배열
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				 
				 //bno가 3인 게시물 찾기
				 const board = arr.find(item => item.bno === 3);
				 console.log(board);
				 
				 //writer가 홍길남인 게시물 찾기
				 const newBoard = arr.find(item => item.writer === "홍길남");
				 console.log(newBoard); 
			} 
			
			function handleEachItem() {
				const arr = [ //객체가 5개 들어간 배열
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				
				//for: index 이용
				for(var i=0; i<arr.length; i++) {
					console.log(arr[i]);
				}
				
				//for: of 이용
				for(var item of arr) {
					console.log(item);
				}
				
				//배열의 forEach() 메소드 이용
				//배열의 길이만큼(item이 들어오는만큼) 반복
				arr.forEach(item => {
					console.log(item);
				
				});
			}
			
			function mapItem() {
				const arr = [ //객체가 5개 들어간 배열
			          { bno: 1, title: "제목1", writer: "홍길동" }, 
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				
				//제목으로 구성된 새로운 배열 얻기 (객체를 문자로, 객체배열을 문자배열로 바꾸는 작업)
				const titles = arr.map(item => item.title);
				//다른 배열 메소드의 경우 논리값을 받아 걸러진 원래 배열을 출력하는 방식이었다면
				//map 메소드의 경우 원래 배열을 새로운 형식의 배열로 만들어 출력
				console.log(titles);
				
				const bno = arr.map(item => item.bno);
				console.log(bno);
				
				//항목에 오늘의 날짜인 date: '2024.4.2'를 추가한 새로운 항목 배열을 얻기
				const newArr = arr.map( item => { 
					var now = new Date();
					var strDate = now.getFullYear() + "." + (now.getMonth()+1) + "." + now.getDate();
					return {...item, date: strDate};
					//arr배열에 들어있는 item들을 return 값인 (item 배열의 원래 항목(...rest) + 추가로 얻은 date 문자열)로 매핑
				});
				console.log(newArr);
			}
			
			function sortItem() {
				const fruits = ["Banana", "Orange", "Apple", "Mango"];
				//올림차순하기
				fruits.sort();
				console.log(fruits);
				//내림차순으로 정렬(sort() 실행 후에 )
				fruits.reverse();
				console.log(fruits);
				
				const arr = [ //객체가 5개 들어간 배열
			          { bno: 2, title: "제목1", writer: "홍길동" }, 
			          { bno: 4, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 5, title: "제목4", writer: "홍길서" },
			          { bno: 1, title: "제목5", writer: "홍길북" },
			     ];
	
				//bno 기준으로 올림차순 하기
				arr.sort((item1, item2) => item1.bno - item2.bno );
					//템1에서 템2를 뺀 값이 +일 경우 1을 뒤로
					//템1에서 템2를 뺀 값이 0이면 그대로
					//템1에서 템2를 뺀 값이 -면 앞으로
				console.log(arr);
					
				//bno 기준으로 내림차순 하기
				arr.sort((item1, item2) => -(item1.bno - item2.bno));
				//템1에서 템2를 뺀 값이 +일 경우 1을 뒤로
				//템1에서 템2를 뺀 값이 0이면 그대로
				//템1에서 템2를 뺀 값이 -면 앞으로
				console.log(arr);
					
				//title 기준으로 내림차순 정렬
				arr.sort((item1, item2) => {
					if(item1.title < item2.title) {
						return 1;
					} else if(item1.title === item2.title) {
						return 0;
					} else {
						return -1;
					}
				});
				console.log(arr);
			}
			
		</script>
		
	</head>
	<body>
		<div class="card">
		  <div class="card-header">exam21_array</div>
		  <div class="card-body"></div>
		  	<p><button onclick="basic()" class="btn btn-info btn-sm">버튼</button></p>
		  	<p><button onclick="appendItem()" class="btn btn-info btn-sm">새 항목 추가</button></p>
		  	<p><button onclick="removeAndInsertItem()" class="btn btn-info btn-sm">항목 제거 및 삽입</button></p>
		  	
		  	<p><button onclick="concatArray()" class="btn btn-info btn-sm">배열 합쳐서 새로운 배열 생성</button></p>
		  	<p><button onclick="filterItem()" class="btn btn-info btn-sm">필터링 후 새로운 배열 생성</button></p>
			<p><button onclick="findItem()" class="btn btn-info btn-sm">항목 찾기</button>
			<p><button onclick="handleEachItem()" class="btn btn-info btn-sm">항목 일괄처리(반복처리)</button>
			<p><button onclick="mapItem()" class="btn btn-info btn-sm">항목을 변환하고 새로운 배열 생성</button>
			<p><button onclick="sortItem()" class="btn btn-info btn-sm">항목 정렬</button>
		</div>
	</body>
</html>