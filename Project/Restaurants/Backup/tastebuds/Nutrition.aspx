<%@ Register TagPrefix="uc1" TagName="sidemenu2" Src="sidemenu2.ascx" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.Nutrition_aspx" CodeFile="Nutrition.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Nutrition</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	    <style type="text/css">
            .style3
            {
                height: 174px;
            }
        </style>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" runat="server">
				<TABLE id="Table1" height="600" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<TD vAlign="middle" align="left" width="100%" colSpan="2" height="120">
							<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30" 
                            bgcolor="#CCFFFF"></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30">
							<asp:Panel id="p_1" runat="server">
								<uc1:secondmenu id="Secondmenu1" runat="server"></uc1:secondmenu>
							</asp:Panel>
							<asp:Panel id="p_2" runat="server" BackColor="#CCFFFF">
								<uc1:sidemenu2 id="Sidemenu21" runat="server"></uc1:sidemenu2>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="390">
							<TABLE id="Table2" style="WIDTH: 100%; HEIGHT: 568px" cellSpacing="1" 
                        cellPadding="1" border="0" bgcolor="#99CCFF">
								<TR>
									<TD style="WIDTH: 50%" vAlign="middle" align="center">
										<asp:Label id="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Nutrition</asp:Label></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="center" width="80%" class="style3">
										<asp:Panel id="Panel3" runat="server" Height="167px" Width="100%" 
                                            Font-Names="Verdana" Font-Size="X-Small" BackColor="#CCFFFF">At&nbsp;Online Fast Food®, 
            we take great pride and care to provide you with the best food and 
            dining experience in the quick service restaurant business.<BR>We 
            believe eating sensibly, combined with appropriate exercise, is the 
            best solution for a balanced lifestyle. To help you further, we've 
            provided here useful links to Country Hut nutritional information so 
            you can make informed choices about what to eat.<BR>Pizza can be a 
            part of a well-balanced meal. Ingredients in our pizzas include 
            protein, complex carbohydrates, Vitamin A and calcium. And, 
            depending on the toppings you choose, our pizzas have items from all 
            of the four major food groups - meat, dairy products, fruits and 
            vegetables, and grains! So take a closer look within our menu for 
            suggestions when counting calories and fat grams. </asp:Panel></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 50%" align="center" bgcolor="#CCFFFF">
                                        <A href="http://www.keepitbalanced.com" target="_blank"></A>
                                        <asp:ImageButton ID="ImageButton1" runat="server" 
                                            ImageUrl="~/Images/nutrition.jpg" />
                                        &nbsp;</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30"></TD>
					</TR>
				</TABLE>
			</asp:Panel>&nbsp;
		</form>
	</body>
</HTML>
