<%@ Page language="c#" Inherits="OnlineFastFood.adminhomepage" CodeFile="adminhomepage.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="admin" Src="admin.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML xmlns:o>
	<HEAD>
		<title>adminhomepage</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" runat="server">
				<TABLE id="Table1" height="530" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<TD >
							<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="right" width="100%" colSpan="2" height="30">
							<uc1:TimeDate id="TimeDate1" runat="server"></uc1:TimeDate></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" colSpan="2" height="30">
							<uc1:admin id="Admin1" runat="server"></uc1:admin></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" colSpan="2" height="30">
							<asp:Panel id="Panel2" runat="server" Width="100%" Height="96px" 
                        ForeColor="Black" HorizontalAlign="Left"
								Font-Italic="True" Font-Size="Medium" Font-Names="Monotype Corsiva" BackColor="#CCFFFF">Malaysian restaurant which bring to you the 
      varied and exquisite cuisines of the Malaysian Malays, Mandarin Chinese 
      and Tamil Indians under one roof. These diverse cuisines have influenced 
      each other over the years in Malaysia and there should be something that 
      appeals to everyone's tastes all served in our regal house style Malaysia 
      offers a rich variety of cuisines and many visitors to the country remark 
      on the wonderful selection of foods available here. 
      <P>Few Parts of the world have the choice of Asian dining options which are Available in – an ethnic melting 
									pot. The origins of this diverse gastronomic heritage can be traced back to the 
									second half of the 15th century, to the trading Malacca. Even then, Malacca 
									already had a multi-racial population, with traders coming from India,Arabia 
									and other countries in Southeast Asia. These traders had established bases 
									there and their produce, especially spices were in great demand in the West.</P>
								<p>
									In addition, an astonishing array of non-Asian cuisine is also available, in 
									particular, increasingly popular Western dining options. Although Kuala Lumpur 
									currently has more of the restaurants than any other part of the country there 
									are many great eating places all over Malaysia
								</p>
								<p>
									There are many excellent hawker stalls but we have concentrated on the 
									establishments which offer more comfort and ambience. Please give us feedback 
									about new outlets.
								</p>								
								</asp:Panel>
						</TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center" width="100%" height="140" >
							<DIV>
								<TABLE id="Table2" style="WIDTH: 100%;background-color:#CCFFFF; HEIGHT: 300px" cellSpacing="0" cellPadding="1" border="0" >
									<TR>
										<TD vAlign="top"  align="right">
                                            
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="193px" 
                                                ImageUrl="~/Images/ice_cream3.jpg" Width="178px" />
                                        </TD>
									</TR>
									<%--<TR>
										<TD style="HEIGHT: 165px" vAlign="top" align="center" width="100%" colSpan="2" height="165"></TD>
									</TR>--%>
								</TABLE>
							</DIV>
						</TD>
					</TR>
					
				</TABLE>
			</asp:panel>
		</form>
	</body>
</HTML>
