using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace OnlineFastFood
{
	/// <summary>
	/// Summary description for KUtilities.
	/// Author : Khaleshah
	/// Date   : 28-03-06
	/// </summary>
	public class KUtilities
	{

		protected HttpSessionState Session;
		protected HttpServerUtility Server;
		protected HttpRequest Request;
		protected HttpResponse Response;
		protected Page curPage;
		protected SqlCommand  SqlCommand;
		public  SqlConnection Connection;

		public KUtilities(object parent)
		{
			Session=HttpContext.Current.Session;
			Server=HttpContext.Current.Server;
			Request=HttpContext.Current.Request;
			Response=HttpContext.Current.Response;
//			curPage=(System.Web.UI.Page)parent;
			Open();
		}
		
		public KUtilities()
		{
			Session=HttpContext.Current.Session;
			Server=HttpContext.Current.Server;
			Request=HttpContext.Current.Request;
			Response=HttpContext.Current.Response;
//			curPage=(System.Web.UI.Page)parent;
			Open();
		}

		public SqlConnection GetConnection()
        {
			return Connection;
		}
		public void Open()
		{
//			string sConnectionString=;
//			string sConnectionString=System.Configuration.ConfigurationSettings.AppSettings["ConStr"];
			Connection =new SqlConnection("Integrated Security=SSPI;Persist Security Info=False;Data Source=IBMESERVER");
			Connection.Open();
			//return Connection;
		
		}
		public void Close()
		{
			Connection.Close();
		}

		public void Execute(string sSQL)
		{
			SqlCommand cmd=new SqlCommand(sSQL,Connection); 
			cmd.ExecuteNonQuery();
			
		}

//		public string GetScalar(string sSQL)
//		{
//			Int16 strvalue; 
//			SqlCommand cmd=new SqlCommand(sSQL,Connection); 
//			returnVal = cmd.ExecuteScalar();
//            return strvalue;
//		}

		public void Execute(SqlCommand sqlCom)
		{
			sqlCom.ExecuteNonQuery();
		}

		public void msgBox(string message)
		{
			string strMessage="<script language='javascript'>window.alert('" + message + "');</script> ";
			if(!curPage.IsStartupScriptRegistered("msg"))
			{
				curPage.RegisterStartupScript("msg",strMessage);
			}
		}

		public void dgBind(ref DataSet ds,ref DataGrid DG1,string SqlStatement)
		{			
			SqlDataAdapter da=new SqlDataAdapter(SqlStatement,Connection);
			da.Fill(ds);
			DG1.DataSource=ds.Tables[0].DefaultView;
			DG1.DataBind();
		}
		
		public void getDataSet(ref DataSet ds,string SqlStatement)
		{			
			SqlDataAdapter da=new SqlDataAdapter(SqlStatement,Connection);
			da.Fill(ds,"table0");
			

		}

		public void dgBind(ref DataTable dt,ref DataGrid DG1,String SqlStatement)
		{			
			SqlDataAdapter da=new SqlDataAdapter(SqlStatement,Connection);
			da.Fill(dt);
			DG1.DataSource=dt;
			DG1.DataBind();
		}


		public bool CheckSession() 
		{
			bool flag=true;
			if (Session["UserID"] == null || Session["UserID"].ToString().Length == 0) 
			{
				flag=false;
				//Response.Redirect("Errorpage.aspx?errid=1&QueryString=" + Server.UrlEncode(Request.ServerVariables["QUERY_STRING"]) + "&ret_page=" + Server.UrlEncode(Request.ServerVariables["SCRIPT_NAME"])+ "&res=2");
				//	RedirectUrl("login.aspx?res=2");
			} 
			else 
			{
				flag=true;
			}
			return flag;
		}
	}
}
