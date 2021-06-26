<%@ Register TagPrefix="uc1" TagName="sidemenu2" Src="sidemenu2.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.Feedback" CodeFile="Feedback.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Feedback</title>
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
						<TD vAlign="middle" align="right" width="100%" colSpan="2" height="30">
							<uc1:TimeDate id="TimeDate1" runat="server"></uc1:TimeDate></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" colSpan="2" height="30">
							<uc1:sidemenu2 id="Sidemenu21" runat="server"></uc1:sidemenu2></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="390">
							<asp:Panel id="Panel2" runat="server" Height="390px" Width="80%" BorderColor="Black" BorderWidth="1"
													HorizontalAlign="Center">
													<TABLE id="Table3" height="390" cellSpacing="1" cellPadding="1" width="100%" border="0">
														<TR>
															<TD vAlign="middle" align="center" width="100%" colSpan="2">
																<asp:Panel id="Panel5" runat="server" Font-Size="X-Small" Font-Names="Verdana" HorizontalAlign="Left">
																	<DIV align="left">To send us your comments or queries, please fill in the form 
																		below and click the Send Comments button.
																	</DIV>
																</asp:Panel><FONT face="Verdana" size="2">Please Rate The Following Services Based 
																	On Visit</FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" vAlign="middle" align="center" width="196">&#160;</TD>
															<TD width="75%">
																&#160;</TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" vAlign="middle" align="center" width="196">
                                                                <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                <font face="Verdana" size="2">
                                                                <strong>What 
																			prompted you to select The<span 
                                    style="mso-spacerun: yes">&#160; </span>Restaurant?</strong></font></span></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG>
																		<asp:CheckBoxList id="CheckBoxList1" runat="server" Width="184px" Font-Size="X-Small" Font-Names="Verdana">
																			<asp:ListItem Value="Location/convenience">Location/convenience</asp:ListItem>
																			<asp:ListItem Value="Past experience">Past experience</asp:ListItem>
																			<asp:ListItem Value="Reputation">Reputation</asp:ListItem>
																			<asp:ListItem Value="Advertisement">Advertisement</asp:ListItem>
																			<asp:ListItem Value="Other">Other</asp:ListItem>
																		</asp:CheckBoxList></STRONG></FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px; HEIGHT: 46px" vAlign="middle" align="left" width="196" colSpan="2">
																<TABLE id="Table7" style="WIDTH: 600px; HEIGHT: 99px" cellSpacing="1" cellPadding="1" width="600"
																	border="0">
																	<TR>
																		<TD>
                                                                            <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                            <font face="Verdana" size="2">
                                                                            <strong>Service:</strong></font></span></TD>
																		<TD></TD>
																	</TR>
																	<TR>
																		<TD>
                                                                            <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                            <font face="Verdana" size="2">
                                                                            <strong>Timeliness 
																						of service</strong></font></span></TD>
																		<TD>
																			<asp:RadioButtonList id="t" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
																				<asp:ListItem Value="5">5</asp:ListItem>
																				<asp:ListItem Value="4">4</asp:ListItem>
																				<asp:ListItem Value="3">3</asp:ListItem>
																				<asp:ListItem Value="2">2</asp:ListItem>
																				<asp:ListItem Value="1">1</asp:ListItem>
																			</asp:RadioButtonList></TD>
																	</TR>
																	<TR>
																		<TD>
                                                                            <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                            <font face="Verdana" size="2">
                                                                            <strong>Friendliness 
																						of staff:</strong></font></span></TD>
																		<TD>
																			<asp:RadioButtonList id="f" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
																				<asp:ListItem Value="5">5</asp:ListItem>
																				<asp:ListItem Value="4">4</asp:ListItem>
																				<asp:ListItem Value="3">3</asp:ListItem>
																				<asp:ListItem Value="2">2</asp:ListItem>
																				<asp:ListItem Value="1">1</asp:ListItem>
																			</asp:RadioButtonList></TD>
																	</TR>
																	<TR>
																		<TD>
                                                                            <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                            <font face="Verdana" size="2">
                                                                            <strong>Accuracy 
																						of order</strong></font></span></TD>
																		<TD>
																			<asp:RadioButtonList id="a" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
																				<asp:ListItem Value="5">5</asp:ListItem>
																				<asp:ListItem Value="4">4</asp:ListItem>
																				<asp:ListItem Value="3">3</asp:ListItem>
																				<asp:ListItem Value="2">2</asp:ListItem>
																				<asp:ListItem Value="1">1</asp:ListItem>
																			</asp:RadioButtonList></TD>
																	</TR>
																</TABLE>
															</TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196">
                                                                <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                <font face="Verdana" size="2">
                                                                <strong>Comments/Suggestions</strong></font></span></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG>
																		<asp:TextBox id="TextBox6" runat="server" Height="76px" Width="320px" TextMode="MultiLine"></asp:TextBox></STRONG></FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196">
                                                                <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                <font face="Verdana" size="2">
                                                                <strong>Food 
																			&amp; Beverage</strong></font></span></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG></STRONG></FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196">
                                                                <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                <font face="Verdana" size="2">
                                                                <strong>Quality 
																			of food</strong></font></span></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG>
																		<asp:RadioButtonList id="f1" runat="server" Font-Size="X-Small" Font-Names="Verdana" RepeatDirection="Horizontal"
																			AutoPostBack="True">
																			<asp:ListItem Value="5">5</asp:ListItem>
																			<asp:ListItem Value="4">4</asp:ListItem>
																			<asp:ListItem Value="3">3</asp:ListItem>
																			<asp:ListItem Value="2">2</asp:ListItem>
																			<asp:ListItem Value="1">1</asp:ListItem>
																		</asp:RadioButtonList></STRONG></FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196">
                                                                <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                <font face="Verdana" size="2">
                                                                <strong>Quality 
																			of spirits</strong></font></span></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG>
																		<asp:RadioButtonList id="f2" runat="server" Font-Size="X-Small" Font-Names="Verdana" RepeatDirection="Horizontal"
																			AutoPostBack="True">
																			<asp:ListItem Value="5">5</asp:ListItem>
																			<asp:ListItem Value="4">4</asp:ListItem>
																			<asp:ListItem Value="3">3</asp:ListItem>
																			<asp:ListItem Value="2">2</asp:ListItem>
																			<asp:ListItem Value="1">1</asp:ListItem>
																		</asp:RadioButtonList></STRONG></FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196">
                                                                <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                <font face="Verdana" size="2">
                                                                <strong>Quality 
																			of coffee, tea &amp; iced tea</strong></font></span></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG>
																		<asp:RadioButtonList id="f3" runat="server" Font-Size="X-Small" Font-Names="Verdana" RepeatDirection="Horizontal"
																			AutoPostBack="True">
																			<asp:ListItem Value="5">5</asp:ListItem>
																			<asp:ListItem Value="4">4</asp:ListItem>
																			<asp:ListItem Value="3">3</asp:ListItem>
																			<asp:ListItem Value="2">2</asp:ListItem>
																			<asp:ListItem Value="1">1</asp:ListItem>
																		</asp:RadioButtonList></STRONG></FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196">
                                                                <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                                                <font face="Verdana" size="2">
                                                                <strong>Comments/Suggestions</strong></font></span></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG>
																		<asp:TextBox id="TextBox7" runat="server" Height="76px" Width="320px" TextMode="MultiLine"></asp:TextBox></STRONG></FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196"></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG></STRONG></FONT></TD>
														</TR>
														
														
														<TR>
															<TD style="WIDTH: 196px" width="196"></TD>
															<TD width="75%">&nbsp;&nbsp;
																<asp:Button id="Button1" runat="server" 
                                    Font-Size="X-Small" Font-Names="Verdana" Text="Back" 
                                     style="height: 26px" onclick="Button1_Click" ></asp:Button></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196"></TD>
															<TD width="75%"></TD>
														</TR>
													</TABLE>
												</asp:Panel></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" colSpan="2" height="30"></TD>
					</TR>
				</TABLE>
			</asp:Panel>&nbsp;
		</form>
	</body>
</HTML>
