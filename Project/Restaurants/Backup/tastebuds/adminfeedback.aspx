<%@ Register TagPrefix="uc1" TagName="admin" Src="admin.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.adminfeedback" CodeFile="adminfeedback.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>vieworders</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" runat="server">
				<TABLE id="Table1" >
					<TR>
						<TD >
							<uc1:Header id="Header1" runat="server"></uc1:Header></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="right" width="100%" height="30">
							<uc1:TimeDate id="TimeDate1" runat="server"></uc1:TimeDate></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="30" bgcolor="#0099FF">
							<uc1:admin id="Admin1" runat="server"></uc1:admin></TD>
					</TR>
					<TR>
						<TD >
							<P>
								<TABLE >
									<TR>
										<TD style="HEIGHT: 36px" align="center" width="100%" colSpan="" rowSpan="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<FONT face="Verdana" size="2">
                                            <STRONG>Survey</STRONG></FONT></TD>
										<TD style="HEIGHT: 36px">&nbsp;&nbsp;
										</TD>
										<TD style="HEIGHT: 36px"></TD>
									</TR>
									<TR>
										<TD style="HEIGHT: 36px" align="center" width="100%" colSpan="3">
											<asp:Panel id="calpanel" runat="server">
												<TABLE id="Table4" cellSpacing="1" cellPadding="1" width="100%" border="0">
													<TR>
														<TD style="WIDTH: 340px" align="right" colSpan="" rowSpan=""><STRONG><FONT face="Verdana" size="2">Select 
																	Date:</FONT></STRONG></TD>
														<TD>
															<asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
															<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="Images/calendar.gif"></asp:imagebutton></TD>
														<TD>
															<asp:calendar id="Calendar1" runat="server" BackColor="White" Height="60px" Width="223px" Font-Size="8pt"
																Font-Names="Verdana" ForeColor="#003399" BorderColor="Silver" CellPadding="1" DayNameFormat="FirstLetter"
																BorderWidth="1px" onselectionchanged="Calendar1_SelectionChanged">
																<TodayDayStyle ForeColor="White" BackColor="#99CCCC"></TodayDayStyle>
																<SelectorStyle ForeColor="#336666" BackColor="#99CCCC"></SelectorStyle>
																<NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>
																<DayHeaderStyle Height="1px" ForeColor="#336666" BackColor="#99CCCC"></DayHeaderStyle>
																<SelectedDayStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedDayStyle>
																<TitleStyle Font-Size="10pt" Font-Bold="True" Height="25px" BorderWidth="1px" ForeColor="#CCCCFF"
																	BorderStyle="Solid" BorderColor="#3366CC" BackColor="#003399"></TitleStyle>
																<WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
																<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
															</asp:calendar></TD>
													</TR>
													<TR>
														<TD align="center" width="100%" colSpan="3">&nbsp;
															<asp:Button id="Button1" runat="server" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True"
																Text="Display" onclick="Button1_Click"></asp:Button></TD>
													</TR>
												</TABLE>
											</asp:Panel></TD>
									</TR>
									<TR>
										<TD style="HEIGHT: 36px" align="center" width="100%" colSpan="3"></TD>
									</TR>
									<TR>
										<TD align="center" width="100%" colSpan="3">
											<asp:Panel id="dgpanel" runat="server">
												<asp:DataGrid id="DataGrid1" runat="server" Width="414px" Font-Size="X-Small" Font-Names="Verdana"
													BorderColor="Tan" Font-Bold="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderWidth="1px" 
                                                    CellPadding="2" ForeColor="Black" GridLines="None">
													<FooterStyle BackColor="Tan" />
                                                    <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                                        HorizontalAlign="Center" />
                                                    <AlternatingItemStyle BackColor="PaleGoldenrod" />
													<Columns>
														<asp:BoundColumn DataField="surveyid" HeaderText="SurveyId"></asp:BoundColumn>
														<asp:BoundColumn DataField="username" HeaderText="UserName"></asp:BoundColumn>
														<asp:BoundColumn DataField="sdate" HeaderText="Date"></asp:BoundColumn>
														<asp:TemplateColumn HeaderText="View Survey ">
															<ItemTemplate>
																<asp:ImageButton id="ImageButton2" runat="server" ImageUrl="Images/btn_update.gif" CommandName="View" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"surveyid")%>'>
																</asp:ImageButton>
															</ItemTemplate>
														</asp:TemplateColumn>
													</Columns>
												    <HeaderStyle BackColor="Tan" Font-Bold="True" />
												</asp:DataGrid>
											</asp:Panel>
											<asp:Panel id="frmpanel" runat="server">
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
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
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
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
                                                                            <strong>Service:</strong></font></span></TD>
																		<TD></TD>
																	</TR>
																	<TR>
																		<TD>
                                                                            <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
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
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
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
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
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
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
                                                                <strong>Comments/Suggestions</strong></font></span></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG>
																		<asp:TextBox id="TextBox6" runat="server" Height="76px" Width="320px" TextMode="MultiLine"></asp:TextBox></STRONG></FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196">
                                                                <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
                                                                <strong>Food 
																			&amp; Beverage</strong></font></span></TD>
															<TD width="75%"><FONT face="Verdana" size="2"><STRONG></STRONG></FONT></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196">
                                                                <span 
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
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
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
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
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
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
                                                        style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><font 
                                                        face="Verdana" size="2">
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
																<asp:Button id="Button2" runat="server" Font-Size="X-Small" Font-Names="Verdana" Text="Back" onclick="Button2_Click"></asp:Button></TD>
														</TR>
														<TR>
															<TD style="WIDTH: 196px" width="196"></TD>
															<TD width="75%"></TD>
														</TR>
													</TABLE>
												</asp:Panel>
											</asp:Panel>&nbsp;
										</TD>
									</TR>
								</TABLE>
							</P>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="30"></TD>
					</TR>
				</TABLE>
			</asp:Panel>
		</form>
	</body>
</HTML>
