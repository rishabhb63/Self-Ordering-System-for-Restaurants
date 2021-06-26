<%@ Page language="c#" Inherits="OnlineFastFood.Recipes" CodeFile="Recipes.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="sidemenu2" Src="sidemenu2.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Recipes</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" runat="server" >
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
							<asp:Panel id="p_1" runat="server">
								<uc1:secondmenu id="Secondmenu1" runat="server"></uc1:secondmenu>
							</asp:Panel>
							<asp:Panel id="p_2" runat="server">
								<uc1:sidemenu2 id="Sidemenu21" runat="server"></uc1:sidemenu2>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="390">
							<TABLE id="Table2" height="300" cellSpacing="0" cellPadding="1" 
                        width="80%" border="0" bgcolor="#99CCFF">
								<TR>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label1" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Pizza</asp:Label></TD>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label2" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Burger</asp:Label></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label3" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Chicken 65</asp:Label></TD>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label4" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Chilli Chicken</asp:Label></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label5" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">French Fries</asp:Label></TD>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label6" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Burger Patty</asp:Label></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label7" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Chicken Bullets</asp:Label></TD>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label8" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Pasta</asp:Label></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label9" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Salads</asp:Label></TD>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label10" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Plum Cakes</asp:Label></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label11" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Cookies & Bites</asp:Label></TD>
									<TD vAlign="middle" align="center" width="50%" height="50">
										<asp:Label id="Label12" runat="server" ForeColor="Black" Font-Size="Large" Font-Italic="True"
											Font-Bold="True">Ice Creams & Milk Shakes</asp:Label></TD>
								</TR>
							</TABLE>
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
