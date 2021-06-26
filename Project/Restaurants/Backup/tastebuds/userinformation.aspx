<%@ Page language="c#" Inherits="OnlineFastFood.userinformation" CodeFile="userinformation.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="admin" Src="admin.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>userinformation</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" runat="server">
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
						<TD style="HEIGHT: 397px" vAlign="top" align="center" width="100%" height="397">
							<TABLE id="Table2" cellSpacing="0" cellPadding="0" width="100%" 
                        border="0" bgcolor="#99CCFF">
								<TR>
									<TD align="center">
										<asp:Panel id="dgpanel" runat="server" Width="416px">
											<asp:DataGrid id="DataGrid1" runat="server" Width="415px" Font-Names="Verdana" Font-Size="X-Small"
												AutoGenerateColumns="False" BorderColor="Black" Font-Bold="True">
												<Columns>
													<asp:BoundColumn DataField="userName" HeaderText="userName"></asp:BoundColumn>
													<asp:BoundColumn DataField="emailid" HeaderText="emailid"></asp:BoundColumn>
													<asp:BoundColumn DataField="mobileno" HeaderText="mobileno"></asp:BoundColumn>
													<asp:BoundColumn DataField="address1" HeaderText="address1"></asp:BoundColumn>
													<asp:BoundColumn DataField="address2" HeaderText="address2"></asp:BoundColumn>
													<asp:BoundColumn DataField="city" HeaderText="city"></asp:BoundColumn>
													<asp:BoundColumn DataField="state" HeaderText="state"></asp:BoundColumn>
													<asp:TemplateColumn HeaderText="Delete">
														<ItemTemplate>
															<asp:ImageButton id="ImageButton2" runat="server" ImageUrl="Images/btn_delete.gif" CommandName="delete" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"username")%>' >
															</asp:ImageButton>
														</ItemTemplate>
													</asp:TemplateColumn>
												</Columns>
											</asp:DataGrid>
										</asp:Panel></TD>
								</TR>
								<TR>
									<TD align="center"><asp:Label ID="lbldisplay" runat="server" 
                        Font-Bold="True" Font-Size="Large" ForeColor="#FF0066" /></TD>
								</TR>
							</TABLE>
							<P></P>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="30"></TD>
					</TR>
				</TABLE>
			</asp:panel></form>
	</body>
</HTML>
