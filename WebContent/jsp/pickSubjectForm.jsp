<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강신청 페이지 입니다.</title>
<!-- 
<style type="text/css">
fieldset {

	
	width: 660px;
	
   color: black;
   border: solid 5px;
   border-color: aqua;
   box-shadow:  5px 5px 5px #a9a9a9;
   border-radius: 20px;
   text-shadow: 3px 3px 3px #a9a9a9;
}

</style> -->
</head>
<body>
	<form action="">
		<fieldset>
			<legend>학년구분</legend>
				<input type="radio"   name="grade"  value="1"  onclick=""> 1학년
				<input type="radio"   name="grade"  value="2"  onclick=""> 2학년
				<input type="radio"   name="grade"  value="3"  onclick=""> 3학년
				<input type="radio"   name="grade"  value="4"  onclick=""> 4학년
		</fieldset>
		<br>
		<fieldset>
			<legend>과목구분</legend>
				<table border="1">
					<tr>
						<td>
							전    공    과	목
						</td>
						<td>
							교    양    과	목	
						</td>
					</tr>
					<tr>						
						<td>
							학과명 : 
							<select name="major"> 
								<option value="학과1"	onclick="넘어가라 저기로~~~~~">학과1</option>
								<option value="학과2">학과2</option>
								<option value="학과3">학과3</option>
								<option value="학과4">학과4</option>
								<option value="학과5">학과5</option>
								<option value="학과6">학과6</option>

							</select>
						</td>
						<td>
							학과명 : 
							<select name="kyoyang"> 
								<option value="교양종류1" onclick="넘어가라 저기로~~~~~">교양종류1</option>
								<option value="교양종류2" >교양종류2</option>
								<option value="교양종류3">교양종류3</option>
								<option value="교양종류4">교양종류4</option>
								<option value="교양종류5">교양종류5</option>
							</select>
						</td>
					</tr> 
			 </table>
		</fieldset>
		<br>
		
		<fieldset>
			
		<!-- taglib 형태로 수정필요
			위에 선택의 결과로 보여지는 페이지로
			DB에서 데이터를 불러와서 데이터를 읽어와야함........? 
		 -->
		<table border="1">
			<tr align="center">
				<td width="100">과목코드</td>
				<td width="200">과 목 명</td>
				<td width="100">교 수 명</td>
				<td width="100">이수구분</td>
				<td width="100">시 간 표</td>
				<td width="100">비     고</td>
			</tr>
			<tr align="center">
				<td>CEO11001</td>
				<td>과목1</td><!-- taglib 형태로 수정필요-->
				<td>이종상</td>
				<td>전공</td><!-- taglib 형태로 수정필요-->
				<td>화요일 123</td><!-- taglib 형태로 수정필요-->
				<td><a href="신청PRO.do">신청</td>
			</tr>
			<tr align="center">
				<td>CEO11002</td>
				<td>과목2</td><!-- taglib 형태로 수정필요-->
				<td>가충호</td>
				<td>교양</td><!-- taglib 형태로 수정필요-->
				<td>수요일 123</td><!-- taglib 형태로 수정필요-->
				<td><a href="신청PRO.do">신청</td>
			</tr>
			<tr align="center">
				<td>CEO11003</td>
				<td>과목3</td><!-- taglib 형태로 수정필요-->
				<td>최상경</td>
				<td>전공</td><!-- taglib 형태로 수정필요-->
				<td>목요일 123</td><!-- taglib 형태로 수정필요-->
				<td><a href="신청PRO.do">신청</td>
			</tr>
			<tr align="center">
				<td>CEO11004</td>
				<td>과목4</td><!-- taglib 형태로 수정필요-->
				<td>박재환</td>
				<td>교양</td><!-- taglib 형태로 수정필요-->
				<td>금요일 123</td><!-- taglib 형태로 수정필요-->
				<td><a href="신청PRO.do">신청</td>
			</tr>
			
		</table>
		<br><br><br><br><br>
		</fieldset>
		<br><br>
		<hr>
		
<!-- ----------------------------------------------------------------------------------------------------------------- -->		
<!-- ----------------------------------------------------------------------------------------------------------------- -->		
		<h3>&nbsp;&nbsp;신 청 과 목 현 황</h3>
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;( 총 신청학점 : \${sss?} / 20 })</h4>
		
		<form action="어디로 보내야할까요???????????????????????????" method = "post">
			과목코드 : <input type = "text" name = "subjectCode"		placeholder = "과목코드 입력">
			<input type = "submit" value = "신청">
		</form>
		<hr>
	
		<table border="1">
			<tr align="center">
				<td width="100">과목코드</td>
				<td width="300">과 목 명</td>
				<td width="100">교 수 명</td>
				<td width="100">이수구분</td>
				<td width="100">시 간 표</td>
			</tr>
			
			<!-- 여기서부터 DB에 따라서 하면됨다요 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ -->
			
			<tr align="center">
				<td>CEO11001</td>
				<td>과목1</td><!-- taglib 형태로 수정필요-->
				<td>이종상</td>
				<td>전공</td><!-- taglib 형태로 수정필요-->
				<td>화요일 123</td><!-- taglib 형태로 수정필요-->
			</tr>
			<tr align="center">
				<td>CEO11002</td>
				<td>과목2</td><!-- taglib 형태로 수정필요-->
				<td>가충호</td>
				<td>교양</td><!-- taglib 형태로 수정필요-->
				<td>수요일 123</td><!-- taglib 형태로 수정필요-->
			</tr>
			<tr align="center">
				<td>CEO11003</td>
				<td>과목3</td><!-- taglib 형태로 수정필요-->
				<td>최상경</td>
				<td>전공</td><!-- taglib 형태로 수정필요-->
				<td>목요일 123</td><!-- taglib 형태로 수정필요-->
			</tr>
			<tr align="center">
				<td>CEO11004</td>
				<td>과목4</td><!-- taglib 형태로 수정필요-->
				<td>박재환</td>
				<td>교양</td><!-- taglib 형태로 수정필요-->
				<td>금요일 123</td><!-- taglib 형태로 수정필요-->
			</tr>
		</table>
		
		
	
	</form>




</body>
</html>