<%@ page contentType="text/html;charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html><body><center>	
<h1>�� �б� </h1><p>
<img src="reasources/images/logo.jpg">
<TABLE BORDER=2 CELLSPACING=2 CELLPADDING = 2>
 		<TR>
				<TH WIDTH=200>NUM</TH><TD  width=300 align=center>${b.getNum() }</TD>
				<TH WIDTH=300>PASS</TH><TD width=300 align=center>${b.getPass() }</TD>
				
		</TR> 
				<TR>
				<TH WIDTH=300>NAME</TH><TD width=300 align=center>${b.getName() }</TD>
				<TH WIDTH=200>WDATE</TH><TD width=300 align=center>${b.getWdate() }</TD>
				
				</TR>
		<TR>
					<TH WIDTH=200>TITLE</TH>
					<TD COLSPAN=3>${b.getTitle() }</TD>
		</TR>
		<TR>
					<TH WIDTH=200>CONTENT</TH>
			<TD COLSPAN=3><textarea readonly cols=120 rows=20>${b.getContent() }</textarea></TD>
		</TR> 
			<TR>
				<TH WIDTH=500>COUNT</TH>
				<TD COLSPAN=3 align=center>${b.getCount() }</TD>
				
			</TR>		
	</TABLE><br>
	<br><a href="listNotice.food">��üȭ��</a>&nbsp;&nbsp;&nbsp;	
	<br><a href="deleteNotice.food?num=${b.getNum() }">�����ϱ�</a>&nbsp;&nbsp;&nbsp;	
	
	</center></body></html>
</table>
