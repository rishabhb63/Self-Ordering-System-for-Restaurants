<%@ Page language="c#" Inherits="OnlineFastFood.ManageItems" CodeFile="ManageItems.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="admin" Src="admin.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ManageItems</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" runat="server" BackColor ="#ccffff">
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
						<TD vAlign="top" align="center" width="100%" height="390">
							<TABLE id="Table2" cellSpacing="0" cellPadding="0" width="100%" 
                        border="0" bgcolor="#CCFFFF">
								<TR>
									<TD style="HEIGHT: 37px" align="right">
										<asp:LinkButton id="LinkButton1" runat="server" Font-Names="Verdana" Font-Size="X-Small" onclick="LinkButton1_Click">Add New items</asp:LinkButton></TD>
								</TR>
								<TR>
									<TD align="center">
										<asp:Panel id="dgpanel" runat="server" Width="416px">
											<asp:DataGrid id="DataGrid1" runat="server" Width="415px" Font-Names="Verdana" Font-Size="X-Small"
												AutoGenerateColumns="False" BorderColor="Black" Font-Bold="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
												<Columns>
													<asp:BoundColumn DataField="recipeid" HeaderText="ItemId"></asp:BoundColumn>
													<asp:BoundColumn DataField="recipename" HeaderText="ItemName"></asp:BoundColumn>
													<asp:BoundColumn DataField="cost" HeaderText="Cost"></asp:BoundColumn>
													<asp:TemplateColumn HeaderText="Delete">
														<ItemTemplate>
															<asp:ImageButton id="ImageButton2" runat="server" ImageUrl="Images/btn_delete.gif" CommandName="delete" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"recipeid")%>' >
															</asp:ImageButton>
														</ItemTemplate>
													</asp:TemplateColumn>
												</Columns>
											</asp:DataGrid>
										</asp:Panel></TD>
								</TR>
								<TR>
									<TD align="center">
										<asp:Panel id="frmpanel" runat="server" Height="44px" Width="384px">
											<TABLE id="Table3" cellSpacing="1" cellPadding="1" width="100%" border="0">
												<TR>
													<TD align="center" width="100%" colSpan="2"><FONT face="Verdana" size="2"><STRONG>Add New 
																Item</STRONG></FONT></TD>
												</TR>
												<TR>
													<TD style="WIDTH: 162px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <FONT face="Verdana" size="2"><STRONG>
																ItemName</STRONG></FONT></TD>
													<TD>
														<asp:TextBox id="txtitemname" runat="server"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD style="WIDTH: 162px; HEIGHT: 61px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <FONT face="Verdana" size="2">
															<STRONG>Description</STRONG></FONT></TD>
													<TD style="HEIGHT: 61px">
														<asp:TextBox id="TextBox1" runat="server" Width="205px" TextMode="MultiLine"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD style="WIDTH: 162px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT face="Verdana" size="2"><STRONG>
																Cost</STRONG></FONT></TD>
													<TD>
														<asp:TextBox id="txtitemcost" runat="server"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD style="WIDTH: 162px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <STRONG><FONT face="Verdana" size="2">
																Image</FONT></STRONG></TD>
													<TD><INPUT id="f1" style="WIDTH: 246px; HEIGHT: 22px" type="file" size="21" name="f1" runat="server"></TD>
												</TR>
												<TR>
													<TD style="WIDTH: 162px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
													<TD></TD>
												</TR>
												<TR>
													<TD style="WIDTH: 162px"></TD>
													<TD></TD>
												</TR>
												<TR>
													<TD align="center" width="100%" colSpan="2">
														<asp:Button id="Button1" runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"
															Text="Add" onclick="Button1_Click"></asp:Button>
														<asp:Button id="Button2" runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"
															Text="Back" onclick="Button2_Click"></asp:Button></TD>
												</TR>
											</TABLE>
										</asp:Panel></TD>
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
