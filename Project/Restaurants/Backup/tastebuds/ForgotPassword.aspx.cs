using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Mail;

namespace OnlineFastFood
{
	/// <summary>
	/// Summary description for ForgotPassword.
	/// </summary>
	public partial class ForgotPassword : System.Web.UI.Page
	{
	SqlConnection con=new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["ConStr"]);

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(!Page.IsPostBack)
			{
				
			    dgpanel.Visible=true;
				frmpanel.Visible=false; 
			}
			Button1.Attributes.Add("OnClick","return validation()");
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion


		protected void Button1_Click(object sender, System.EventArgs e)
		{
			SqlDataAdapter da=new SqlDataAdapter("select password from userdetails where username='"+TextBox2.Text+"' and emailid='"+TextBox1.Text+"'",con);
			DataSet ds=new DataSet();
			da.Fill(ds);
			if(ds.Tables[0].Rows.Count==0)
			{
				dgpanel.Visible=true;
				frmpanel.Visible=false; 
				Response.Write("<script>alert('Ur Information Is Wrong Try Again')</script>");  
			}
			else
			{
				dgpanel.Visible=false;
				frmpanel.Visible=true; 
				Label5.Text=ds.Tables[0].Rows[0][0].ToString();     
			}
			
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("ForgotPassword.aspx");
		}
	}
		}
	
