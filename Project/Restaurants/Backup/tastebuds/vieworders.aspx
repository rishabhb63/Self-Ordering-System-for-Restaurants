<%@ Register TagPrefix="uc1" TagName="admin" Src="admin.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.vieworders" CodeFile="vieworders.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>vieworders</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" runat="server">
				<TABLE id="Table1" height="600" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<TD >
							<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="right" width="100%" height="30">
							<uc1:TimeDate id="TimeDate1" runat="server"></uc1:TimeDate></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="30">
							<uc1:admin id="Admin1" runat="server"></uc1:admin></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center" width="100%" height="390" bgcolor="#99CCFF">
							<P>
								<TABLE id="Table2" style="WIDTH: 765px; HEIGHT: 136px" cellSpacing="0" cellPadding="0"
									width="765" border="0">
									<TR>
										<TD style="WIDTH: 244px; HEIGHT: 36px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<STRONG><FONT face="Verdana" size="2">Select Date:</FONT></STRONG></TD>
										<TD style="HEIGHT: 36px">
											<asp:TextBox id="TextBox1" runat="server"></asp:TextBox>&nbsp;&nbsp;
											<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="Images/calendar.gif"></asp:imagebutton></TD>
										<TD style="HEIGHT: 36px">
											<asp:calendar id="Calendar1" runat="server" BackColor="White" Height="60px" Width="223px" BorderWidth="1px"
												DayNameFormat="FirstLetter" CellPadding="1" BorderColor="Silver" ForeColor="#003399" Font-Names="Verdana"
												Font-Size="8pt" onselectionchanged="Calendar1_SelectionChanged">
												<TodayDayStyle ForeColor="White" BackColor="#99CCCC"></TodayDayStyle>
												<SelectorStyle ForeColor="#336666" BackColor="#99CCCC"></SelectorStyle>
												<NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>
												<DayHeaderStyle Height="1px" ForeColor="#336666" BackColor="#99CCCC"></DayHeaderStyle>
												<SelectedDayStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedDayStyle>
												<TitleStyle Font-Size="10pt" Font-Bold="True" Height="25px" BorderWidth="1px" ForeColor="#CCCCFF"
													BorderStyle="Solid" BorderColor="#3366CC" BackColor="#003399"></TitleStyle>
												<WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
												<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
											</asp:calendar></TD>
									</TR>
									<TR>
										<TD style="HEIGHT: 36px" align="center" width="100%" colSpan="3">
											<asp:Button id="Button1" runat="server" Font-Names="Verdana" Font-Size="X-Small" Text="Display"
												Font-Bold="True" onclick="Button1_Click"></asp:Button></TD>
									</TR>
									<TR>
										<TD align="center" width="100%" colSpan="3">
											<asp:DataGrid id="DataGrid1" runat="server" 
                        Width="414px" BorderColor="Tan" Font-Names="Verdana"
												Font-Size="X-Small" Font-Bold="True" BackColor="LightGoldenrodYellow" 
                        BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" >
                                                <FooterStyle BackColor="Tan" />
                                                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                                    HorizontalAlign="Center" />
                                                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                            </asp:DataGrid>&nbsp;
										</TD>
									</TR>
								</TABLE>
							</P>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="30"></TD>
					</TR>
				</TABLE>
			</asp:Panel>
		</form>
	</body>
</HTML>
