
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tbody>
			<tr>
				<td align="center" style="border-bottom:1px solid #ededee">
					<table width=1180" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td height="60">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tbody>
											<tr>
												<td class="t5" style="padding-right:10px;">여행후기</td>
											
											</tr>
										</tbody>
									</table>
								</td>
								<td align="right">
									<a href="*">Home</a>
									>VOICE>여행후기								
								</td>
							</tr>
						</tbody>
					</table>
				</td>	
			</tr>
			<tr>
			<td align="center" style="padding:20px 0 50px 0;">
			<table width="1200" border="0" cellspacing="0" cellpadding="0">
			<tbody>
			<tr>
				<td align="center" >
					<br>
					<div style="height: 14px; line-height: 1px; font-size: 1px;">&nbsp;</div>
						<style type="text/css">
							.write_head {
								height: 30px;
								text-align: center;
								color: #8492A0;
							}
							
							.field {
								border: 1px solid #ccc;
							}
							
							.realperson-regen{
								text-align: center;
							}
						</style> 
						<script type="text/javascript">
				 		//글자수 제한
						 var char_min=parseInt(0);//최소
				 		 var char_max=parseInt(0);//최대
						</script>
						<table width="99%" align="center" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td>
										<div style="border: 1px solid #ddd; height: 34px; background: url(image/title_bg.gif) repeat-x;">
											<div style="font-weigth: bold; font-size: 14px; margin: 7px 0 0 10px;">::글쓰기 ::</div>
										</div>
										<div style="height: 3px; background: url(image/title_shadow.gif) repeat-x; line-height: 1px; font-size: 1px;"></div>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<colgroup width="90"></colgroup>
											<colgroup width=""></colgroup>
											<tbody>
												<tr>
													<td colspan="2"
														style="background: url(../skin/board/basic/img/title_bg.gif) repeat-x; height: 3px;"></td>
												</tr>
												<tr>
													<td class="write_head">이름</td>
													<td><input class="ed" maxlength="20" size="15"
														name="wr_name" itemname="이름" required="" value=""
														style="background-image: url(&quot;../js/wrest.gif&quot;); background-position: right top; background-repeat: no-repeat;"></td>
												</tr><tr><td colspan="2" heigth="1" bgcolor="#e7e7e7"></td></tr>
												<tr>
													<td class="write_head">패스워드</td>
													<td><input class="ed" type="password" maxlength="20"
														size="15" name="wr_password" itemname="패스워드" required=""
														style="background-image: url(&quot;../js/wrest.gif&quot;); background-position: right top; background-repeat: no-repeat;"></td>
												</tr><tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
												<tr>
													<td class="write_head">이메일</td>
													<td><input class="ed" maxlength=100 " size="50" name="wr_email" email="" itemname="이메일" value=""></td>
												</tr><tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
												<tr>
													<td class="write_head">홈페이지</td>
													<td><input class="ed" size="50" name="wr_homepage"
														itemname="홈페이지" value=""></td>
												</tr><tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
												<tr>
													<td class="write_head">제 목</td>
													<td><input class="ed" size="50" name="wr_subject" itemname="제목" required="" value=""></td>
												</tr>
												<tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
												<!-- 에디터 -->
												<tr>
													<td colspan="2"><div id="summernote">펜션이용 후기를 남겨주세요~</div></td>
												</tr><tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
												<tr>
													<td class="write_head">링크 #1</td>
													<td><input type="text" class="ed" size="50" name="wr_link1" itemname="링크#1" value=""></td>
												</tr><tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
												<tr>
													<td class="write_head">링크 #2</td>
													<td><input type="text" class="ed" size="50"
														name="wr_link2" itemname="링크#2" value=""></td>
												</tr><tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
												<tr>
													<td class="write_head">
														<table cellpadding="0" cellspacing="0">
															<tbody>
																<tr>
																	<td class="write_head" style="padding-top: 30px; line-height: 20px;">&nbsp;파일첨부<br>
																	 <span onclick="add_file();" style="cursor: pointer;"><img src="image/btn_file_add.gif"></span>
																		<span onclick="del_file();" style="cursor: pointer;"><img src="image/btn_file_minus.gif"></span>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
													<td style="padding: 5 0 5 0;">
														<table id="variableFiles" cellpadding="0" cellspacing="0">
															<tbody>
																<tr>
																	<td><input type="file" class="ed" name="bf_file[]"
																		title="파일 용량 1,048,576 바이트 이하만 업로드 가능"></td>
																</tr>
															</tbody>
														</table> 
														<script type="text/javascript">
				 															var flen =0;
				 															function add_file(delete_code)
				 															{
				 																var upload_count =1;
				 																if(upload_count && flen >= upload_count)
				 																{	alert("이 게시판은 최대 "+ (upload_count+1)+" 개의 파일만 업로드 가능합니다.");
				 																		return;
				 																}		
				 																var objTbl;
				 																var objRow;
				 																var objCell;
				 																if(document.getElementById)
				 																	objTbl = document.getElementById("variableFiles");
				 																else
				 																	objTbl=document.all["variableFiles"];
				 															
				 																objRow = objTbl.insertRow(objTbl.rows.length);
				 																objCell= objRow.insertCell(0);
				 																objCell.innerHTML="<input type='file' class='ed' name='bf_file[]' title='파일 용량 1,048,576 바이트 이하만 업로드 가능'>";
				 																
				 																if(delete_code)
				 																	objCell.innerHTML += delete_code;
				 																else
				 																	{
				 																		;
				 																	}
				 																flen++;
				 																}
				 															add_file('');
				 															
				 															function del_file()
				 															{
				 																var file_length =0;
				 																var objTbl= document.getElementById("variableFiles");
				 																if(objTbl.rows.length-1 > file_length)
				 																	{
				 																	objTbl.deleteRow(objTbl.rows.length-1);
				 																	flen--;
				 																	}
				 															}
				 														
				 										</script>
													</td>
												</tr><tr><td colspan="2" height="1" bgcolor="#e7e7e7"></td></tr>
												<tr>
												<td>&nbsp;&nbsp;</td>
												</tr>
												<!-- 자동방지 시작 -->
												<tr>
													<td class="write_head">
														<table cellpadding="0" cellspacing="0">
															<tbody>
																<tr>
																	<td class="white_head" for="exampleInputname"
																		style="padding-top: 10px; line-height: 20px;">자동가입방지문자</td>
																</tr>
															</tbody>
														</table>
													</td>
													<td style="padding: 5 0 5 0;">
														<table cellpadding="0" cellspacing="0">
															<tbody>
																<form id="noauto" method="post">
																	<input type="text" id="numberReal" name="numberReal">&nbsp;&nbsp;보이는
																	문자를 입력해 주세요
																	<button type="button" onclick="auto();"
																		class="btn btn-thenme-dark">확인</button>
																</form>
															</tbody>
														</table>
														<!-- 자동방지 끝 -->
												</tr>
											</tbody>
										</table>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tbody>
												<tr>
    												<td width="100%" align="center" valign="top" style="padding-top:30px;">
	        											<input type="image" id="btn_submit" src="image/btn_write.gif" border="0" accesskey="s">
	        										
														<a href="*"><img id="btn_list" src="image/btn_list.gif" border="0">
														</a>
        											</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</form> 
					<!-- 자동가입방지 -->
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
					<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
					<link rel="stylesheet" type="text/css"href="css/jquery.realperson.css">
					<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
					<script type="text/javascript" src="js/jquery.plugin.js"></script>
					<script type="text/javascript" src="js/jquery.realperson.js"></script> 
				
					<!--에디터-->
					<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
					<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
					<link href="dist/summernote.css" rel="stylesheet"> 
					<script src="dist/summernote.js"></script>
					<script src="dist/lang/summernote-ko-KR.js"></script>

					<script	type="text/javascript">
					<!--에디터-->
					$(document).ready(function(){
						$('#summernote').summernote({
						lang: 'ko-KR',
						height:300,
						minHeight: null,
						maxHeight: null,
						focus:true
						});
						<!-- 자동가입방지 -->
					$("#numberReal").realperson({length:5, char: $.realperson.alphanumeric,dot:'@',regenerate:'클릭시 변경'});});
					  function auto(){
						var url ="checkAuto.do";
						var opt = "width=300,height=500";
						var newWindow=Window.open(url,"noautowindow",opt);
						$("#noauto").attr("action","checkAuto.do");
						$("#noauto").attr("target","noautowindow");
						$("#noauto").submit();}
						</script>
			 		<br>
				</td>
			</tr>
		</tbody>
	</table>
</td>
</tr>
</tbody>
</table>	
</body>
</html>