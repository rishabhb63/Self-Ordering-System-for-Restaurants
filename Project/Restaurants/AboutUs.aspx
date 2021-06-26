<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.AboutUs" CodeFile="AboutUs.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="ServicesMenu" Src="ServicesMenu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="sidemenu2" Src="sidemenu2.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AboutUs</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	    <style type="text/css">
            .auto-style3
            {
                font-size: small;
            }
            .auto-style4
            {
                font-family: "Segoe Print";
                font-size: 11pt;
            }
            .auto-style5
            {
                font-family: "Poor Richard";
                font-size: 15pt;
                font-weight: bold;
                color: #800000;
            }
            .auto-style6
            {
                text-align: center;
            }
            .auto-style8
            {
                font-family: "Segoe Print";
            }
        </style>
	    </HEAD>
	<body bgcolor="aliceblue">
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
						<TD vAlign="middle" align="center" width="100%" colSpan="2" height="30" 
                        bgcolor="#0099FF">
							<asp:Panel id="p_1" runat="server" BackColor="#0099FF">
								<uc1:secondmenu id="Secondmenu1" runat="server"></uc1:secondmenu>
							</asp:Panel>
							<asp:Panel id="p_2" runat="server">
								<uc1:sidemenu2 id="Sidemenu21" runat="server"></uc1:sidemenu2>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center" width="100%" height="390">
							<asp:Panel id="Panel5" runat="server" Width="100%" Height="800px" HorizontalAlign="Justify"
								Font-Names="Verdana" Font-Size="X-Small" BackColor="#CCFFFF">
                                <div class="auto-style6">
                                    <span class="auto-style5">Food Ordering Solution</span><span class="auto-style4"><br></br>
                                    </span>
                                </div>
                                <p>
                                    <span class="auto-style3" style="color: black"><span class="auto-style4">This self-service food restaurant will be equipped with a user-friendly touch screen, a credit/debit card reader, and software for completing the process at the backend. For this system there will be a system administrator who will have the rights to enter the menu with their current prevailing prices. He/she can enter anytime in the system by a secured system password to change the menu contents by adding or deleting an item or changing its price.</span></span><p>
                                        <span class="auto-style4" style="line-height: 115%; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; color: black; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Now when the customer enters the restaurant, he will place his order with the help of the touch screen using the intuitive graphical user interface, right from the selection of language till the payment confirmation. He will select from the food options according to his choice and the system will display the payment amount he has to make once he has finished with his order. He will have the option of paying the bill by cash, debit card or a credit card. The user will slide his card and the system will check for the validity of the card and the payment will be made. A receipt will be printed containing the order number and the order will be sent in the kitchen for processing.<p align="center" class="MsoNormal">
                                            <![if !supportLists]>
                                            <span style="font-size:8.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family: Verdana;mso-bidi-font-family:Verdana;color:#383838">
                                                <span style="mso-list:Ignore">1.
    <span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp; 

                                                                                    </span></span></span><![endif]><b><span style="font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#383838">Easy to use and cost effective:</span></b><span style="font-size:8.0pt;font-family:
&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#383838">In the modern world, many people own a mobile, and they love to use it as it has created a tremendous impact on the everyday task and activities they do. Since, mobile has become a daily staple, implementing a system targeting ordering at an instant<span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp; </span>is a useful step. The self ordering system is easy to implement and very cost effective as it helps reduce unwanted hassle and no-more-useful manpower.<p>
                                            </p>
                                            </span>
                                        </p>
                                        <p align="center" class="MsoNormal">
                                            <![if !supportLists]><span style="font-size:8.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:
Verdana;mso-bidi-font-family:Verdana;color:#383838"><span style="mso-list:Ignore">2.<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b><span style="font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#383838">All-in-one waiter:</span></b><span style="font-size:8.0pt;font-family:
&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#383838">The ordering of the POS system acts as the all-in-one server as it receives the order from the customers directly through the placed either on the dining table or in a centralized area. It not only receives the order from the customer but also accepts payment either through the attached card swiper or online payments.<p>
                                            </p>
                                            </span>
                                        </p>
                                        <p align="center" class="MsoNormal">
                                            <![if !supportLists]><span style="font-size:8.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:
Verdana;mso-bidi-font-family:Verdana;color:#383838"><span style="mso-list:Ignore">3.<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b><span style="font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#383838">Customer satisfaction:</span></b><span style="font-size:8.0pt;font-family:
&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#383838">Your patrons are sure to get the utmost satisfaction as the self ordering, or the SOS system allows your customer to select the food of your choice and also to pay from the available options. The customer also can submit their feedback of the food they received.<p>
                                            </p>
                                            </span>
                                        </p>
                                        <p align="center" class="MsoNormal">
                                            <![if !supportLists]><span style="font-size:8.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:
Verdana;mso-bidi-font-family:Verdana;color:#383838"><span style="mso-list:Ignore">4.<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><b><span style="font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#383838">Clean analysis and efficient reports:</span></b><span style="font-size:8.0pt;font-family:
&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Times New Roman&quot;;color:#383838">The ordering or the POS ordering system is not only efficient for the customers but also for the restaurant owners. The system offers various analysis reports of the customers activities that can be used for the betterment of the restaurant’s revenue.<p>
                                            </p>
                                            </span>
                                        </p>
                                        <p class="MsoNormal">
                                            <a href="http://3z.sg/solutions/emenu-ipad-ordering-system/" target="_blank"><span style="font-size:8.0pt;mso-bidi-font-size:11.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;
color:#337AB7;text-decoration:none;text-underline:none">e-Menu and mobile ordering system</span></a><span style="font-size:8.0pt;mso-bidi-font-size:11.0pt;
font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Times New Roman&quot;;color:#383838">&nbsp;</span><span style="font-size:8.0pt;font-family:&quot;Verdana&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:#383838">from 3Z e-Solutions are rated one of the best mobile system employed by the restaurants and hotels around the world. The interface is very innovative as it invokes the appetite of your patrons with colorful and tasty images of delicious food. The system has not only colorful interfaces but also active features like flexible payment options, detailed reports and more.</span><span style="font-family:
&quot;Georgia&quot;,&quot;serif&quot;"><p>
                                            </p>
                                            </span>
                                        </p>
                                        <span class="auto-style4" style="mso-fareast-font-family: &quot;Times New Roman&quot;; mso-bidi-font-family: &quot;Times New Roman&quot;; color: #383838">
                                        <p>
                                        </p>
                                        </span>
                                        <p>
                                        </p>
                                        <span class="auto-style8" style="line-height: 115%; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; color: black; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
                                        <p align="center" class="MsoNormal">
                                            <![if !supportLists]>
                                        </p>
                                        <![endif]></span></span>
                                    </p>
                                </p>
                                </asp:Panel></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30">
							<uc1:Fotter id="Fotter1" runat="server"></uc1:Fotter></TD>
					</TR>
				</TABLE>
			</asp:Panel>
		</form>
	</body>
</HTML>
