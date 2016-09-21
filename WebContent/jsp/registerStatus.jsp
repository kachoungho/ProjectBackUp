<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<HEAD>
<TITLE></TITLE>
<link href="/css/style.css" rel="stylesheet" type="text/css"> 
<SCRIPT LANGUAGE="JavaScript">
<!--
	function fDetail(year, hakgi)
	{
			var frm = iffee.document.fee_iframe;
			var hakbun = document.collage_register_fee.hakbun.value;
			
			frm.method = "post";
			frm.action = "collage_register_fee_iframe.jsp?hakbun=" + hakbun + "&year=" + year + "&hakgi=" + hakgi;
			frm.target = "iffee";
			frm.submit();
	}
//-->
</SCRIPT>
</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0 >
<form name="collage_register_fee" method="post">
<input type="hidden" name="hakbun" value="0991068">
	<table border="0" width="98%" cellspacing="0" cellpadding="0" valign="top" align="center">
		<tr>
			<td colspan="2" height="15">&nbsp;</td>
		</tr>	
		<tr>
			<td width="13">&nbsp;</td>
			<td>
				<table  width="400" bgcolor="#737373" cellspacing="1" cellpadding="3" height="20" valign="center">
					<tr> 
						<td height="25" bgcolor="#D0D8FF" width="50" align="center">년도</td>
						<td bgcolor="#D0D8FF" width="50" align="center">학기</td>
						<td bgcolor="#D0D8FF" width="100" align="center">등록학년</td>
						<td bgcolor="#D0D8FF" width="120" align="center">등록일자</td>
						<td bgcolor="#D0D8FF" width="100" align="center">등록구분</td>
						<td bgcolor="#D0D8FF" width="100" align="center">상세보기</td>
					</tr>
					
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2009</td>
							<td bgcolor="#F5F5F5" width="50" align="center">1</td>
							<td bgcolor="#F5F5F5" width="60" align="center">1</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2009-03-01</td>
							<td bgcolor="#F5F5F5" width="60" align="center"></td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2009,1);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2009</td>
							<td bgcolor="#F5F5F5" width="50" align="center">2</td>
							<td bgcolor="#F5F5F5" width="60" align="center">1</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2009-08-17</td>
							<td bgcolor="#F5F5F5" width="60" align="center"></td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2009,2);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2010</td>
							<td bgcolor="#F5F5F5" width="50" align="center">1</td>
							<td bgcolor="#F5F5F5" width="60" align="center">2</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2010-02-16</td>
							<td bgcolor="#F5F5F5" width="60" align="center"></td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2010,1);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2010</td>
							<td bgcolor="#F5F5F5" width="50" align="center">2</td>
							<td bgcolor="#F5F5F5" width="60" align="center">2</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2010-08-09</td>
							<td bgcolor="#F5F5F5" width="60" align="center"></td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2010,2);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2012</td>
							<td bgcolor="#F5F5F5" width="50" align="center">2</td>
							<td bgcolor="#F5F5F5" width="60" align="center">2</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2012-08-05</td>
							<td bgcolor="#F5F5F5" width="60" align="center">대체납부</td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2012,2);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2013</td>
							<td bgcolor="#F5F5F5" width="50" align="center">1</td>
							<td bgcolor="#F5F5F5" width="60" align="center">3</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2013-02-14</td>
							<td bgcolor="#F5F5F5" width="60" align="center"></td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2013,1);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2013</td>
							<td bgcolor="#F5F5F5" width="50" align="center">2</td>
							<td bgcolor="#F5F5F5" width="60" align="center">3</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2013-08-16</td>
							<td bgcolor="#F5F5F5" width="60" align="center"></td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2013,2);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2014</td>
							<td bgcolor="#F5F5F5" width="50" align="center">1</td>
							<td bgcolor="#F5F5F5" width="60" align="center">3</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2014-02-02</td>
							<td bgcolor="#F5F5F5" width="60" align="center">대체납부</td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2014,1);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2014</td>
							<td bgcolor="#F5F5F5" width="50" align="center">2</td>
							<td bgcolor="#F5F5F5" width="60" align="center">4</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2014-08-20</td>
							<td bgcolor="#F5F5F5" width="60" align="center"></td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2014,2);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2015</td>
							<td bgcolor="#F5F5F5" width="50" align="center">1</td>
							<td bgcolor="#F5F5F5" width="60" align="center">4</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2015-02-23</td>
							<td bgcolor="#F5F5F5" width="60" align="center"></td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2015,1);return false;"></td>
						</tr>
						
						<tr>
							<td bgcolor="#F5F5F5" height="20" bgcolor="#D0D8FF" width="50" align="center">2015</td>
							<td bgcolor="#F5F5F5" width="50" align="center">2</td>
							<td bgcolor="#F5F5F5" width="60" align="center">4</td>
							<td bgcolor="#F5F5F5" width="80" align="center">2015-09-29</td>
							<td bgcolor="#F5F5F5" width="60" align="center"></td>
							<td bgcolor="#F5F5F5" width="100" align="center"><input type="image" src="/images/tonicsoft/jik/btnDetail.gif" onClick="fDetail(2015,2);return false;"></td>
						</tr>
						
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" width="100%">
				<!-- iffee 호출(등록사항상세조회)-->			
				<iframe id="iffee" name="iffee" width="98%" height="580" src="collage_register_fee_iframe.jsp?hakbun=0991068&year=2015&hakgi=2" frameborder="0" scrolling="auto"> 
                </iframe>	
			</td>
		</tr>
	</table>
</form>

</body>
</html>