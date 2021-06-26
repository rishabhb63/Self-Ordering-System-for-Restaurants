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

namespace OnlineFastFood
{
	/// <summary>
	/// Summary description for userinformation.
	/// </summary>
	public partial class userinformation : System.Web.UI.Page
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
				bind();
			}
		}

		public void bind()
		{
          
                dgpanel.Visible = true;

                SqlDataAdapter da = new SqlDataAdapter("select username,emailid,mobileno,address1,address2,city,state from userdetails", con);
                DataSet ds = new DataSet();
                da.Fill(ds, "users");
                if (ds.Tables["users"].Rows.Count > 0)
                {
                    DataGrid1.DataSource = ds.Tables["users"];
                    DataGrid1.DataBind();
                    string gg = ds.Tables["users"].Rows.Count.ToString();
                }
                else
                {
                    lbldisplay.Text = "There is no records";
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
			this.DataGrid1.ItemCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_ItemCommand);

		}
		#endregion

		private void DataGrid1_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			switch(e.CommandName)
			{
				
				case "delete":
					try
					{
						con.Open(); 
						SqlCommand cmd =new SqlCommand("delete from userdetails where username='"+e.CommandArgument+"'",con);

						cmd.ExecuteNonQuery(); 
						con.Close(); 
						bind();
					}
					catch
					{
					}
					break;
				default:
					break;
			}
		}
	}
}
