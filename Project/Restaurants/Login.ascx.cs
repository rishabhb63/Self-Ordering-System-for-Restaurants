namespace OnlineFastFood
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using System.Data.SqlClient;  

	/// <summary>
	///		Summary description for Login.
	/// </summary>
	public partial class Login : System.Web.UI.UserControl
	{
        SqlCommand cmd;
		SqlConnection con=new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["ConStr"]);
		//OnlineFastFood.KUtilities obj;

		protected void Page_Load(object sender, System.EventArgs e)
		{
			//Obj=new OnlineFood.KUtilities(this);
			lblogin.Visible=false;
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
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("NewUser.aspx");
		}

		protected void btlogin_Click(object sender, System.EventArgs e)
        {
            

				string sqlStr ="select * from userdetails where username='"+txtuser.Text+"' and password='"+txtpass.Text+"'";
				SqlDataAdapter da=new SqlDataAdapter(sqlStr,con);
				DataSet ds = new DataSet();
				da.Fill(ds,"Table");
                if (ds.Tables[0].Rows.Count.ToString() != "0")         
				{
                  Session["UserName"]=txtuser.Text;
                   Response.Redirect("Recipesdetails.aspx");
				}				
				else
				{								
                        cmd = new SqlCommand("Select Count(*) from admin where username='" + txtuser.Text + "' and password ='" + txtpass.Text + "'", con);
                        cmd.CommandType =CommandType.Text;
                        con.Open();
                        int i = Convert.ToInt32(cmd.ExecuteScalar());
                        if(i==1)
                        {
							Session["UserName"]=txtuser.Text;
							Response.Redirect("adminhomepage.aspx");
                        }
                        else
                        {
                            lbldisplay.Text="Invalid Id/Password";
                        }
                    }
                       

                    //else
                    //    {
                    //        Session["UserName"]=txtuser.Text;
                    //        Response.Redirect("Recipesdetails.aspx");
                    //    }

					}
			
				//        if (ds.Tables[0].Rows.Count.ToString() == "0")         
//                {
//                    Response.Write("<script>alert('User Does Not Exist')</script>");
//    if (ds.Tables[0].Rows[0]["password"].ToString() != txtpass.Text)
//                    {
//                        //Obj.msgBox("Incorrect Password! Re Enter the Password");
//                        Response.Write("<script>alert('Incorrect Password! Re Enter the Password')</script>");
//                    }
////			}
//			catch
//			{
//				lblogin.Visible=true;
//			}
		
		protected void lbchangepass_Click(object sender, System.EventArgs e)
		{
			Response.Redirect("ForgotPassword.aspx");
		}
	}
    }

