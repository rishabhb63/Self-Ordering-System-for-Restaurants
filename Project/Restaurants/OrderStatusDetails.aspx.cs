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

namespace ONLINEFASTFOODORDERING
{
	/// <summary>
	/// Summary description for OrderStatusDetails.
	/// </summary>
	public partial class OrderStatusDetails : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Session["username"]==null)
			{
				Response.Redirect("HomePage.aspx"); 
			}
			if(Page.IsPostBack==false)
			{
				try
				{
					string str;
					str=Session["A"].ToString();
					string[] a=str.Split(',');
					Label16.Text=a[0];
					Label17.Text=a[1];
					Label18.Text=a[2];
					Label19.Text=a[3];
					Label20.Text=a[4];
					Label27.Text=a[5];
					Label28.Text=a[6];
					Label29.Text=a[7];
				}
				catch
				{

				}
			}
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
			Response.Redirect("HomePage.aspx");
		}
	}
}
