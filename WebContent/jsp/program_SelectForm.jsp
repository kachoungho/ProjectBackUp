<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>강의계획서</title>
</head>
<body>

전공:<select name="department">
			<% int i =0; %>
			<% while(i < 10){ %>
				<option value="<%=i%>"><%=i+"번 학과"%></option>
			<% 
			   i++;
			   }
			%>
		</select>
<table width='400' border='1'>
<tr bgcolor="#A9BCF5">
 <th> 연번 </th>
 <th> 학년도 </th>
 <th> 학기 </th>
 <th> 과목코드 </th>
 <th> 과목명 </th>
 <th> 강의계획서 </th>
 </tr>
<tr>
	<td>1</td>
	<td>2016</td>
	<td>1</td>
	<td>11q1</td>
	<td>java</td>
	<td><input type="button" value ="강의계획서"/></td>
</tr>
<tr>
	<td>2</td>
	<td>2016</td>
	<td>1</td>
	<td>11q1</td>
	<td>jsp</td>
	<td><input type="button" value ="강의계획서"/></td>
</tr>

<tr>
	<td>3</td>
	<td>2016</td>
	<td>1</td>
	<td>11q1</td>
	<td>html</td>
	<td><input type="button" value ="강의계획서"/></td>
</tr>
<tr>
	<td>4</td>
	<td>2016</td>
	<td>1</td>
	<td>11q1</td>
	<td>spring</td>
	<td><input type="button" value ="강의계획서"/></td>
</tr>

</table>
</body>
</html>