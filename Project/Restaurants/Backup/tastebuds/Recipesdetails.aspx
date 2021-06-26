<%@ Register TagPrefix="uc1" TagName="sidemenu2" Src="sidemenu2.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.Recipesdetails" CodeFile="Recipesdetails.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" runat="server" >
				<TABLE id="Table1" height="600" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<TD>
							<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="right" width="100%" height="30">
							<uc1:TimeDate id="TimeDate1" runat="server"></uc1:TimeDate></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="30">
							<uc1:sidemenu2 id="Sidemenu21" runat="server"></uc1:sidemenu2></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="390">
							<TABLE id="Table2" height="380" cellSpacing="0" cellPadding="1" 
                        width="90%" border="0" bgcolor="#CCFFFF">
								<TR>
									<TD vAlign="middle" align="center" width="100%" height="280">
										<asp:datagrid id="DataGrid1" runat="server" Width="408px" AutoGenerateColumns="False" AllowPaging="True"
											OnItemCommand="DataGrid1_ItemCommand" BorderColor="Olive" PageSize="4">
											<AlternatingItemStyle BackColor="White"></AlternatingItemStyle>
											<ItemStyle ForeColor="#0000C0" BackColor="Transparent"></ItemStyle>
											<HeaderStyle Font-Bold="True" ForeColor="Navy" BackColor="Tan"></HeaderStyle>
											<FooterStyle BackColor="Transparent"></FooterStyle>
											<Columns>
												<asp:BoundColumn DataField="recipeid" HeaderText="     RecipeId"></asp:BoundColumn>
												<asp:BoundColumn DataField="recipename" HeaderText="Recipename"></asp:BoundColumn>
												<asp:BoundColumn DataField="cost" HeaderText="Cost"></asp:BoundColumn>
												<asp:TemplateColumn HeaderText="Cart">
													<ItemTemplate>
														<asp:ImageButton id=ImageButton1 runat="server" Height="32px" ImageUrl="Images/Cart.jpg" CommandName="cart" CommandArgument='<%#DataBinder.Eval(Container,"DataItem.recipeid")%>'>
														</asp:ImageButton>
													</ItemTemplate>
												</asp:TemplateColumn>
											</Columns>
											<PagerStyle HorizontalAlign="Center" BackColor="GrayText" Mode="NumericPages"></PagerStyle>
										</asp:datagrid></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="center" width="100%" height="50">
										<asp:label id="Label1" runat="server" Visible="False" Font-Bold="True">Label</asp:label></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="center" width="100%" height="50">
										<asp:button id="Button1" runat="server" Text="ShowCart" onclick="Button1_Click"></asp:button></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="30"></TD>
					</TR>
				</TABLE>
			</asp:panel></form>
	</body>
</HTML>
