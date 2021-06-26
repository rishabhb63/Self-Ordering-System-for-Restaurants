<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.ForgotPassword" CodeFile="ForgotPassword.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="TimeDate" Src="TimeDate.ascx" %>
<%@ Register TagPrefix="uc1" TagName="secondmenu" Src="secondmenu.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ForgotPassword</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="javascript">
		function validation()
		{
		if(Form1.TextBox2.value=="")
	{
		alert("Please enter the username ");
		Form1.TextBox2.focus();
		return false;
	}    
					
		





//Email		
	   if ((Form1.TextBox1.value == "")||(Form1.TextBox1.value=="")||(Form1.TextBox1.value.substring(0,1)==" "))
	    {
	    alert("You must enter email.");
	    Form1.TextBox1.value="";
	    Form1.TextBox1.focus();
	    return (false);
	    }
	   
	   
	var checkTLD=1;
	var knownDomsPat=/^(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum|in|COM|NET|ORG|EDU|INT|MIL|GOV|ARPA|BIZ|AERO|NAME|COOP|INFO|PRO|MUSEUM|IN)$/;
	var emailPat=/^(.+)@(.+)$/;
	var specialChars="\\(\\)><@,;:\\\\\\\"\\.\\[\\]";
	var validChars="\[^\\s" + specialChars + "\]";
	var quotedUser="(\"[^\"]*\")";
	var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;
	var atom=validChars + '+';
	var word="(" + atom + "|" + quotedUser + ")";
	var userPat=new RegExp("^" + word + "(\\." + word + ")*$");
	var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$");
	var matchArray=document.Form1.TextBox1.value.match(emailPat);
	if (matchArray==null) 
{
	alert("Email address seems incorrect (check @ and .'s)");
	Form1.TextBox1.focus();
	return false;
}
	var user=matchArray[1];
	var domain=matchArray[2];


	for (i=0; i<user.length; i++) {
	if (user.charCodeAt(i)>127) {
	alert("Ths username contains invalid characters.");
	Form1.TextBox1.focus();
	return false;
}
}
	for (i=0; i<domain.length; i++) 
{
	if (domain.charCodeAt(i)>127) 
{
	alert("Ths domain name contains invalid characters.");
	Form1.TextBox1.focus();
	return false;
	   }
}
	if (user.match(userPat)==null) 
{

	alert("The username doesn't seem to be valid.");
	Form1.TextBox1.focus();
	return false;
}



	var IPArray=domain.match(ipDomainPat);
	if (IPArray!=null) 
{
	for (var i=1;i<=4;i++) 
{
	if (IPArray[i]>255) 
{
	alert("Destination IP address is invalid!");
	Form1.TextBox1.focus();
	return false;
}
}
	return true;
}
	var atomPat=new RegExp("^" + atom + "$");
	var domArr=domain.split(".");
	var len=domArr.length;
	for (i=0;i<len;i++) 
{
	if (domArr[i].search(atomPat)==-1) 
{
	alert("The domain name does not seem to be valid.");
	Form1.TextBox1.focus();
	return false;
}
}
	if (checkTLD && domArr[domArr.length-1].length!=2 && 
	domArr[domArr.length-1].search(knownDomsPat)==-1) 
{
	alert("The address must end in a well-known domain or two letter " + "country.");
	Form1.TextBox1.focus();
	return false;
}
	if (len<2) 
{
	alert("This address is missing a hostname!");
	Form1.TextBox1.focus();
	return false;

}	


  









		}
		
		
		</script>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" runat="server"  BackColor ="#ccffff" >
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
							<uc1:secondmenu id="Secondmenu1" runat="server"></uc1:secondmenu></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center" width="100%" height="390">
							<asp:Panel id="dgpanel" runat="server" BackColor="#ccffff">
								<TABLE id="Table2" style="WIDTH: 470px; HEIGHT: 112px" cellSpacing="1" cellPadding="1"
									width="470" border="0">
									<TR>
										<TD style="WIDTH: 145px; HEIGHT: 15px" vAlign="middle" align="left" width="145" height="15">
											<asp:label id="Label2" runat="server" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana">User Name:</asp:label></TD>
										<TD style="HEIGHT: 15px" vAlign="middle" align="left" height="15">
											<asp:textbox id="TextBox2" runat="server" Width="216px" Font-Size="X-Small" Font-Names="Verdana"></asp:textbox></TD>
									</TR>
									<TR>
										<TD style="WIDTH: 145px" vAlign="middle" align="left" width="146" height="30">
											<asp:label id="Label1" runat="server" Width="160px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana">EmailId(Registered):</asp:label></TD>
										<TD vAlign="middle" align="left" height="30">
											<asp:textbox id="TextBox1" runat="server" Width="216px" Font-Size="X-Small" Font-Names="Verdana"></asp:textbox></TD>
									</TR>
									<TR>
										<TD vAlign="middle" align="center" width="100%" colSpan="2" height="40">
											<asp:button id="Button1" runat="server" Height="24px" Width="64px" Font-Bold="True" Font-Size="11px"
												Font-Names="Verdana" Text="Go" onclick="Button1_Click"></asp:button></TD>
									</TR>
								</TABLE>
							</asp:Panel>
							<asp:Panel id="frmpanel" runat="server">
								<P style="background-color: #ccffff"><FONT face="Verdana" size="2">Your PassWord Is </FONT>:&nbsp;&nbsp;&nbsp; &nbsp;
									<asp:Label id="Label5" runat="server" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana">Label</asp:Label></P>
								<P style="background-color: #ccffff">
									<asp:Button id="Button2" runat="server" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana"
										Text="Back" onclick="Button2_Click"></asp:Button></P>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD >
							<uc1:Fotter id="Fotter1" runat="server"></uc1:Fotter></TD>
					</TR>
				</TABLE>
			</asp:Panel>&nbsp;
		</form>
	</body>
</HTML>
