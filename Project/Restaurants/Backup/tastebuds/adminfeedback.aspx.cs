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
	/// Summary description for adminfeedback.
	/// </summary>
	public partial class adminfeedback : System.Web.UI.Page
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
				frmpanel.Visible=false;
				dgpanel.Visible=false; 
				calpanel.Visible=true; 
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
			this.DataGrid1.ItemCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_ItemCommand);

		}
		#endregion

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			try
			{
				SqlDataAdapter da=new SqlDataAdapter("select surveyid,username,sdate from survey where sdate='"+Convert.ToDateTime(TextBox1.Text)+"'",con);

				DataSet ds=new DataSet();
			
				da.Fill(ds,"survey");
                DataGrid1.DataSource = ds.Tables["survey"];
				DataGrid1.DataBind();
			frmpanel.Visible=false;
			dgpanel.Visible=true;
			calpanel.Visible=false; 
			}
			catch
			{

			}
		}

		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Calendar1.Visible=true;
		}

		protected void Calendar1_SelectionChanged(object sender, System.EventArgs e)
		{
			TextBox1.Text=Calendar1.SelectedDate.ToShortDateString();
			Calendar1.Visible=false;
			frmpanel.Visible=false;
			dgpanel.Visible=false;
			calpanel.Visible=true; 
		}

		private void DataGrid1_ItemCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			switch(e.CommandName)
			{
				case "View":
					
					try
					{
						frmpanel.Visible=true;
						dgpanel.Visible=false;
						calpanel.Visible=false; 
						if(con.State==ConnectionState.Closed)
						{
							con.Open(); 
						}
						SqlCommand cmd=new SqlCommand("select * from survey where surveyid='"+e.CommandArgument.ToString()+"'",con);
                        cmd.CommandType = CommandType.Text;
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read() == true)
                        {
                            CheckBoxList1.SelectedValue = dr[3].ToString();
                            t.SelectedValue = dr[4].ToString();
                            f.SelectedValue = dr[5].ToString();
                            a.SelectedValue = dr[6].ToString();
                            TextBox6.Text = dr[7].ToString();
                            f1.SelectedValue = dr[8].ToString();
                            f2.SelectedValue = dr[9].ToString();
                            f3.SelectedValue = dr[10].ToString();
                            TextBox7.Text = dr[11].ToString();
                        }
                        dr.Close();
                        con.Close();
					}
					catch
					{
					}
					break;
				default:
					break;
			}
			

		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			frmpanel.Visible=false;
			dgpanel.Visible=true;
			calpanel.Visible=false; 
		}
	}
}
