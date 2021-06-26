<%@ Register TagPrefix="uc1" TagName="sidemenu2" Src="sidemenu2.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.HowToOrder" CodeFile="HowToOrder.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>HowToOrder</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" runat="server">
				<TABLE id="Table1" height="600" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<TD >
							<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30" bgcolor="#CCFFFF"></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center" width="100%"  bgcolor="#99CCFF">
							<asp:Panel id="p_1" runat="server">
								<uc1:secondmenu id="Secondmenu1" runat="server"></uc1:secondmenu>
							</asp:Panel>
							<asp:Panel id="p_2" runat="server" BackColor="#CCFFFF">
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="420">
							<TABLE id="Table2" style="WIDTH: 100%; HEIGHT: 420px" cellSpacing="1" 
                        cellPadding="1" border="0" bgcolor="#17B9E8">
								<TR>
									<TD vAlign="middle" align="center">
										<asp:Label id="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Placing An Order</asp:Label></TD>
								</TR>
								<TR>
									<TD bgcolor="#CCFFFF"></TD>
								</TR>
								<TR>
									<TD bgcolor="#CCFFFF">
										<asp:Label id="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">1) Shop First, Register Later </asp:Label></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 67px" bgcolor="#CCFFFF">
										<asp:Panel id="Panel6" runat="server" Height="49px" Font-Names="Verdana" Font-Size="X-Small"><B>
												2<SPAN lang="en-us">)</SPAN> Click on image for a Close-up</B> Once you see 
            something you like click on the image to see the item on a separate 
            page with a detailed description. On this page, you can also see 
            where this item can be sent, under Delivery 
          Information.</asp:Panel></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 36px" bgcolor="#CCFFFF">
										<asp:Panel id="Panel5" runat="server" Font-Names="Verdana" Font-Size="X-Small"><B>3<SPAN lang="en-us">)</SPAN></B> 
                                            <B>Stock 
												your choices on cart or list</B> 
            <SPAN lang="en-us">Y</SPAN>ou have <SPAN lang="en-us">an</SPAN> option 
            of either adding the item to a cart or simply to a list that gets 
            compiled for your present online session.</asp:Panel></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 57px" bgcolor="#CCFFFF">
										<asp:Panel id="Panel7" runat="server" Font-Names="Verdana" Font-Size="X-Small"><B>4<SPAN lang="en-us">)</SPAN></B> 
                                            <B>Finalizing 
												your choices</B> From the List 
            page, you can move your items to the Shopping Cart page. Choosing 
            Checkout will take you to page where you need to confirm your 
            account name and password, or you are not a member, become one by 
            filling in the required fields in the attached 
        form.</asp:Panel></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 58px" bgcolor="#CCFFFF">
										<asp:Panel id="Panel8" runat="server" Font-Names="Verdana" Font-Size="X-Small"><B>5<SPAN lang="en-us">)</SPAN>
												Edit recipient profile</B> You can have your own 
            list of regular recipient, whose profile can be changed/edited as 
            and when required, via the Update button. If its a recipient unknown 
            to us, just feed the required information into the form on the 
            right.</asp:Panel></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 25px" bgcolor="#CCFFFF">
										<asp:Panel id="Panel9" runat="server" Height="16px" Font-Names="Verdana" Font-Size="X-Small"><B>
												<SPAN lang="en-us">6)</SPAN></B> <B>Choose date and time of delivery</B> 
            Specify date and time of delivery<SPAN lang="en-us"> in the relevant form.</SPAN></asp:Panel></TD>
								</TR>
								<TR>
									<TD bgcolor="#CCFFFF">
										<asp:Panel id="Panel10" runat="server" Font-Names="Verdana" Font-Size="X-Small"><B><SPAN lang="en-us">
													7)</SPAN></B> <B>Check out and Continue to billing</B> A quick check of the items is followed 
            by the billing page where you enter your credit card information. 
            The<SPAN lang="en-us">n,</SPAN>leave the rest to us. Don&apos;t forget to 
            read our security transaction information to take a look at the 
            measures we take to safeguard confidential 
          information.</asp:Panel></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30">
							<uc1:Fotter id="Fotter1" runat="server"></uc1:Fotter></TD>
					</TR>
				</TABLE>
			</asp:Panel>&nbsp;
		</form>
	</body>
</HTML>
