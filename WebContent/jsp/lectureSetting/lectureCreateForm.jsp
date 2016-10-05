<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"	href="/FirstProject/css/style.css">
<script>
 
          function changeImg() 
          {
           var element = document.getElementById('memo');
           element.style.opacity = "0";
           element.style.visibility="visible";
           element.style.filter  = 'alpha(opacity=0)';
          }
 
          function normalImg() 
          {
          var element = document.getElementById('memo');
          element.style.opacity = "1";
          element.style.filter  = 'alpha(opacity=100)';
          }
        </script>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강의 개설 페이지</title>
</head>
<body>
	<form name="createForm" action="/FirstProject/lectureCreatePro.do" method="post">
		<br> <br>
		<table onmouseover="normalImg()" onmouseout="changeImg()">
			<tr >
				<td id="th" colspan="2" align="center">강 의 개 설</td>
				<td rowspan="6" width="1000"  id="memo" style="visibility:hidden;">
					 마우스 오버시 나타나는부분<br>
				</td>
			</tr>
			
			<tr>
				<td id="th" width="150">과목 코드</td>
				<td id="th2" width="150">
					<input type="text" name="sub_code">
				</td>
			</tr>
			
			<tr>
				<td id="th" width="150">과 목 명</td>
				<td id="th2" width="150">
					<input type="text" name="sub_name"></td>
			</tr>
			
			<tr>
				<td id="th" width="150">학 점</td>
				<td id="th2" width="150">
					<input type="text" name="sub_hakjum"></td>
			</tr>
			
			<tr>
				<td id="th" width="150">담당 교수</td>
				<td id="th2" width="150">
					<input type="text" name="emp_name">
				</td>
			</tr>
			
			<tr>
				<td id="th" width="150">강의 시간</td>
				<td id="th2" width="150">
					<input type="text" name="sub_time">
				</td>
			</tr>
			
			<tr>
				<td id="th2" width="300" colspan="2">
					<input type="submit" value=" 개 설 ">
				</td>
			</tr>
		</table>
	</form>	
</body>
</html>