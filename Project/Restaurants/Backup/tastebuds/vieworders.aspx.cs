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
using System.Data.SqlClient ;

namespace OnlineFastFood
{
	/// <summary>
	/// Summary description for vieworders.
	/// </summary>
	public partial class vieworders : System.Web.UI.Page
	{

		SqlConnection con=new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["ConStr"]);
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Session["username"]==null)
			{
				Response.Redirect("homepage.aspx"); 
			}
			if(Page.IsPostBack==false)
			{
				Calendar1.Visible=false;
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
			this.ImageButton1.Click += new System.Web.UI.ImageClickEventHandler(this.ImageButton1_Click);

		}
		#endregion

		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Calendar1.Visible=true;
		}

		protected void Calendar1_SelectionChanged(object sender, System.EventArgs e)
		{
			TextBox1.Text=Calendar1.SelectedDate.ToShortDateString();
			Calendar1.Visible=false;
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			try
			{
				SqlDataAdapter da=new SqlDataAdapter("select a.ordno,a.receipientname,d.recipename,c.Quntity,c.Amount,a.orddate,a.ordtime,a.deldate,a.deltime,a.shipaddr,a.shipcity from [orderdetails] a,transactionmaster b,[transactiondetails] c,recipedetails d where a.orddate='"+TextBox1.Text+"' and a.ordno=b.ordno and b.transid=c.transid and c.recipeid=d.recipeid",con);

				DataSet ds=new DataSet();
						
				da.Fill(ds,"orders");
				DataGrid1.DataSource=ds.Tables["orders"] ;
				DataGrid1.DataBind();  
			}
			catch
			{

			}
			
		}

		
	}
}
