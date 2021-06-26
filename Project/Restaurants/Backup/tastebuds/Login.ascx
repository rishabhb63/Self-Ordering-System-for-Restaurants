<%@ Control Language="c#" Inherits="OnlineFastFood.Login" CodeFile="Login.ascx.cs" %>
<P>
	<asp:Panel id="Panel1" runat="server" Width="29%" Height="150px" 
    BorderWidth="1" BorderColor="Gray">
		<TABLE id="Table2" style="WIDTH: 310px; height: 162px;" cellSpacing="0" cellPadding="1"
			border="0" bgcolor="#99CCFF">
			<TR>
				<TD style="WIDTH: 341px; HEIGHT: 14px" align="center" colSpan="2">
					<asp:label id="lblogin" runat="server" ForeColor="Black" Font-Size="X-Small" Font-Underline="True">Customer Login</asp:label></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 341px; HEIGHT: 14px" align="center" colSpan="2"></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 83px; HEIGHT: 19px" align="center">
					<asp:label id="lbuserid" Width="68px" runat="server" ForeColor="Black" Font-Size="X-Small">User Name</asp:label></TD>
				<TD style="WIDTH: 256px; HEIGHT: 19px">
					<asp:textbox id="txtuser" Height="20px" Width="120px" runat="server"></asp:textbox></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 83px; HEIGHT: 32px" align="center">
					<asp:label id="lbpass" runat="server" ForeColor="Black" Font-Size="X-Small">Password</asp:label></TD>
				<TD style="WIDTH: 256px; HEIGHT: 32px">
					<asp:textbox id="txtpass" Height="20px" Width="120px" runat="server" TextMode="Password"></asp:textbox>
					<asp:button id="btlogin" BorderColor="White" Height="20px" Width="35px" runat="server" Font-Size="XX-Small"
						BackColor="White" Text="Login" onclick="btlogin_Click"></asp:button></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 83px" align="center">
					<asp:linkbutton id="LinkButton1" runat="server" ForeColor="Black" Font-Size="X-Small" CssClass="linkbutton" onclick="LinkButton1_Click">NewUser?</asp:linkbutton></TD>
				<TD style="WIDTH: 256px" align="center">
					<asp:linkbutton id="lbchangepass" runat="server" ForeColor="Black" Font-Size="X-Small" CssClass="linkbutton" onclick="lbchangepass_Click">Forgot Password</asp:linkbutton></TD>
			</TR>
			<tr><td colspan="2"><asp:Label ID="lbldisplay" runat="server" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#0033CC" /></td></tr>
		</TABLE>
	</asp:Panel></P>
