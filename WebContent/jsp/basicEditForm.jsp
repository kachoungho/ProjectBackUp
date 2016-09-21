<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>th125 JSP Template</title>
</head>
<body>

	<table width="670" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>
	<!-- 학생정보 테이블 -->
	<table width="670" border="0" cellspacing="1" cellpadding="2"
		bgcolor="#737373">


		<tr bgcolor="#F5F5F5" align="center">

			<td width="90" colspan="2" rowspan="10">
			<img name="sajin" width="130" height="170" src=""><!-- 경로 입력요망 -->
			</td>

			<td width="100" bgcolor="#D0D8FF" height="20">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명</td>
			<td width="171" align="left">이종상</td> <!-- 데이터 얻어 와야할 곳 -->
			<td width="120" bgcolor="#D0D8FF">전공명</td>
			<td width="250" colspan="3" align="left">&nbsp;멀티미디어공학과&nbsp;
			</td><!-- {데이터 얻어 와야할 곳 -->
		</tr>

		<tr bgcolor="#F5F5F5" align="center">

			<td width="120" bgcolor="#D0D8FF" height="20">생년월일</td>
			<td width="171">1989-04-18</td><!-- {데이터 얻어 와야할 곳} -->

			<td width="120" bgcolor="#D0D8FF">학&nbsp;&nbsp;&nbsp;년</td>
			<td width="85">&nbsp;4</td><!-- {데이터 얻어 와야할 곳} -->
			<td width="52" bgcolor="#D0D8FF">상&nbsp;태</td>
			<td width="101">&nbsp;재학</td><!-- {데이터 얻어 와야할 곳} -->
		</tr>

		<tr bgcolor="#F5F5F5" align="center">
			<td width="120" bgcolor="#D0D8FF" height="20">휴 대 폰</td>
			<td width="171" align="left">&nbsp;<input type="text" name="editTel"  onsubmit=" 여기에 경로..."></td>
			<td width="120" bgcolor="#D0D8FF">이 메 일</td>
			<td width="250" colspan="3" align="left">&nbsp;<input type="text" name="editEmail"  onsubmit=" 여기에 경로..."></td>
		</tr>
		<tr bgcolor="#F5F5F5" align="center">
			<td width="68" bgcolor="#D0D8FF" height="20">주 소</td>
			<td width="591" colspan="5" align="left">&nbsp;<input size="50px" type="text" name="editAddress"  onsubmit=" 여기에 경로..."></td><!-- {데이터 얻어 와야할 곳} -->
		</tr>
		<tr bgcolor="#F5F5F5" align="center">
			<td width="120" bgcolor="#D0D8FF" height="20">유선전화</td>
			<td width="171" colspan="6" align="left">&nbsp;<input type="text" name="editHomeTel"  onsubmit=" 여기에 경로..."></td><!-- {데이터 얻어 와야할 곳} -->
		</tr>
	
	</table>
	</td>
		</tr>
	<tr>
		<td>
		<input type="submit" value="수정"  > <!-- 수정하세여~  -->
		<input type="reset"  value="취소"   > <!-- 수정하세여~  -->
		</td>
	</tr>
	</table>
	
</body>
</html>