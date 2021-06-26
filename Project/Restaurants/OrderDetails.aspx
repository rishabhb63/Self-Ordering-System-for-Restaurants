<%@ Page language="c#" Inherits="ONLINEFASTFOODORDERING.WebForm1" CodeFile="OrderDetails.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="sidemenu2" Src="sidemenu2.ascx" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="javascript">
			
		function test()
		{					
			
				
			if(Date.parse(Form1.TextBox2.value)>Date.parse(Form1.TextBox4.value))
			{
				alert("Delivery Date Should be greater than Order Date")
				Form1.TextBox4.focus();
				Form1.TextBox4.value="";				
				return false;
			}
	
		//recipie name
			if((Form1.TextBox12.value=="")||(Form1.TextBox12.value.length==null))
				{
					alert("Enter Recipie Name");
					Form1.TextBox12.focus();
					Form1.TextBox12.value="";
					return false;
				}
			if ((Form1.TextBox12.value.substring(0,1)==".")||(Form1.TextBox12.value.substring(0,1)==" ")||(Form1.TextBox12.value.substring(0,1)==","))
					{
						alert("Recipie Name doesnot allow special charecters")
						Form1.TextBox12.value="";
						Form1.TextBox12.focus();
						return false;
					}
	var str=Form1.TextBox12.value;
		for(i=0;i<str.length;i++)
		{
			ch=str.substring(i,i+1)
			if(ch==" ")
			{
				ch1=str.substring(i+1,i+2)
				if(ch1==" ")
				{
					alert("Double Space");
					ch2=str.substring(0,i+2);
					Form1.TextBox12.focus();
					return false;
				}						
			}
		}
	var checkOK = "123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.' ";
	var checkStr = Form1.TextBox12.value;
	var allValid = true;
		for (i = 0;  i < checkStr.length;  i++)
		{
			ch = checkStr.charAt(i);
			for (j = 0;  j < checkOK.length;  j++)
			if (ch == checkOK.charAt(j))
			break;
			if (j == checkOK.length)
			{
				allValid = false;
				break;
			}
		}
		if (!allValid)
		{
			alert("Please Enter AlphaNumeric Charecters Only  in Recipie Name");
			Form1.TextBox12.focus();
			Form1.TextBox12.value="";
			return false;
		}
		if(Form1.TextBox12.value.substring(0,1)=="0" || Form1.TextBox12.value.substring(0,1)=="1" || Form1.TextBox12.value.substring(0,1)=="2" ||Form1.TextBox12.value.substring(0,1)=="3" || Form1.TextBox12.value.substring(0,1)=="4" || Form1.TextBox12.value.substring(0,1)=="5" || Form1.TextBox12.value.substring(0,1)=="6" || Form1.TextBox12.value.substring(0,1)=="7" || Form1.TextBox12.value.substring(0,1)=="8" || Form1.TextBox12.value.substring(0,1)=="9" )
		{
			alert("First letter should not be a Number");
			Form1.TextBox12.focus();
			Form1.TextBox12.value="";
			return false;
		}
		if((Form1.TextBox12.value.substring(0,1)=="!")||(Form1.TextBox12.value.substring(0,1)=="@")||(Form1.TextBox12.value.substring(0,1)=="#")||(Form1.TextBox12.value.substring(0,1)=="$")||(Form1.TextBox12.value.substring(0,1)=="%")||(Form1.TextBox12.value.substring(0,1)=="&")||(Form1.TextBox12.value.substring(0,1)=="^")||(Form1.TextBox12.value.substring(0,1)=="*")||(Form1.TextBox12.value.substring(0,1)=="(")||(Form1.TextBox12.value.substring(0,1)==")")||(Form1.TextBox12.value.substring(0,1)=="_")||(Form1.TextBox12.value.substring(0,1)=="+")||(Form1.TextBox12.value.substring(0,1)=="=")||(Form1.TextBox12.value.substring(0,1)=="{") ||(Form1.TextBox12.value.substring(0,1)=="}")||(Form1.TextBox12.value.substring(0,1)=="]")||(Form1.TextBox12.value.substring(0,1)=="[")||(Form1.TextBox12.value.substring(0,1)==":")||(Form1.TextBox12.value.substring(0,1)=="'")||(Form1.TextBox12.value.substring(0,1)=="<")||(Form1.TextBox12.value.substring(0,1)==">")||(Form1.TextBox12.value.substring(0,1)=="/")||(Form1.TextBox12.value.substring(0,1)=="?")||(Form1.TextBox12.value.substring(0,1)=="|")||(Form1.TextBox12.value.substring(0,1)=="`")||(Form1.TextBox12.value.substring(0,1)=="~"))
		{
			alert("Recipie Name doesn't allow special characters");
			Form1.TextBox12.focus();
			Form1.TextBox12.value="";
			return false;
		}
		if ((Form1.TextBox12.value.length<3)||(Form1.TextBox12.value.length>35))
		{
			alert("Length of the Recipient name should be in between 3-35")
			Form1.TextBox12.value="";
			Form1.TextBox12.focus();
			return false;
		}
   
      //address
   
      if((Form1.TextBox13.value=="")||(Form1.TextBox13.value.length==null))
		{
			alert("Enter Shipping Address");
			Form1.TextBox13.focus();
			Form1.TextBox13.value="";
			return false;
		}
   if ((Form1.TextBox12.value.substring(0,1)==".")||(Form1.TextBox12.value.substring(0,1)==" ")||(Form1.TextBox12.value.substring(0,1)==","))
		{
			alert("doesnot allow special charecters")
			Form1.TextBox13.value="";
			Form1.TextBox13.focus();
			return false;
		}
	var str=Form1.TextBox13.value;
		for(i=0;i<str.length;i++)
		{
			ch=str.substring(i,i+1)
			if(ch==" ")
			{
				ch1=str.substring(i+1,i+2)
				if(ch1==" ")
				{
					alert("Double Space");
					ch2=str.substring(0,i+2);
					Form1.TextBox13.focus();
					return false;
				}						
			}
		}
	var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.";
	var checkStr = Form1.TextBox13.value;
	var allValid = true;
		for (i = 0;  i < checkStr.length;  i++)
		{
			ch = checkStr.charAt(i);
			for (j = 0;  j < checkOK.length;  j++)
			if (ch == checkOK.charAt(j))
			break;
			if (j == checkOK.length)
			{
				allValid = false;
				break;
			}
		}
		if (!allValid)
		{
			alert("Please Enter Charecters Only");
			Form1.TextBox13.focus();
			Form1.TextBox13.value="";
			return false;
		}
		if(Form1.TextBox13.value.substring(0,1)=="0" || Form1.TextBox13.value.substring(0,1)=="1" || Form1.TextBox13.value.substring(0,1)=="2" ||Form1.TextBox13.value.substring(0,1)=="3" || Form1.TextBox13.value.substring(0,1)=="4" || Form1.TextBox13.value.substring(0,1)=="5" || Form1.TextBox13.value.substring(0,1)=="6" || Form1.TextBox13.value.substring(0,1)=="7" || Form1.TextBox13.value.substring(0,1)=="8" || Form1.TextBox13.value.substring(0,1)=="9" )
		{
			alert("First letter should not be a Number");
			Form1.TextBox12.focus();
			Form1.TextBox12.value="";
			return false;
		}
		if((Form1.TextBox13.value.substring(0,1)=="!")||(Form1.TextBox13.value.substring(0,1)=="@")||(Form1.TextBox13.value.substring(0,1)=="#")||(Form1.TextBox13.value.substring(0,1)=="$")||(Form1.TextBox13.value.substring(0,1)=="%")||(Form1.TextBox13.value.substring(0,1)=="&")||(Form1.TextBox13.value.substring(0,1)=="^")||(Form1.TextBox13.value.substring(0,1)=="*")||(Form1.TextBox13.value.substring(0,1)=="(")||(Form1.TextBox13.value.substring(0,1)==")")||(Form1.TextBox13.value.substring(0,1)=="_")||(Form1.TextBox13.value.substring(0,1)=="+")||(Form1.TextBox13.value.substring(0,1)=="=")||(Form1.TextBox13.value.substring(0,1)=="{") ||(Form1.TextBox13.value.substring(0,1)=="}")||(Form1.TextBox13.value.substring(0,1)=="]")||(Form1.TextBox13.value.substring(0,1)=="[")||(Form1.TextBox13.value.substring(0,1)==":")||(Form1.TextBox13.value.substring(0,1)=="'")||(Form1.TextBox13.value.substring(0,1)=="<")||(Form1.TextBox13.value.substring(0,1)==">")||(Form1.TextBox13.value.substring(0,1)=="/")||(Form1.TextBox13.value.substring(0,1)=="?")||(Form1.TextBox13.value.substring(0,1)=="|")||(Form1.TextBox13.value.substring(0,1)=="`")||(Form1.TextBox13.value.substring(0,1)=="~"))
		{
			alert("doesn't allow special characters");
			Form1.TextBox13.focus();
			Form1.TextBox13.value="";
			return false;
		}
   
     //city
   
   if((Form1.TextBox14.value=="")||(Form1.TextBox14.value.length==null))
		{
			alert("Enter city Name");
			Form1.TextBox14.focus();
			Form1.TextBox14.value="";
			return false;
		}
   if ((Form1.TextBox14.value.substring(0,1)==".")||(Form1.TextBox14.value.substring(0,1)==" ")||(Form1.TextBox14.value.substring(0,1)==","))
		{
			alert("doesnot allow special charecters")
			Form1.TextBox14.value="";
			Form1.TextBox14.focus();
			return false;
		}
	var str=Form1.TextBox14.value;
		for(i=0;i<str.length;i++)
		{
			ch=str.substring(i,i+1)
			if(ch==" ")
			{
				ch1=str.substring(i+1,i+2)
				if(ch1==" ")
				{
					alert("Double Space");
					ch2=str.substring(0,i+2);
					Form1.TextBox14.focus();
					return false;
				}						
			}
		}
	var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.' ";
	var checkStr = Form1.TextBox14.value;
	var allValid = true;
		for (i = 0;  i < checkStr.length;  i++)
		{
			ch = checkStr.charAt(i);
			for (j = 0;  j < checkOK.length;  j++)
			if (ch == checkOK.charAt(j))
			break;
			if (j == checkOK.length)
			{
				allValid = false;
				break;
			}
		}
		if (!allValid)
		{
			alert("Please Enter Charecters Only");
			Form1.TextBox14.focus();
			Form1.TextBox14.value="";
			return false;
		}
		if(Form1.TextBox14.value.substring(0,1)=="0" || Form1.TextBox14.value.substring(0,1)=="1" || Form1.TextBox14.value.substring(0,1)=="2" ||Form1.TextBox14.value.substring(0,1)=="3" || Form1.TextBox14.value.substring(0,1)=="4" || Form1.TextBox14.value.substring(0,1)=="5" || Form1.TextBox14.value.substring(0,1)=="6" || Form1.TextBox14.value.substring(0,1)=="7" || Form1.TextBox14.value.substring(0,1)=="8" || Form1.TextBox14.value.substring(0,1)=="9" )
		{
			alert("First letter should not be a Number");
			Form1.TextBox14.focus();
			Form1.TextBox14.value="";
			return false;
		}
		if((Form1.TextBox14.value.substring(0,1)=="!")||(Form1.TextBox14.value.substring(0,1)=="@")||(Form1.TextBox14.value.substring(0,1)=="#")||(Form1.TextBox14.value.substring(0,1)=="$")||(Form1.TextBox14.value.substring(0,1)=="%")||(Form1.TextBox14.value.substring(0,1)=="&")||(Form1.TextBox14.value.substring(0,1)=="^")||(Form1.TextBox14.value.substring(0,1)=="*")||(Form1.TextBox14.value.substring(0,1)=="(")||(Form1.TextBox14.value.substring(0,1)==")")||(Form1.TextBox14.value.substring(0,1)=="_")||(Form1.TextBox14.value.substring(0,1)=="+")||(Form1.TextBox14.value.substring(0,1)=="=")||(Form1.TextBox14.value.substring(0,1)=="{") ||(Form1.TextBox14.value.substring(0,1)=="}")||(Form1.TextBox14.value.substring(0,1)=="]")||(Form1.TextBox14.value.substring(0,1)=="[")||(Form1.TextBox14.value.substring(0,1)==":")||(Form1.TextBox14.value.substring(0,1)=="'")||(Form1.TextBox14.value.substring(0,1)=="<")||(Form1.TextBox14.value.substring(0,1)==">")||(Form1.TextBox14.value.substring(0,1)=="/")||(Form1.TextBox14.value.substring(0,1)=="?")||(Form1.TextBox14.value.substring(0,1)=="|")||(Form1.TextBox14.value.substring(0,1)=="`")||(Form1.TextBox14.value.substring(0,1)=="~"))
		{
			alert("doesn't allow special characters");
			Form1.TextBox14.focus();
			Form1.TextBox14.value="";
			return false;
		}
		if ((Form1.TextBox14.value.length<3)||(Form1.TextBox14.value.length>35))
		{
			alert("Length of the city name should be in between 3-35")
			Form1.TextBox14.value="";
			Form1.TextBox14.focus();
			return false;
		}
		}
		</script>
	    <style type="text/css">
            .style2
            {
                height: 40px;
            }
        </style>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" runat="server" >
				<TABLE id="Table1" height="600" cellSpacing="0" cellPadding="1" width="100%" border="0">
					<TR>
						<TD >
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
						<TD vAlign="top" align="center" width="100%" height="390">
							<TABLE id="Table2" style="WIDTH: 70%; HEIGHT: 250px" cellSpacing="0" 
                        cellPadding="1" align="center"
								border="0" bgcolor="#99CCFF">
								<TR>
									<TD style="WIDTH: 369px" vAlign="middle" align="center" colSpan="3">
										<P>
											<asp:label id="Label1" runat="server" Width="100%" Height="25px" ForeColor="Black" Font-Bold="True"
												Font-Names="Verdana" Font-Size="X-Small">ORDER DETAILS</asp:label></P>
									</TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="left" width="50%" height="25">
										<asp:label id="Label15" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Verdana"
											Font-Size="X-Small">Order No</asp:label></TD>
									<TD vAlign="middle" align="left" width="30%" height="25">
										<asp:textbox id="TextBox1" runat="server" Width="100%" Height="25px" BorderColor="#FFC0FF"></asp:textbox></TD>
									<TD vAlign="middle" align="center" width="20%" height="25"></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="left" width="50%" class="style2">
										<asp:label id="Label2" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Verdana"
											Font-Size="X-Small">Order Date</asp:label></TD>
									<TD vAlign="middle" align="left" width="30%" class="style2">
										<asp:textbox id="TextBox2" runat="server" Width="100%" Height="25px" BorderColor="#FFC0FF"></asp:textbox></TD>
									<TD vAlign="middle" align="center" width="20%" class="style2"></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="left" width="50%" height="25">
										<asp:label id="Label3" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Verdana"
											Font-Size="X-Small" BorderColor="#FFC0FF">Order Time</asp:label></TD>
									<TD vAlign="middle" align="left" width="30%" height="25">
										<asp:textbox id="TextBox3" runat="server" Width="100%" Height="25px" BorderColor="#FFC0FF"></asp:textbox></TD>
									<TD vAlign="middle" align="center" width="20%" height="25"></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="left" width="50%" height="25">
										<asp:label id="Label4" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Verdana"
											Font-Size="X-Small">Delivery Date</asp:label></TD>
									<TD vAlign="middle" align="left" width="30%" height="25">
										<asp:textbox id="TextBox4" runat="server" Width="100%" Height="25px" BorderColor="#FFC0FF"></asp:textbox></TD>
									<TD vAlign="middle" align="center" width="20%" height="25">
										<asp:imagebutton id="ImageButton1" runat="server" ImageUrl="Images/calendar.gif"></asp:imagebutton></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="left" width="50%" height="25">
										<asp:label id="Label5" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Verdana"
											Font-Size="X-Small">Delivery Time</asp:label></TD>
									<TD vAlign="middle" align="left" width="30%" height="25">
										<asp:textbox id="TextBox5" runat="server" Width="100%" Height="25px" BorderColor="#FFC0FF"></asp:textbox></TD>
									<TD vAlign="middle" align="center" width="20%" height="25">(<FONT face="Verdana" size="2">hh:mm 
											AM</FONT>)</TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="left" width="50%" height="25">
										<asp:label id="Label12" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Verdana"
											Font-Size="X-Small">Receipent Name</asp:label></TD>
									<TD vAlign="middle" align="left" width="30%" height="25">
										<asp:textbox id="TextBox12" runat="server" Width="100%" Height="25px" BorderColor="#FFC0FF"></asp:textbox></TD>
									<TD vAlign="middle" align="center" width="20%" height="25"></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="left" width="50%" height="25">
										<asp:label id="Label13" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Verdana"
											Font-Size="X-Small">Shipping Address</asp:label></TD>
									<TD vAlign="middle" align="left" width="30%" height="25">
										<asp:textbox id="TextBox13" runat="server" Width="100%" Height="25px" BorderColor="#FFC0FF"></asp:textbox></TD>
									<TD vAlign="middle" align="center" width="20%" height="25"></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="left" width="50%" height="25">
										<asp:label id="Label14" runat="server" ForeColor="Black" Font-Bold="True" Font-Names="Verdana"
											Font-Size="X-Small">Shipping City</asp:label></TD>
									<TD vAlign="middle" align="left" width="30%" height="25">
										<asp:textbox id="TextBox14" runat="server" Width="100%" Height="25px" BorderColor="#FFC0FF"></asp:textbox></TD>
									<TD vAlign="middle" align="center" width="20%" height="25"></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="100%" colSpan="3" height="25">
										<asp:button id="Button2" runat="server" Width="80px" BackColor="#FFE0C0" ForeColor="Black" Font-Bold="True"
											Font-Names="Verdana" Font-Size="X-Small" BorderColor="Black" Text="Submit" onclick="Button2_Click"></asp:button></TD>
								</TR>
								<tr><td><asp:Label ID="lbldisplay" runat="server" Font-Bold="True" 
                                        Font-Size="Large" ForeColor="#0066FF" /></td></tr>
							</TABLE>
							<P>
								<asp:calendar id="Calendar1" runat="server" Width="223px" Height="60px" BackColor="White" ForeColor="#003399"
									Font-Names="Verdana" Font-Size="8pt" BorderColor="Silver" BorderWidth="1px" DayNameFormat="FirstLetter"
									CellPadding="1" onselectionchanged="Calendar1_SelectionChanged">
									<TodayDayStyle ForeColor="White" BackColor="#99CCCC"></TodayDayStyle>
									<SelectorStyle ForeColor="#336666" BackColor="#99CCCC"></SelectorStyle>
									<NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>
									<DayHeaderStyle Height="1px" ForeColor="#336666" BackColor="#99CCCC"></DayHeaderStyle>
									<SelectedDayStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedDayStyle>
									<TitleStyle Font-Size="10pt" Font-Bold="True" Height="25px" BorderWidth="1px" ForeColor="#CCCCFF"
										BorderStyle="Solid" BorderColor="#3366CC" BackColor="#003399"></TitleStyle>
									<WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
									<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
								</asp:calendar></P>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="center" width="100%" height="30"></TD>
					</TR>
				</TABLE>
			</asp:panel></form>
	</body>
</HTML>
