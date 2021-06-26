<%@ Page language="c#" Inherits="OnlineFastFood.CartDetails" CodeFile="CartDetails.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="sidemenu2" Src="sidemenu2.ascx" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>CartDetails</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel2" runat="server">
				<TABLE id="Table1" height="600" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="120">
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
							<TABLE id="Table3" borderColor="wheat" height="390" cellSpacing="1" cellPadding="1" width="80%"
								border="0">
								<TR>
									<TD vAlign="top" align="center" width="100%" height="120">
										<asp:datagrid id="DataGrid1" runat="server" Width="100%" 
                        AutoGenerateColumns="False" AllowCustomPaging="True"
											BorderColor="PaleGoldenrod" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
											<ItemStyle ForeColor="#0000C0"></ItemStyle>
											<HeaderStyle Font-Bold="True" ForeColor="Navy" BackColor="Tan"></HeaderStyle>
											<Columns>
												<asp:BoundColumn Visible="False" DataField="recipeid" HeaderText="RecipID"></asp:BoundColumn>
												<asp:BoundColumn DataField="recipename" HeaderText="Recipename"></asp:BoundColumn>
												<asp:BoundColumn DataField="cost" HeaderText="Unit Cost"></asp:BoundColumn>
												<asp:TemplateColumn HeaderText="Quantity">
													<ItemTemplate>
														<asp:TextBox id="TextBox2" runat="server" Text="1" Columns="3"></asp:TextBox>
													</ItemTemplate>
													<EditItemTemplate>
														<asp:TextBox id="TextBox1" runat="server" Text="1"></asp:TextBox>
													</EditItemTemplate>
												</asp:TemplateColumn>
												<asp:ButtonColumn Text="Delete" HeaderText="Delete" CommandName="Delete"></asp:ButtonColumn>
											</Columns>
										</asp:datagrid></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="100%" height="30">
										<asp:label id="Label3" runat="server" Font-Bold="True" ForeColor="Navy">Total Amount :</asp:label>
										<asp:label id="lblAmt" runat="server" Font-Bold="True" ForeColor="Navy"></asp:label></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="100%" height="30">
										<TABLE id="Table4" height="30" cellSpacing="0" cellPadding="1" width="100%" border="0">
											<TR>
												<TD vAlign="middle" align="center" width="50%" height="30"></TD>
												<TD vAlign="middle" align="left" width="30%" height="30">
													<asp:button id="Button1" runat="server" ForeColor="Navy" Text="Recalculate" onclick="Button1_Click"></asp:button></TD>
												<TD vAlign="middle" align="left" width="20%" height="30">
													<asp:button id="Button2" runat="server" Font-Bold="True" ForeColor="ControlDarkDark" Text="Back" onclick="Button2_Click"></asp:button></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="100%" height="30">
										<asp:label id="Label1" runat="server" Font-Bold="True" ForeColor="Navy">Payment type</asp:label>
										<asp:dropdownlist id="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
											<asp:ListItem Value="Select">Select</asp:ListItem>
											<asp:ListItem Value="creditcard">creditcard</asp:ListItem>
											<asp:ListItem Value="Cash">Cash</asp:ListItem>
										</asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="100%" height="150">
										<asp:panel id="Panel1" runat="server" Width="70%" Height="150px">
											<TABLE id="Table2" style="HEIGHT: 90%" cellSpacing="1" cellPadding="1" width="100%" border="1">
												<TR>
													<TD vAlign="middle" align="center" width="100%" colSpan="2" height="30"></TD>
												</TR>
												<TR>
													<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30">
														<asp:Label id="Label6" runat="server" Font-Bold="True">Credit  or Debit Card Information</asp:Label></TD>
												</TR>
												<TR>
													<TD vAlign="middle" align="left" width="50%" height="30">
														<asp:Label id="Label5" runat="server">Card Type</asp:Label></TD>
													<TD vAlign="middle" align="left" width="50%" height="30">
														<asp:DropDownList id="DropDownList2" runat="server" Width="152px" onselectedindexchanged="DropDownList2_SelectedIndexChanged">
															<asp:ListItem Value="Select Card">Select Card</asp:ListItem>
															<asp:ListItem Value="Master Card">Master Card</asp:ListItem>
															<asp:ListItem Value="Visa ">Visa </asp:ListItem>
															<asp:ListItem Value="American Express">American Express</asp:ListItem>
															<asp:ListItem Value="Discover">Discover</asp:ListItem>
														</asp:DropDownList></TD>
												</TR>
												<TR>
													<TD vAlign="middle" align="left" width="50%" height="30">
														<asp:Label id="Label2" runat="server">Card No</asp:Label></TD>
													<TD vAlign="middle" align="left" width="50%" height="30">
														<asp:TextBox id="txtcno" runat="server"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD vAlign="middle" align="left" width="50%" height="30">
														<asp:Label id="Label4" runat="server">VCC No(security code)</asp:Label></TD>
													<TD vAlign="middle" align="left" width="50%" height="30">
														<asp:TextBox id="txtvccno" runat="server"></asp:TextBox></TD>
												</TR>
											</TABLE>
										</asp:panel></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="100%" height="30">
										<asp:button id="Submit" runat="server" Text="Submit" onclick="Submit_Click"></asp:button></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="30"></TD>
					</TR>
				</TABLE>
			</asp:panel></form>
		</FORM>
	</body>
</HTML>
