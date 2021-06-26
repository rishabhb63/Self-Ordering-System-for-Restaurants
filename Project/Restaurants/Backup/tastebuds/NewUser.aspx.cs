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
using System.Configuration;

namespace OnlineFastFood
{
	/// <summary>
	/// Summary description for NewUser.
	/// </summary>
	public partial class NewUser : System.Web.UI.Page
	{

		public static SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["constr"].ToString());
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(IsPostBack==false)
			{
			}
			txtbttn.Attributes.Add("onClick","return validate_fields()");
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

		protected void txtbttn_Click(object sender, System.EventArgs e)
		{
			try
			{
				
			
				//SqlDataAdapter da_12=new SqlDataAdapter("select username from userdetails where username='"+txtusername.Text+"'",con);
			//	DataSet ds_12=new DataSet();
				//da_12.Fill(ds_12);
				//if(ds_12.Tables[0].Rows.Count==0)
				{

					if(con.State==ConnectionState.Open)
					{

					}
					else
					{

                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = con;
                        cmd.CommandText = "insert into userdetails(username,password,passwordhintquestion,hintanswer,name,emailid,confirmemailid,secondaryemailid,icno,phoneno,mobileno,Faxno,Address1,Address2,city,state,zip,country) values('" + txtusername.Text + "','" + txtpassword.Text + "','" + dl1pashintq.SelectedItem.Text + "','" + txthintanswer.Text + "','" + txtname.Text + "','" + txtemailid.Text + "','" + txtconfemailid.Text + "','" + txtsecemailid.Text + "','" + txt_icno.Text + "','" + txtphno.Text + "','" + txtmobileno.Text + "','" + txtfaxno.Text + "','" + txtaddr1.Text + "','" + txtaddr2.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtzipcode.Text + "','" + txtcountry.Text + "')";
                        cmd.CommandType = CommandType.Text;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Response.Write("Registered Succesfully");
                        Response.Redirect("HomePage.aspx");
                        con.Close();
                        
                        
                        
                        //con.Open();

                        //SqlCommand cmd = new SqlCommand("insert into userdetails(username,password,passwordhintquestion,hintanswer,name,emailid,confirmemailid,secondaryemailid,icno,phoneno,mobileno,Faxno,Address1,Address2,city,state,zip,country) values('" + txtusername.Text + "','" + txtpassword.Text + "','" + dl1pashintq.SelectedItem.Text + "','" + txthintanswer.Text + "','" + txtname.Text + "','" + txtemailid.Text + "','" + txtconfemailid.Text + "','" + txtsecemailid.Text + "','" + txt_icno.Text + "','" + txtphno.Text + "','" + txtmobileno.Text + "','" + txtfaxno.Text + "','" + txtaddr1.Text + "','" + txtaddr2.Text + "','" + txtcity.Text + "','" + txtstate.Text + "','" + txtzipcode.Text + "','" + txtcountry.Text + "')", con);

                        //cmd.ExecuteNonQuery();
                        //Response.Redirect("HomePage.aspx");
                        //con.Close();
					}

                   
					

				}
//				else
//				{
//
//					Response.Write("<script>alert('User Name Alredy Exists Choose Anohter UserName')</script>"); 
//				}
			}
			catch(Exception e1)
			{
				Response.Write(e1.ToString());
			}
		}


	public void clear()
		{
			txtusername.Text="";
			txtpassword.Text="";
			txtretypepassword.Text="";
			dl1pashintq.SelectedIndex=0;
			txthintanswer.Text="";
			txtname.Text="";
			txtemailid.Text="";
			txtphno.Text="";
			txtmobileno.Text="";
			txtfaxno.Text="";
			txtaddr1.Text="";
			txtaddr2.Text="";
			txtcity.Text="";
			txtstate.Text="";
			txtzipcode.Text="";
			txtcountry.Text="";
	  }
    protected void txtpassword_TextChanged(object sender, System.EventArgs e)
		{
		
		}
	}
}
