
<%@ Register TagPrefix="uc1" TagName="Fotter" Src="Fotter.ascx" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src="Header.ascx" %>
<%@ Page language="c#" Inherits="OnlineFastFood.NewUser" CodeFile="NewUser.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>NewUser</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language="javascript">
		function validate_fields()
		{
		
		//username
		if((Form1.txtusername.value=="")||(Form1.txtusername.value.substring(0,1)==" "))
	{
		alert("Please enter the username ,not more than 15 ");
		Form1.txtusername.focus();
		return false;
	}	
	   
		
          var str=Form1.txtusername.value;
				for(i=0;i<str.length;i++)
				{
					ch=str.substring(i,i+1)
					if(ch==" ")
					{
						ch1=str.substring(i+1,i+2)
						if(ch1==" ")
						{
							alert("Double space in Username");
							ch2=str.substring(0,i+2);														
							Form1.txtusername.focus();
							Form1.txtusername.value="";
							return (false);
						}						
					}
				}
				
				 var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 ";
		var checkStr = Form1.txtusername.value;
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
		alert("Please enter only  characters in the  field.");
		Form1.txtusername.value="";
		Form1.txtusername.focus();
		return (false);
		}
//password		
		
		/*if (Form1.txtpassword.value == "")
			{
			alert("You must enter Password.");
			Form1.txtpassword.focus();
			return (false);
			}
			var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWabcdefghijklmnopqrstuvwxyz0123456789`~!@#$%^&*__-=+()':;?/>.<,|";
			var checkStr = Form1.txtpassword.value;
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
			alert("Please enter only letter Symbols and numeric characters in the \"Password\" field.");
			Form1.txtPassword.focus();
			return (false);
			}
			if (Form1.txtpassword.value.length < 4)
			{
			alert("Please enter at least 4 characters in the \"Password\" field.");
			Form1.txtpassword.focus();
			return (false);
			}*/
			///password
			var h=Form1.txtpassword.value
