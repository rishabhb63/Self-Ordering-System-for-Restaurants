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
	/// Summary description for WebForm1.
	/// </summary>
	public partial class Recipesdetails : System.Web.UI.Page
	{
		
		SqlConnection con=new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["ConStr"]);

	    public static DataTable dt;
		protected void Page_Load(object sender, System.EventArgs e)
		{
			
			
			if(Session["username"]==null)
			{
				Response.Redirect("HomePage.aspx"); 
			}
			if(!Page.IsPostBack)
			{
				
				try
				{
					dt=new DataTable();
					dt.Columns.Add("recipeid");
					dt.Columns.Add("recipename");
					dt.Columns.Add("cost");
					dt.Columns.Add("quantity");
					dt.Columns.Add("total");
					if(Session["return"].ToString()=="1")
					{
						dt=(DataTable)Session["order"];
						Session["return"]=0;

					}
					Databind();
					
				}
				catch
				{
				}
			}
			
		}
		void Databind()
		{
			try
			{
				SqlDataAdapter da=new SqlDataAdapter("select * from recipedetails",con);
				DataSet ds=new DataSet();
				da.Fill(ds);
				DataGrid1.DataSource=ds;
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
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);

		}
		#endregion

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			//HttpCookie c=HttpContext.Current.Request.Cookies["cart"];

			
//			ArrayList items=new ArrayList();
			try
			{
//				int s=c.Values.Count;
//				if(Convert.ToString(s)==null)
//				{
//				}
//				else
			Session["order"]=dt;
					Response.Redirect("CartDetails.aspx");
			}
			catch(Exception ex)
			{
				if(ex.Message=="Object reference not set to an instance of an object.")
				{
					Label1.Visible=true;
					Label1.Text="please select atleast one recipe";
								
				}
			}
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			Databind();
		}
		DataRow dr;
		static int val;
		public void DataGrid1_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			Label1.Visible=false;			
			if(e.Item.ItemType==ListItemType.Item|| e.Item.ItemType==ListItemType.AlternatingItem)
			{
				DataGridItem di=DataGrid1.Items[e.Item.ItemIndex];
				di.BackColor=Color.BlanchedAlmond;
			}
            
			switch(e.CommandName)
			{
				case "cart":
					try
					{
                           for(int i=0;i<dt.Rows.Count;i++)
						{
							if(dt.Rows[i][0].ToString()==DataGrid1.Items[e.Item.ItemIndex].Cells[0].Text)
							{
								val=1;
							}
						}
						if(val==0)
						{
							dr=dt.NewRow();
							dr["recipeid"]=DataGrid1.Items[e.Item.ItemIndex].Cells[0].Text;
							dr["recipename"]=DataGrid1.Items[e.Item.ItemIndex].Cells[1].Text;
							dr["cost"]=DataGrid1.Items[e.Item.ItemIndex].Cells[2].Text;
							dr["quantity"]="1";
							dt.Rows.Add(dr);
						}
						else
						{
							val=0;
						}
					}
					catch
					{
					}
					
					break;
				
			}			
		}	
	}
}
