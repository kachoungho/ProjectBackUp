<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#td{
	border: 2px solid #1E3449;
}
</style>

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
	<form name="createForm" action="/FirstProject/lectureCreatePro.do"
		method="post">
		<br> <br>
		<table onmouseover="normalImg()" onmouseout="changeImg()">
			<tr >
				<td id="td" colspan="2" align="center">강 의 개 설</td>
				<td rowspan="6" width="1000"  id="memo" style="visibility:hidden;">--여기서 과목코드 ( sub_code 생성조건.)<br>
--EX) COM101   ( 전공 과목 )					|--KYO201	( 교양 과목 ) <br>
-- com == 학과 이름					|--KYO == 교양과목이라는 뜻<br>
-- 1 == 1학년 과목 						|--2 == 교양 과목은 3가지 종류가 있다. 그것에 대한 인덱스 "1, 2, 3" 이 있음<br>
-- 01 == 과목 Index						|--01 == 과목 Index.<br>

--시간에 관한 코드?? 이렇게 해석하세요.<br>
--EX) MON123     <br>
--월요일 123교시 라는 뜻으로 해석.<br>
--화요일 345교시면 TUE345 라고 표기 하겠습니당ㅇㅈ?<br>
--전공과목일 경우 3학점이기때문에.<br>
--교양일 경우 2학점이므로                  TUE012<br>
--                                        0교시는 없다 치고. 12교시 라는뜻.<br></td>
			</tr>
			<tr>
				<td id="td" width="150" align="center">과목 코드</td>
				<td id="td" width="150" align="center"><input type="text"
					name="sub_code"></td>
			</tr>
			<tr>
				<td id="td" width="150" align="center">과 목 명</td>
				<td id="td" width="150" align="center"><input type="text"
					name="sub_name"></td>
			</tr>
			<tr>
				<td id="td" width="150" align="center">학 점</td>
				<td id="td" width="150" align="center"><input type="text"
					name="sub_hakjum"></td>
			</tr>
			<tr  id="td">
				<td id="td" width="150" align="center">담당 교수</td>
				<td id="td" width="150" align="center"><input type="text"
					name="emp_name"></td>
			</tr>
			<tr>
				<td id="td" width="150" align="center">강의 시간</td>
				<td id="td" width="150" align="center"><input type="text"
					name="sub_time"></td>
			</tr>
		</table>
		<br>
		<table>
			<tr>
				<td width="300" colspan="2" align="center"><input type="submit"
					value=" 개 설 "></td>
			</tr>
		</table>
		<table  id="memo" style="visibility:hidden;">
	<td>--여기서 과목코드 ( sub_code 생성조건.)<br>
--EX) COM101   ( 전공 과목 )					|--KYO201	( 교양 과목 ) <br>
-- com == 학과 이름					|--KYO == 교양과목이라는 뜻<br>
-- 1 == 1학년 과목 						|--2 == 교양 과목은 3가지 종류가 있다. 그것에 대한 인덱스 "1, 2, 3" 이 있음<br>
-- 01 == 과목 Index						|--01 == 과목 Index.<br>

--시간에 관한 코드?? 이렇게 해석하세요.<br>
--EX) MON123     <br>
--월요일 123교시 라는 뜻으로 해석.<br>
--화요일 345교시면 TUE345 라고 표기 하겠습니당ㅇㅈ?<br>
--전공과목일 경우 3학점이기때문에.<br>
--교양일 경우 2학점이므로                  TUE012<br>
--                                        0교시는 없다 치고. 12교시 라는뜻.<br></td>
</table>
	</form>
	
</body>
</html>