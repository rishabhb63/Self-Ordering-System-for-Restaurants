<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.Sample" CodeFile="Sample.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Sample</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 10%; POSITION: absolute; TOP: 0%" height="600"
				cellSpacing="0" cellPadding="1" width="80%" border="0">
				<TR>
					<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30"></TD>
				</TR>
				<TR>
					<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30"></TD>
				</TR>
				<TR>
					<TD vAlign="top" align="center" width="100%" height="510">
						<TABLE id="Table2" height="510" cellSpacing="1" cellPadding="1" width="100%" border="1">
							<TR>
								<TD style="WIDTH: 100%; HEIGHT: 274px" vAlign="middle" align="center"></TD>
							<TR>
								<TD style="WIDTH: 100%; HEIGHT: 170px"></TD>
							<TR>
								<TD style="WIDTH: 100%; HEIGHT: 170px"></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<asp:Button id="Button1" style="Z-INDEX: 103; LEFT: 16px; POSITION: absolute; TOP: 64px" runat="server"
				Text="Button" onclick="Button1_Click"></asp:Button>
			<asp:TextBox id="TextBox1" style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server"></asp:TextBox>
		</form>
	</body>
</HTML>
