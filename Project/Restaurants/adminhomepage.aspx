<%@ Page language="c#" Inherits="OnlineFastFood.adminhomepage" CodeFile="adminhomepage.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="admin" Src="admin.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML xmlns:o>
	<HEAD>
		<title>adminhomepage</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" runat="server">
				<TABLE id="Table1" height="530" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<TD >
							<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="right" width="100%" colSpan="2" height="30">
							<uc1:TimeDate id="TimeDate1" runat="server"></uc1:TimeDate></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" colSpan="2" height="30">
							<uc1:admin id="Admin1" runat="server"></uc1:admin></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" colSpan="2" height="30">
							<asp:Panel id="Panel2" runat="server" Width="100%" Height="96px" 
                        ForeColor="Black" HorizontalAlign="Left"
								Font-Italic="True" Font-Size="Medium" Font-Names="Monotype Corsiva" BackColor="#CCFFFF"> 
      <P class="MsoNormal"><span lang="EN-IN" style="font-size:15.0pt;line-height:115%;
mso-ascii-font-family:Verdana;mso-ascii-theme-font:major-latin;mso-hansi-font-family:
Verdana;mso-hansi-theme-font:major-latin;mso-bidi-font-family:AngsanaUPC">Self Ordering System for Restaurant is a system that applies in a restaurant ordering service. Customer can order their food items online through the website easily. It provides them the convenient way to place the order from anywhere in India.<p>
          </p>
          </span></P>
								<p class="MsoNormal">
									<span lang="EN-IN" style="font-size:15.0pt;line-height:115%;
mso-ascii-font-family:Verdana;mso-ascii-theme-font:major-latin;mso-hansi-font-family:
Verdana;mso-hansi-theme-font:major-latin;mso-bidi-font-family:AngsanaUPC;
color:black">Independent online food ordering companies offer two solutions. One is a software service whereby restaurants purchase database and account management software from the company and manage the online ordering themselves.
                                    <p>
                                    </p>
                                    </span>
								</p>
								<p class="MsoNormal">
									<span lang="EN-IN" style="font-size:15.0pt;line-height:115%;
mso-ascii-font-family:Verdana;mso-ascii-theme-font:major-latin;mso-hansi-font-family:
Verdana;mso-hansi-theme-font:major-latin;mso-bidi-font-family:AngsanaUPC;
color:black">The other solution is an internet-based service whereby restaurants sign contracts with an online food ordering website that may handle orders from many restaurants in a regional or national area.</span>&nbsp;
								</p>								
								</asp:Panel>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center" width="100%" height="140" >
							<DIV>
								<TABLE id="Table2" style="WIDTH: 100%;background-color:#CCFFFF; HEIGHT: 300px" cellSpacing="0" cellPadding="1" border="0" >
									<TR>
										<TD vAlign="top"  align="right">
                                            
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="193px" 
                                                ImageUrl="~/Images/ice_cream3.jpg" Width="178px" />
                                        </TD>
									</TR>
									<%--<TR>
										<TD style="HEIGHT: 165px" vAlign="top" align="center" width="100%" colSpan="2" height="165"></TD>
									</TR>--%>
								</TABLE>
							</DIV>
						</TD>
					</TR>
					
				</TABLE>
			</asp:panel>
		</form>
	</body>
</HTML>
