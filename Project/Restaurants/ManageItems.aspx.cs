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
	/// Summary description for ManageItems.
	/// </summary>
	public partial class ManageItems : System.Web.UI.Page
	{
		SqlConnection con=new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["ConStr"]);
		string gh;
	
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
			try
			{
				dgpanel.Visible=true;
				frmpanel.Visible=false; 
				LinkButton1.Visible=true;
			
				SqlDataAdapter da=new SqlDataAdapter("select * from recipedetails",con);
				DataSet ds=new DataSet();
				da.Fill(ds);
				DataGrid1.DataSource=ds.Tables[0];   
				DataGrid1.DataBind(); 
			}
			catch
			{
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

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			dgpanel.Visible=false;
			frmpanel.Visible=true;
			
			LinkButton1.Visible=false; 
			clear();
		}

		public void clear()
		{
			txtitemcost.Text="";
			txtitemname.Text="";
			
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			try
			{
				string x=f1.PostedFile.FileName .ToString();
 
				string filename=System.IO.Path.GetFileName(x);

				 gh=@"C:\InetPub\Wwwroot\OnlineFastFood\Images\" +filename;
				f1.PostedFile.SaveAs(@"C:\InetPub\Wwwroot\OnlineFastFood\Images\"+filename);  
				
			
			}
			catch
			{
Response.Write("<script>alert('Image is Not Uploaded')</script>");
			}
			
			try
			{
				con.Open();
				SqlDataAdapter da_2=new SqlDataAdapter("select * from recipedetails where recipename='"+txtitemname.Text+"'",con);
				DataSet  ds_2=new DataSet();
				da_2.Fill(ds_2);
				if(ds_2.Tables[0].Rows.Count==0)
				{
					if(con.State==ConnectionState.Closed)
					{
						con.Open(); 
					}
					SqlCommand cmd=new SqlCommand("insert into recipedetails(recipename,Description,cost,image)values('"+txtitemname.Text+ " ' ,'"+ TextBox1.Text+"','"+txtitemcost.Text+"','"+gh.ToString() +"')",con);
					cmd.ExecuteNonQuery();
					bind();
					con.Close(); 
				}
				else
				{
					Response.Write("<script>alert('Item Alredy Existing')</script>"); 
					
				}
 
				  
 

				
			}
			catch
			{
				Response.Write("<script>alert('Enter Correct Data')</script>"); 
			}

 
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			bind();
		
		}

		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}

		private void DataGrid1_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			switch(e.CommandName)
			{
				
				case "delete":
					try
					{
						con.Open(); 
						SqlCommand cmd =new SqlCommand("delete from recipedetails where recipeid='"+e.CommandArgument+"'",con);

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

		private void Button3_Click(object sender, System.EventArgs e)
		{
			 
		}
	}
}
