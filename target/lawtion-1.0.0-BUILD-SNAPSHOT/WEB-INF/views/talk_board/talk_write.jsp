<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href= "http://localhost:9000/lawtion/css/lawtion.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="write_resource/samples/sample.css">
<script>	
	$(document).ready(function(){
		$("#writesucess").click(function(){
			if($("#title").val()==""){
				alert("제목을 입력해주세요.");
				$("#title").focus();
			}else if ($.trim($("#contents").val(CKEDITOR.instances['contents'].getData()))==""){
				alert("내용을 입력해주세요");
				$("#content").focus();
			}else if($("#lawsuit").val()==" 진행되었던 소송명을 정확히 입력해주세요."){
				alert("소송명을 입력해주세요");
				$("#lawsuit").focus();
				return false;
			}
			
			boardForm.submit();
			});
		
		$("#category").change(function(){
			//alert($("#selectemail").val());
			var option_value  = $("#select_id option:selected").val();
			if(option_val == "선택"){
				alert("카테고리를 선택해주세요.");
				return false;
			}
		});
	
	});
</script>
</head>
<body>
	<jsp:include page ="../header.jsp"/>
	<div class="review">
		<div class="review-title">
			<img src="http://localhost:9000/lawtion/images/talktitle.PNG" width="240" height="60" class="title">
		</div>
		<div class="talknotice">
			<label class="talktitle">
				본 게시판은 역경매 게시판도 후기 게시판도 아닙니다.<br>주변에 하소연하지 못하는 사건, 답답한 일을 주변사람과 공유, 위로, 충고 받는 공간입니다. <br>공격적인 말보다는 따뜻한 말을 사용해주세요			
			</label>
		</div>
		<div class="write-title">
			<img src ="http://localhost:9000/lawtion/images/write.png" width="40" height="40">
			<label>하소연 작성</label>
		</div>
		<div class="write">
			<form name="write" action="talk_board_check.do" method="post">
				<table  class="talk-Write">
					<tr>
						<td colspan=2>
							<label>글쓴이</label>
							<input type ="text"	value="hyeona" disabled>
						</td>
						<td></td>
					</tr>
					<tr>
						<td colspan=3>
							<label>제목</label>
							<input type ="text" name="title" id="title" >
						</td>
					</tr>
					<tr>
						<td colspan=3>
							<label>내용</label>
							<textarea class="content" id="content" cols="5" name="content"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan=3>
							<label>첨부파일</label>
							<input type ="file" name="fname" id="fname">
						</td>
					</tr>
					<tr>
						<td colspan=3>
							<div class="write_button">
								<button type="submit" id="writesucess" name="writesucess">저장</button>
								<button type="reset" name="reset">취소</button>
								<a href="http://localhost:9000/lawtion/talk_board_content.do?no=${vo.no}&rno=${rno}"><button type="button">이전 페이지</button></a>
							</div>
						</td>
					</tr>
				</table>	
			</form>
		</div>
	</div>
	<jsp:include page ="../footer.jsp"/>
	
</body>
</html>