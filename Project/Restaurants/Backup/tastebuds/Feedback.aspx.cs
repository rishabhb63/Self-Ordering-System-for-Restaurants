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
using System.Web.Mail;
using System.Data.SqlClient;

namespace OnlineFastFood
{
	/// <summary>
	/// Summary description for Feedback.
	/// </summary>
	public partial class Feedback : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox TextBox5;
		protected System.Web.UI.WebControls.Label Label9;
		protected System.Web.UI.WebControls.TextBox TextBox4;
		protected System.Web.UI.WebControls.Label Label8;
		protected System.Web.UI.WebControls.Label Label7;
		protected System.Web.UI.WebControls.Label Label6;
		protected System.Web.UI.WebControls.Label Label5;
		protected System.Web.UI.WebControls.TextBox TextBox3;
		protected System.Web.UI.WebControls.TextBox TextBox2;
		protected System.Web.UI.WebControls.TextBox TextBox1;

		
		SqlConnection con=new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["ConStr"]);
		string gh;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			Page.SmartNavigation=true;
			if(Session["username"]==null)
			{
				Response.Redirect("homepage.aspx"); 
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





        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string dt = DateTime.Now.ToShortDateString();
                string name = Session["UserName"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into survey(username,sdate,prompt,timeservice,friendservice,accurcyservice,servicecomments,quality,spirits,coffea,foodcomments)values('" + name + "','" + dt + "','" + CheckBoxList1.SelectedItem.Text + "','" + t.SelectedItem.Text + "','" + f.SelectedItem.Text + "','" + a.SelectedItem.Text + "','" + TextBox6.Text + "','" + f1.SelectedItem.Text + "','" + f2.SelectedItem.Text + "','" + f3.SelectedItem.Text + "','" + TextBox7.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Recipesdetails.aspx");
            }
            catch
            {
                Response.Write("Enter Correct Date");
            }
        }
}
}
