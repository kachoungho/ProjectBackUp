<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>과제물 제출</title>
</head>
<body>
	<form action="" method="post" name="" id="id">
		<select name="year">
			<% int i =2015; %>
			<% while(i <=2016){ %>
			<option value="<%=i%>"><%=i%></option>
			<% 
			   i++;
			   }
			%>

		</select><font face="굴림체">학년도</font> <select name="semester">

			<option value="one">1학기
			<option value="two">2학기
			</option>
	
		</select>
		
		<form action="">
			<table align="center">
				<td align="right"><input type="submit" value="확인">
				</td>
			</table>
		</form>
		
		<font color="red" >-. 첨부파일 업로드에 다소 시간이 걸립니다. 저장완료 후 화면 전환시까지 기다려주시기 바랍니다. <br>
  -. 과제물 제출 후 제출확인에서 과제물 내용 및 첨부파일이 정상적으로 제출되었는지 확인하시기 바랍니다. <br>
  -. 해당 학기 종료 후, 서버 용량 문제로 과제물 내용은 모두 삭제 됩니다.<br></font>
  <a href ="advice.jsp">
  <b>도움말: 과제물 제출 / 확인 이용안내</b>
  </a>
  <br><br>
  
 <table border="1">
 <tbody><tr bgcolor="#A9D0F5">
        <td  align="center"rowspan="2">순번</td>
        <td  align="center"rowspan="2">과제물제목</td>
        <td  align="center"  colspan="2">제출 기간</td>
        <td  align="center"  rowspan="2">내용</td>
        <td  align="center"   colspan="4">과제물제출</td>
        <td  align="center"   rowspan="2">교수확인여부</td>
        <td  align="center"  rowspan="2">점수</td>
     </tr>
     <tr bgcolor="#A9D0F5">
        <td align="center" >(시작)</td>
        <td align="center" >(종료)</td>
        <td align="center" >제출</td>
        <td align="center" >삭제</td>
        <td align="center" >제출확인</td>
        <td align="center" >첨부파일</td>
     </tr>
     <tr><td >순번</td><td ></td><td></td><td ></td><td ></td><td></td><td ></td><td ></td><td ></td><td ></td><td ></td></tr>
   </tbody>
 </table>
</body>
</html>
