if(h=="" || h.charCodeAt(0)==32)
{
alert("Please Enter Your Password ")
Form1.txtpassword.focus()
Form1.txtpassword.select()
return false;
}
var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWabcdefghijklmnopqrstuvwxyz0123456789`~!@#$%^&*__-=+()':;?/>.<,|";
			var checkStr = Form1.txtpassword.value;
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
			alert("Please enter only letter Symbols and numeric characters in the \"Password\" field.");
			Form1.txtPassword.focus();
			return (false);
			}
			if (Form1.txtpassword.value.length < 4)
			{
			alert("Please enter at least 4 characters in the \"Password\" field.");
			Form1.txtpassword.focus();
			return (false);
			}
			
			
			
	//retypepassword		
	
	
	
	var i=Form1.txtretypepassword.value
if(i=="" || i.charCodeAt(0)==32)
{
alert("Please retype ur password ")
Form1.txtretypepassword.focus()
Form1.txtretypepassword.select()
return false;
}

if(h!=i) 
{
alert("retype Password not correct")
Form1.txtretypepassword.focus()
Form1.txtretypepassword.select()
return false;

}
	//password hint question

	
		if((Form1.dl1pashintq.value=="select"))
	{
		alert("Please select the password hint question  ");
		Form1.dl1pashintq.focus();
		return false;
	}	
	
	//hintanswer	
				
		if(Form1.txthintanswer.value=="")
	{
		alert("You must enter hintanswer." );
		Form1.txthintanswer.focus();
		return false;
	}	
	   var str=Form1.txthintanswer.value;
         for(i=0;i<str.length;i++)
	{
		ch=str.substring(i,i+1)
	if(ch==" ")
	{
		alert("single space not allowed");
		ch2=str.substring(0,i+1);
		Form1.txthintanswer.focus();
		return false;
		}	
		}
		//Name
		
			if(Form1.txtname.value=="")
	{
		alert("Please enter the name ,not more than 15." );
		Form1.txtname.focus();
		return false;
	}	
	 var str=Form1.txtname.value;
         for(i=0;i<str.length;i++)
	{
		ch=str.substring(i,i+1)
	if(ch==" ")
	{
		alert("single space not allowed");
		ch2=str.substring(0,i+1);
		Form1.txtname.focus();
		return false;
		}	
		}
			 var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
		var checkStr = Form1.txtname.value;
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
		alert("Please enter only  characters in the  field.");
		Form1.txtname.value="";
		Form1.txtname.focus();
		return (false);
		}
		
//Email		
	   if ((Form1.txtemailid.value == "")||(Form1.txtemailid.value=="")||(Form1.txtemailid.value.substring(0,1)==" "))
	    {
	    alert("You must enter email.");
	    Form1.txtemailid.value="";
	    Form1.txtemailid.focus();
	    return (false);
	    }
	   if (Form1.txtemailid.value.length<10)
	   {
	   alert("You must enter 10 charecters in email.");
	   Form1.txtemailid.value="";
	   Form1.txtemailid.focus();
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
	var matchArray=document.Form1.txtemailid.value.match(emailPat);
	if (matchArray==null) 
{
	alert("Email address seems incorrect (check @ and .'s)");
	Form1.txtemailid.focus();
	return false;
}
	var user=matchArray[1];
	var domain=matchArray[2];


	for (i=0; i<user.length; i++) {
	if (user.charCodeAt(i)>127) {
	alert("Ths username contains invalid characters.");
	Form1.txtemailid.focus();
	return false;
}
}
	for (i=0; i<domain.length; i++) 
{
	if (domain.charCodeAt(i)>127) 
{
	alert("Ths domain name contains invalid characters.");
	Form1.txtemailid.focus();
	return false;
	   }
}
	if (user.match(userPat)==null) 
{

	alert("The username doesn't seem to be valid.");
	Form1.txtemailid.focus();
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
	Form1.Email.focus();
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
	Form1.txtemailid.focus();
	return false;
}
}
	if (checkTLD && domArr[domArr.length-1].length!=2 && 
	domArr[domArr.length-1].search(knownDomsPat)==-1) 
{
	alert("The address must end in a well-known domain or two letter " + "country.");
	Form1.txtemailid.focus();
	return false;
}
	if (len<2) 
{
	alert("This address is missing a hostname!");
	Form1.txtemailid.focus();
	return false;

}	

//Confirm Email
	
			if(Form1.txtconfemailid.value=="")
	{
		alert("Please enter the confemailid" );
		Form1.txtconfemailid.focus();
		return false;
	}
	
//secondary Email id

if(Form1.txtsecemailid.value!="")
{


if ((Form1.txtsecemailid.value == "")||(Form1.txtsecemailid.value=="")||(Form1.txtsecemailid.value.substring(0,1)==" "))
	    {
	    alert("You must enter email.");
	    Form1.txtsecemailid.value="";
	    Form1.txtsecemailid.focus();
	    return (false);
	    }
	   if (Form1.txtsecemailid.value.length<10)
	   {
	   alert("field should not be lessthan 10.");
	   Form1.txtsecemailid.value="";
	   Form1.txtsecemailid.focus();
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
	var matchArray=document.Form1.txtsecemailid.value.match(emailPat);
	if (matchArray==null) 
{
	alert("Email address seems incorrect (check @ and .'s)");
	Form1.txtsecemailid.focus();
	return false;
}
	var user=matchArray[1];
	var domain=matchArray[2];


	for (i=0; i<user.length; i++) {
	if (user.charCodeAt(i)>127) {
	alert("Ths username contains invalid characters.");
	Form1.txtsecemailid.focus();
	return false;
}
}
	for (i=0; i<domain.length; i++) 
{
	if (domain.charCodeAt(i)>127) 
{
	alert("Ths domain name contains invalid characters.");
	Form1.txtsecemailid.focus();
	return false;
	   }
}
	if (user.match(userPat)==null) 
{

	alert("The username doesn't seem to be valid.");
	Form1.txtemailid.focus();
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
	Form1.txtsecemailid.focus();
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
	Form1.txtsecemailid.focus();
	return false;
}
}
	if (checkTLD && domArr[domArr.length-1].length!=2 && 
	domArr[domArr.length-1].search(knownDomsPat)==-1) 
{
	alert("The address must end in a well-known domain or two letter " + "country.");
	Form1.txtsecemailid.focus();
	return false;
}
	if (len<2) 
{
	alert("This address is missing a hostname!");
	Form1.txtsecemailid.focus();
	return false;

}	


	}
	//ic no
	
	if ((Form1.txt_icno.value == "")||(Form1.txt_icno.value=="")||(Form1.txt_icno.value.substring(0,1)==" "))
	    {
	    alert("You must enter IC Number.");
	    Form1.txt_icno.value="";
	    Form1.txt_icno.focus();
	    return (false);
	    }
	    
	    var checkOK = "0123456789";
	    var checkStr = Form1.txt_icno.value;
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
	    alert("Please enter only  numbers in the IC Number.");
	    Form1.txt_icno.value="";
	    Form1.txt_icno.focus();
	    return (false);
	    }
	    
	    	    var checkOK1= "0";
	    var checkStr1 = Form1.txt_icno.value;
	    var allValid = true;
	    for (i = 0;  i < checkStr1.length;  i++)
	    {
        ch = checkStr1.charAt(i);
	    for (j = 0;  j < checkOK1.length;  j++)
	    if (ch == checkOK1.charAt(j))
	    break;
	    if (j == checkOK1.length)
	    {
	    allValid = false;
	    break;
	    }
	    }
	    if (allValid)
	    {
	    alert("Please enter only  numbers in the \"IC Number\" field.");
	    Form1.txt_icno.value="";
	    Form1.txt_icno.focus();
	    return (false);
	    }
	    
	
		//icno
//Phone

 if ((Form1.txtphno.value == "")||(Form1.txtphno.value=="")||(Form1.txtphno.value.substring(0,1)==" "))
	    {
	    alert("You must enter phone.");
	    Form1.txtphno.value="";
	    Form1.txtphno.focus();
	    return (false);
	    }
	    
	    
if((Form1.txtphno.value.charAt(0)!="0"))
	    {
	    alert("enter the first digit is 0 .");
	   Form1.txtphno.value="";
	    Form1.txtphno.focus();
	    return (false);
	    }
	   
	    if (Form1.txtphno.value.length<10)
	    {
	    alert("You must enter  10 digits in phoneno.");
	    Form1.txtphno.value="";
	    Form1.txtphno.focus();
	    return (false);
	    }
	    var checkOK = "0123456789";
	    var checkStr = Form1.txtphno.value;
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
	    alert("Please enter only  numbers in the \"phone\" field.");
	    Form1.txtphno.value="";
	    Form1.txtphno.focus();
	    return (false);
	    }
	    var checkOK1= "0";
	    var checkStr1 = Form1.txtphno.value;
	    var allValid = true;
	    for (i = 0;  i < checkStr1.length;  i++)
	    {
        ch = checkStr1.charAt(i);
	    for (j = 0;  j < checkOK1.length;  j++)
	    if (ch == checkOK1.charAt(j))
	    break;
	    if (j == checkOK1.length)
	    {
	    allValid = false;
	    break;
	    }
	    }
	    if (allValid)
	    {
	    alert("Please dont enter zeros in the \"phone\" field.");
	    Form1.txtphno.value="";
	    Form1.txtphno.focus();
	    return (false);
	    }
	 //mobile no
	  var checkOK = "0123456789";
	    var checkStr = Form1.txtmobileno.value;
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
	    alert("Please enter only  numbers in the \"moblie\" field.");
	    Form1.txtmobileno.value="";
	    Form1.txtmobileno.focus();
	    return (false);
	    }
	    var checkOK1= "0";
	    var checkStr1 = Form1.txtmobileno.value;
	    var allValid = true;
	    for (i = 0;  i < checkStr1.length;  i++)
	    {
        ch = checkStr1.charAt(i);
	    for (j = 0;  j < checkOK1.length;  j++)
	    if (ch == checkOK1.charAt(j))
	    break;
	    if (j == checkOK1.length)
	    {
	    allValid = false;
	    break;
	    }
	    }
	    
	    
	    
	 if(Form1.txtmobileno.value!="")
{
if((Form1.txtmobileno==0) ||(Form1.txtmobileno.value==00)||(Form1.txtmobileno.value==000) ||(Form1.txtmobileno.value==0000) ||(Form1.txtmobileno.value==00000) || (Form1.txtmobileno.value==000000) ||(Form1.txtmobileno.value==00000000) || (Form1.txtmobileno.value==000000000) || (Form1.txtmobileno.value==0000000000))
{
alert("Please enter mobileno  field correctly.");
Form1.txtmobileno.focus();
Form1.txtmobileno.value="";
return(false);
}
}


	    

	    
	    
	    
	    //Fax no

var checkOK = "0123456789";
var checkStr = Form1.txtfaxno.value;
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


var str=Form1.txtfaxno.value;
				for(i=0;i<str.length;i++)
				{
					ch=str.substring(i,i+1)
					if(ch==" ")
					{
						ch1=str.substring(i+1,i+2)
						if(ch1==" ")
						{
							alert("Double space in Fax field");
							ch2=str.substring(0,i+2);														
							Form1.txtfaxno.focus();
							Form1.txtfaxno.value="";
							return (false);
						}						
					}
				}









if (!allValid)
{
alert("Please enter only  numeric characters in Fax no field.");
Form1.txtfaxno.focus();
Form1.txtfaxno.value="";
return (false);
}

if (Form1.txtfaxno.value.length > 10)
{
alert("The Fax no field digits should not exceed 10");
Form1.txtfaxno.focus();
Form1.txtfaxno.value="";
return(false);
}
if(Form1.txtfaxno.value!="")
{
if((Form1.txtfaxno==0) ||(Form1.txtfaxno.value==00)||(Form1.txtfaxno.value==000) ||(Form1.txtfaxno.value==0000) ||(Form1.txtfaxno.value==00000) || (Form1.txtfaxno.value==000000) ||(Form1.txtfaxno.value==00000000) || (Form1.txtfaxno.value==000000000) || (Form1.txtfaxno.value==0000000000))
{
alert("Please enter Faxno field correctly.");
Form1.txtfaxno.focus();
Form1.txtfaxno.value="";
return(false);
}
}
	//Address1
	    
       if ((Form1.txtaddr1.value == "")||(Form1.txtaddr1.value=="")||(Form1.txtaddr1.value.substring(0,1)==" "))
	    {
	    alert("You must enter Adress1.");
	    Form1.txtaddr1.value="";
	    Form1.txtaddr1.focus();
	    return (false);
	    }
	    if (Form1.txtaddr1.value.length<10)
	    {
	    alert("You must enter 10 charecters in Adress1.");
	    Form1.txtaddr1.value="";
	    Form1.txtaddr1.focus();
	    return (false);
	    }
	    
			var str=Form1.txtaddr1.value;
				for(i=0;i<str.length;i++)
				{
					ch=str.substring(i,i+1)
					if(ch==" ")
					{
						ch1=str.substring(i+1,i+2)
						if(ch1==" ")
						{
							alert("Please don't enter Double space in Adress1");
							ch2=str.substring(0,i+2);														
							Form1.txtaddr1.focus();
							Form1.txtaddr1.value="";
							return (false);
						}						
					}
				}	
	    
	    
	    var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-./#,(): ";
	    var checkStr = Form1.txtaddr1.value;
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
	    alert("Please enter only  characters in the \"Adress1\" field.");
	    Form1.txtaddr1.value="";
	    Form1.txtaddr1.focus();
	    return (false);
	    }

//Address2

var str=Form1.txtaddr2.value;
				for(i=0;i<str.length;i++)
				{
					ch=str.substring(i,i+1)
					if(ch==" ")
					{
						ch1=str.substring(i+1,i+2)
						if(ch1==" ")
						{
							alert("Please don't enter Double space in Adress2");
							ch2=str.substring(0,i+2);														
							Form1.txtaddr2.focus();
							Form1.txtaddr2.value="";
							return (false);
						}						
					}
				}
				
				if(Form1.txtaddr2.value!="")
{	

 if ((Form1.txtaddr2.value == "")||(Form1.txtaddr2.value=="")||(Form1.txtaddr2.value.substring(0,1)==" "))
	    {
	    alert(" enter adrees2 field correctly ");
	    Form1.txtaddr2.value="";
	    Form1.txtaddr2.focus();
	    return (false);
	    }


}



//	    city

 if ((Form1.txtcity.value == "")||(Form1.txtcity.value=="")||(Form1.txtcity.value.substring(0,1)==" "))
	    {
	    alert("You must enter city.");
	    Form1.txtcity.value="";
	    Form1.txtcity.focus();
	    return (false);
	    }
	    if (Form1.txtcity.value.length<3)
	    {
	    alert("You must enter 3 characters in city.");
	    Form1.txtcity.value="";
	    Form1.txtcity.focus();
	    return (false);
	    }
	    var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
	    var checkStr = Form1.txtcity.value;
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
	    alert("Please enter only  characters in the \"city \" field.");
	    Form1.txtcity.value="";
	    Form1.txtcity.focus();
	    return (false);
	    }
	    
	    var str=Form1.txtcity.value;
				for(i=0;i<str.length;i++)
				{
					ch=str.substring(i,i+1)
					if(ch==" ")
					{
						ch1=str.substring(i+1,i+2)
						if(ch1==" ")
						{
							alert("Please don't enter Double space and  city field");
							ch2=str.substring(0,i+2);														
							Form1.txtcity.focus();
							Form1.txtcity.value="";
							return (false);
						}						
					}
				}
				
				 var str=Form1.txtcity.value;
				for(i=0;i<str.length;i++)
				{
					ch=str.substring(i,i+1)
					if(ch==" ")
					{
						ch1=str.substring(i+0,i+1)
						if(ch1==" ")
						{
							alert("Please don't enter single space and  city field");
							ch2=str.substring(0,i+1);														
							Form1.txtcity.focus();
							Form1.txtcity.value="";
							return (false);
						}						
					}
				}
				
		//state
		
 if ((Form1.txtstate.value == "")||(Form1.txtstate.value=="")||(Form1.txtstate.value.substring(0,1)==" "))
	    {
	    alert("You must enter state.");
	   Form1.txtstate.value="";
	   Form1.txtstate.focus();
	    return (false);
	    }
	    if (Form1.txtstate.value.length<2)
	    {
	    alert("You must enter 3 characters in state.");
	   Form1.txtstate.value="";
	   Form1.txtstate.focus();
	    return (false);
	    }
	    var checkOK = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
	    var checkStr = Form1.txtstate.value;
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
	    alert("Please enter only  characters in the \"state \" field.");
	   Form1.txtstate.value="";
	   Form1.txtstate.focus();
	    return (false);
	    }
	    
	     var str=Form1.txtstate.value;
				for(i=0;i<str.length;i++)
				{
					ch=str.substring(i,i+1)
					if(ch==" ")
					{
						ch1=str.substring(i+1,i+2)
						if(ch1==" ")
						{
							alert("pls dont give Double space");
							ch2=str.substring(0,i+2);														
							Form1.txtstate.focus();
							Form1.txtstate.value="";
							return (false);
						}						
					}
				}	
				
//Zipcode
 if ((Form1.txtzipcode.value == "")||(Form1.txtzipcode.value=="")||(Form1.txtzipcode.value.substring(0,1)==" "))
	    {
	    alert("You must enter zip.");
	    Form1.txtzipcode.value="";
	    Form1.txtzipcode.focus();
	    return (false);
	    }
	    if (Form1.txtzipcode.value.length<6)
	    {
	    alert("You must enter6 digits in zip.");
	    Form1.txtzipcode.value="";
	    Form1.txtzipcode.focus();
	    return (false);
	    }
	    var checkOK = "0123456789";
	    var checkStr = Form1.txtzipcode.value;
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
	    alert("Please enter only  Numbers in the \"zip \" field.");
	    Form1.txtzipcode.value="";
	    Form1.txtzipcode.focus();
	    return (false);
	    }
	    
	    var checkOK3 = "0";
	    var checkStr3 = Form1.txtzipcode.value;
	    var allValid = true;
	    for (i = 0;  i < checkStr3.length;  i++)
	    {
	    ch = checkStr3.charAt(i);
	    for (j = 0;  j < checkOK3.length;  j++)
	    if (ch == checkOK3.charAt(j))
	    break;
	    if (j == checkOK3.length)
	    {
	    allValid = false;
	    break;
	    }
	    }
	    if (allValid)
	    {
	    alert("Please dont enter zeros in the \"Zip\" field.");
	    Form1.txtzipcode.value="";
	    Form1.txtzipcode.focus();
	    return (false);
	    }
	    				
				
//country
if(Form1.txtcountry.value=="")
	{
	alert("plz Enter country");
	Form1.txtcountry.focus();
	return false;
	}

		

	    
	    
	    
		
		
		
		
	
			
		
		}
		
		</script>
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" runat="server" >
				<TABLE >
					<TR>
						<TD >
							<uc1:header id="Header1" runat="server"></uc1:header></TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30">
							<asp:Label id="Label26" runat="server" Visible="False">Label</asp:Label></TD>
					</TR>
					<TR>
						<TD vAlign="top" align="center" width="100%" height="420">
							<TABLE id="Table2" height="400" cellSpacing="0" cellPadding="0" 
                        width="80%" border="1" bgcolor="#99CCFF">
								<TR>
									<TD vAlign="middle" align="center" width="100%" colSpan="2" height="16">
										<asp:label id="Label19" runat="server" Font-Bold="True">New Customers</asp:label></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="center" width="100%" colSpan="2" height="16">
										<asp:label id="Label16" runat="server" Width="176px" Font-Bold="True">Create New Account</asp:label></TD>
								</TR>
								<TR>
									<TD vAlign="middle" align="left" width="100%" colSpan="2" height="16">
										<asp:label id="Label21" runat="server" Width="366px" Font-Size="X-Small" Font-Names="Verdana">Marked with 
                                        <font color="#CC3300">
												*</font>  is mandatory. You cannot leave them blank </asp:label></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 21px" vAlign="top" align="left" width="40%" height="21">
										<asp:label id="Label1" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font>User Name</asp:label></TD>
									<TD style="HEIGHT: 21px" vAlign="top" align="left" width="60%" height="21">
										<asp:textbox id="txtusername" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label2" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font>Password</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtpassword" runat="server" Height="24px" Width="75%" Font-Size="X-Small" TextMode="Password" ontextchanged="txtpassword_TextChanged"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label3" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font>Retype Password</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtretypepassword" runat="server" Height="24px" Width="75%" Font-Size="X-Small"
											TextMode="Password"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" colSpan="2" height="16">
										<asp:label id="Label22" runat="server" Width="597px" Font-Size="X-Small" Font-Names="Verdana">In case you forgot your password & want to recall we use following question to verify your identity.  </asp:label></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 65px" vAlign="top" align="left" width="40%" height="65">
										<asp:label id="Label4" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font>Password Hint Question</asp:label></TD>
									<TD style="HEIGHT: 65px" vAlign="top" align="left" width="60%" height="65">
										<asp:dropdownlist id="dl1pashintq" runat="server" Height="24px" Width="75%">
											<asp:ListItem Value="select">select</asp:ListItem>
											<asp:ListItem Value="what is your pet name">what is your pet name</asp:ListItem>
											<asp:ListItem Value="what is your favourite colour">what is your favourite colour</asp:ListItem>
											<asp:ListItem Value="what is your first school name">what is your first school name</asp:ListItem>
											<asp:ListItem Value="who is your favoutite hero">who is your favoutite hero</asp:ListItem>
										</asp:dropdownlist></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label5" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font>Hint Answer</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txthintanswer" runat="server" Height="24px" Width="75%" Font-Size="X-Small"
											TextMode="Password"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" colSpan="2" height="16">
										<asp:label id="Label6" runat="server">Enter Your Personal Information</asp:label></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label7" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font>Name</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtname" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label8" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font>Email ID</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtemailid" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" colSpan="2" height="16">
										<asp:label id="Label9" runat="server" Font-Size="X-Small" Font-Names="Verdana"> (Enter your Primary  Email-ID which is used regularly)</asp:label></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label10" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font>Confirm Email ID</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtconfemailid" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 30px" vAlign="top" align="left" width="40%" height="30">
										<asp:label id="Label11" runat="server" Width="160px" Font-Size="X-Small" Font-Names="Verdana">Secondary Email ID</asp:label></TD>
									<TD style="HEIGHT: 30px" vAlign="top" align="left" width="60%" height="30">
										<asp:textbox id="txtsecemailid" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 27px" vAlign="top" align="left" width="40%" height="27">
										<asp:Label id="Label25" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font> IC Number</asp:Label></TD>
									<TD style="HEIGHT: 27px" vAlign="top" align="left" width="60%" height="27">
										<asp:TextBox id="txt_icno" runat="server" Width="232px"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label12" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font> Phone No</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtphno" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label13" runat="server" Font-Size="X-Small" Font-Names="Verdana"> Mobile No</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtmobileno" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label14" runat="server" Font-Size="X-Small" Font-Names="Verdana"> Fax No</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtfaxno" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label15" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font> Address1</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtaddr1" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:Label id="Label20" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font> Address2</asp:Label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtaddr2" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 21px" vAlign="top" align="left" width="40%" height="21">
										<asp:label id="Label17" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font> City</asp:label></TD>
									<TD style="HEIGHT: 21px" vAlign="top" align="left" width="60%" height="21">
										<asp:textbox id="txtcity" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label18" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font> State</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtstate" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label23" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font>Zip Code</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtzipcode" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="left" width="40%" height="16">
										<asp:label id="Label24" runat="server" Font-Size="X-Small" Font-Names="Verdana"><font color="#CC3300">
												*</font> Country</asp:label></TD>
									<TD vAlign="top" align="left" width="60%" height="16">
										<asp:textbox id="txtcountry" runat="server" Height="24px" Width="75%" Font-Size="X-Small"></asp:textbox></TD>
								</TR>
								<TR>
									<TD vAlign="top" align="center" width="40%" colSpan="2" height="16">
										<asp:button id="txtbttn" runat="server" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana"
											Text="Register and Continue" onclick="txtbttn_Click"></asp:button></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD vAlign="middle" align="left" width="100%" colSpan="2" height="30">
							<uc1:fotter id="Fotter1" runat="server"></uc1:fotter></TD>
					</TR>
				</TABLE>
				<P>&nbsp;</P>
				<P>&nbsp;</P>
			</asp:Panel>
		</form>
	</body>
</HTML>
