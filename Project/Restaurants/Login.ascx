<%@ Control Language="c#" Inherits="OnlineFastFood.Login" CodeFile="Login.ascx.cs" %>
<style type="text/css">
    .auto-style1
    {
        font-family: "Berlin Sans FB";
        font-size: small;
    }
</style>
<P>
	<asp:Panel id="Panel1" runat="server" Width="29%" Height="150px" BorderWidth="1" BorderColor="Gray">
		<TABLE id="Table2" style="WIDTH: 310px; height: 162px;" cellSpacing="0" cellPadding="1" border="0" bgcolor="#99CCFF">
			<TR>
				<TD style="WIDTH: 341px; HEIGHT: 14px" align="center" colSpan="2">
					<asp:label id="lblogin" runat="server" ForeColor="Black" Font-Size="X-Small" Font-Underline="True" style="font-size: 15pt; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; color: #008000">Customer Login</asp:label></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 341px; HEIGHT: 14px" align="center" colSpan="2"></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 83px; HEIGHT: 19px" align="center">
					<asp:label id="lbuserid" Width="68px" runat="server" ForeColor="Black" Font-Size="X-Small" CssClass="auto-style1">User Name</asp:label></TD>
				<TD style="WIDTH: 256px; HEIGHT: 19px">
					<asp:textbox id="txtuser" Height="20px" Width="120px" runat="server"></asp:textbox></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 83px; HEIGHT: 32px" align="center">
					<asp:label id="lbpass" runat="server" ForeColor="Black" Font-Size="X-Small" CssClass="auto-style1">Password</asp:label></TD>
				<TD style="WIDTH: 256px; HEIGHT: 32px">
					<asp:textbox id="txtpass" Height="20px" Width="120px" runat="server" TextMode="Password"></asp:textbox>
					<asp:button id="btlogin" BorderColor="White" Height="24px" Width="69px" runat="server" Font-Size="XX-Small"
						BackColor="White" Text="Login" onclick="btlogin_Click" style="font-size: small; font-family: 'Bauhaus 93'"></asp:button></TD>
			</TR>
			<TR>
				<TD style="WIDTH: 83px" align="center">
					<asp:linkbutton id="LinkButton1" runat="server" ForeColor="Black" Font-Size="X-Small" CssClass="linkbutton" onclick="LinkButton1_Click" style="font-family: 'Berlin Sans FB'; font-size: small">NewUser?</asp:linkbutton></TD>
				<TD style="WIDTH: 256px" align="center">
					<asp:linkbutton id="lbchangepass" runat="server" ForeColor="Black" Font-Size="X-Small" CssClass="linkbutton" onclick="lbchangepass_Click" style="font-family: 'Berlin Sans FB'; font-size: small">Forgot Password</asp:linkbutton></TD>
			</TR>
			<tr>
                <td colspan="2">
                    <asp:Label ID="lbldisplay" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0033CC" />

                </td>
			</tr>
		</TABLE>
	</asp:Panel>
</P>
