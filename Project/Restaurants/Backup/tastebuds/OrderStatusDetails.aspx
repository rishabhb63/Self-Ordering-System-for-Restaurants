<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="sidemenu2" Src="sidemenu2.ascx" %>
<%@ Page language="c#" Inherits="ONLINEFASTFOODORDERING.OrderStatusDetails" CodeFile="OrderStatusDetails.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
  <HEAD>
		<title>WebForm3</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
  </HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel2" runat="server" >
<TABLE id=Table1 height=600 cellSpacing=0 cellPadding=1 width="100%" border=0>
  <TR>
    <TD >
<uc1:Header id=Header1 runat="server"></uc1:Header></TD></TR>
  <TR>
    <TD vAlign=middle align=right width="100%" height=30>
<uc1:TimeDate id=TimeDate1 runat="server"></uc1:TimeDate></TD></TR>
  <TR>
    <TD vAlign=middle align=center width="100%" height=30>
<uc1:sidemenu2 id=Sidemenu21 runat="server"></uc1:sidemenu2></TD></TR>
  <TR>
    <TD vAlign=middle align=center width="100%" height=390>
      <TABLE id=Table2 style="WIDTH: 445px; HEIGHT: 252px" cellSpacing=0 
      cellPadding=1 width=445 align=center border=0 bgcolor="#99CCFF">
        <TR>
          <TD vAlign=top align=center width="100%" colSpan=2 height=25>
            <P>
<asp:Label id=Label1 runat="server" Width="183px" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True">Order Status Details</asp:Label></P></TD></TR>
        <TR>
          <TD vAlign=middle align=left width="60%" height=25>
<asp:Label id=Label15 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True">Order No</asp:Label></TD>
          <TD vAlign=middle align=left width="40%" height=25>
<asp:Label id=Label16 runat="server" Width="69px" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"></asp:Label></TD></TR>
        <TR>
          <TD vAlign=middle align=left width="60%" height=25>
<asp:Label id=Label2 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True">Order Date</asp:Label></TD>
          <TD vAlign=middle align=left width="40%" height=25>
<asp:Label id=Label17 runat="server" Width="66px" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"></asp:Label></TD></TR>
        <TR>
          <TD vAlign=middle align=left width="60%" height=25>
<asp:Label id=Label3 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True">Order Time</asp:Label></TD>
          <TD vAlign=middle align=left width="40%" height=25>
<asp:Label id=Label18 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"></asp:Label></TD></TR>
        <TR>
          <TD vAlign=middle align=left width="60%" height=25>
<asp:Label id=Label4 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True">Delivery Date</asp:Label></TD>
          <TD vAlign=middle align=left width="40%" height=25>
<asp:Label id=Label19 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"></asp:Label></TD></TR>
        <TR>
          <TD vAlign=middle align=left width="60%" height=25>
<asp:Label id=Label5 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True">Delivery Time</asp:Label></TD>
          <TD vAlign=middle align=left width="40%" height=25>
<asp:Label id=Label20 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"></asp:Label></TD></TR>
        <TR>
          <TD vAlign=middle align=left width="60%" height=25>
<asp:Label id=Label12 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True">Receipent Name</asp:Label></TD>
          <TD vAlign=middle align=left width="40%" height=25>
<asp:Label id=Label27 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"></asp:Label></TD></TR>
        <TR>
          <TD vAlign=middle align=left width="60%" height=25>
<asp:Label id=Label13 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True">Shipping Address</asp:Label></TD>
          <TD vAlign=middle align=left width="40%" height=25>
<asp:Label id=Label28 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"></asp:Label></TD></TR>
        <TR>
          <TD vAlign=middle align=left width="60%" height=25>
<asp:Label id=Label14 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True">Shipping City</asp:Label></TD>
          <TD vAlign=middle align=left width="40%" height=25>
<asp:Label id=Label29 runat="server" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True"></asp:Label></TD></TR>
        <TR>
          <TD vAlign=middle align=center width="100%" colSpan=2 height=25>
<asp:Button id=Button1 runat="server" Height="25px" Width="50%" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True" Text="OK" onclick="Button1_Click"></asp:Button></TD></TR></TABLE></TD></TR>
  <TR>
    <TD vAlign=middle align=center width="100%" 
height=30></TD></TR></TABLE>
			</asp:Panel>
		</form>
	</body>
</HTML>
