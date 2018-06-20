<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	//이미지 삽입 체크
	$(document).ready(function(){
		$('form').on('submit',function(){
			var str=$('#filepath').val();
			if(str.length<1){
				alert('이미지를 선택하세요.');
				return false;
			}
		});
		//선택한 이미지 img태그에 넣기
		$('#filepath').on('change',function(){
			var str=$('#filepath').val();
			//console.log(str);
			
			//이미지 첨부파일인지 체크 
			var patt=/(.jpg$|.gif$|.png$)/g;
			var result=str.match(patt);
			if(!result){
				alert('jpg,gif,png만 가능합니다.');
				$('#filepath').val('');
				return false;
			}
			
			//파일첨부 사이즈 체크 
			console.log(this.files + "," +this.files[0]);
			if(this.files[0].size>1000000){
				alert('1MB이하만 첨부할 수 있습니다.');
				$('#filepath').val(' ');
				return false;
			}
			//파일을 읽기 위한 FileReader객체 생성
			var reader=new FileReader();
			
			//File내용을 읽어 dataURL형식의 문자열로 저장
			console.log(this.files[0]);
			reader.readAsDataURL(this.files[0]);
			
			//파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			reader.onload=function(e){
				//이미지 Tag의 src속성에 읽어들인 File내용을 지정
				//console.log(e.target.result);
				$('img').attr('src',e.target.result);
			}
			
		});//////////////////////////////////////
		
	});////////////////////////////////
	
</script>
</head>
<body>
<!-- input요소의 type속성의 값이 "file"이면
		method="post"
		enctype="mutipart/form-data" 설정한다.-->
	<form action="insertMain" method="post"
			enctype="multipart/form-data">
			
			<p>
				<img width="100" height="100" />
			</p>
			<p>
				<span>파일</span>
				<input type="file" name="filepath" id="filepath" />
			</p>
			<input type="submit" value="commit" />
	</form>

</body>
</html>