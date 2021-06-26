<%@ Register TagPrefix="uc1" TagName="Login" Src="Login.ascx" %>
<%@ Register TagPrefix="uc1" TagName="BackGroundImage" Src="BackGroundImage.ascx" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.WebForm1" CodeFile="HomePage.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="True" name="vs_snapToGrid">
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	    <style type="text/css">
            .style6
            {
                width: 270px;
                height: 121px;
            }
            #Table2
            {
                width: 958px;
            }
            .style7
            {
                width: 252px;
            }
            .style8
            {
                height: 150px;
            }
            </style>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 101; LEFT: 10%;  TOP: 0%" runat="server" Height="100%" Width="100%" BorderWidth="1" BorderColor="Black">
				<TABLE id="Table1" height="530" cellSpacing="0" cellPadding="1" width="100%">
					<TR>
						<TD class="style8" >
							<uc1:header id="Header1" runat="server"></uc1:header></TD>
					</TR>
					<TR>
						<TD style="HEIGHT: 15px" vAlign="middle" align="right" width="100%" height="31" bgcolor="#CCFFFF">
							<uc1:TimeDate id="TimeDate1" runat="server"></uc1:TimeDate></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center" width="100%"  bgcolor="#99CCFF">
							<uc1:secondmenu id="Secondmenu1" runat="server"></uc1:secondmenu>
				        </TD>
					</TR>
					<TR>
						<TD vAlign="top"  width="100%" height="150">
						    <TABLE id="Table2" >
								<tr>
                                    <td valign="top" class="style7" bgcolor="#CCFFFF">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="305px" ImageUrl="~/Images/fast-food-restaurant.jpg" Width="395px" />
                                    </td>
									
						<TD vAlign="middle" align="right" width="300" class="style6" rowspan="2" bgcolor="#CCFFFF">
						    <uc1:login id="Login1" runat="server"></uc1:login></TD>				
					</TR>
									
									
									<%--<tr><td valign="top">
                                        &nbsp;</td>
									
									    <td valign="top" >
                                            &nbsp;</td>--%>
									
									
									
									
                            </TABLE>
			            </TD>
		            </TR>
		            <TR>
		                <TD >
							<uc1:Fotter id="Fotter1" runat="server"></uc1:Fotter></TD>
					</TR>
				</TABLE>
			</asp:panel>
		</form>
	</body>
</HTML>
