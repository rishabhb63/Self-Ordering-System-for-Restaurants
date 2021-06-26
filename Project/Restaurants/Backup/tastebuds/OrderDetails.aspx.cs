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

namespace ONLINEFASTFOODORDERING
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public partial class WebForm1 : System.Web.UI.Page
	{
        
        string str;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

		SqlConnection con=new SqlConnection(System.Configuration.ConfigurationSettings.AppSettings["ConStr"]);
	    public static DataTable dt;
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Session["username"]==null)
			{
				Response.Redirect("HomePage.aspx"); 
			}
			
				try
				{
					dt=new DataTable();
					dt.Columns.Add("recipeid");
					dt.Columns.Add("recipename");
					dt.Columns.Add("cost");
					dt.Columns.Add("quantity");
					dt.Columns.Add("total");
					dt=(DataTable)Session["order"];
					Calendar1.Visible=false;
                   	string str="select max(ordno)+1 from [orderdetails]";
					SqlDataAdapter da=new SqlDataAdapter(str,con);
					DataSet ds=new DataSet();
					da.Fill(ds);
					string str1=ds.Tables[0].Rows.Count.ToString();
					TextBox1.Text=ds.Tables[0].Rows[0][0].ToString();


					TextBox2.Text=System.DateTime.Now.ToShortDateString();
					TextBox3.Text=System.DateTime.Now.ToShortTimeString();
					TextBox12.Text=Session["username"].ToString();
				}
				catch
				{
				}
			Button2.Attributes.Add("OnClick","return test()");  	
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

		protected void Button2_Click(object sender, System.EventArgs e)
		{
            try
            {

                cmd = new SqlCommand("Insert into orderdetails values(" + TextBox1.Text + ",'" + Convert.ToDateTime(TextBox2.Text) + "','" + TextBox3.Text + "','" + Convert.ToDateTime(TextBox4.Text) + "','" + TextBox5.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "')", con);
                cmd.CommandType = CommandType.Text;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lbldisplay.Text = "Order Details Successfully Inserted";
                

                //try
                //{

                //    SqlCommand cmd=new SqlCommand();

                //    string str1;

                //    con.Open();
                //    str1="insert into [order details](ordno,orddate,ordtime,deldate,deltime,receipientname,shipaddr,shipcity) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox12.Text+"','"+TextBox13.Text+"','"+TextBox14.Text+"')";
                //    cmd=new SqlCommand(str1,con);
                //    cmd.ExecuteNonQuery();

                   Session["A"]=TextBox1.Text+","+TextBox2.Text+","+TextBox3.Text+","+TextBox4.Text+","+TextBox5.Text+","+TextBox12.Text+","+TextBox13.Text+","+TextBox14.Text;
                if (Session["ctype"].ToString() == "Select Card")
                {
                    string str2 = "insert into transactionmaster(cardtype,cardno,vccno,ordno,[Transaction Type])values('" + Session["ctype"].ToString() + "','" + Session["cardno"].ToString() + "','" + Session["vccno"].ToString() + "','" + TextBox1.Text + "','Cash')";
                    cmd = new SqlCommand(str2, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    string str2 = "insert into transactionmaster(cardtype,cardno,vccno,ordno,[Transaction Type])values('" + Session["ctype"].ToString() + "','" + Session["cardno"].ToString() + "','" + Session["vccno"].ToString() + "','" + TextBox1.Text + "','Credit Card')";
                    cmd = new SqlCommand(str2, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }



                string strget = "Select max(transid) from transactionmaster where ordno = '" + TextBox1.Text + "'";
                cmd = new SqlCommand(strget, con);
                con.Open();
                string maxid = Convert.ToString(cmd.ExecuteScalar());
                con.Close();

                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    string str3 = "insert into [transactiondetails](transid,recipeid,Quntity,Amount) values(" + maxid + ",'" + dt.Rows[i]["recipeid"].ToString() + "','" + dt.Rows[i]["quantity"].ToString() + "'," + dt.Rows[i]["cost"].ToString() + ")";
                    cmd = new SqlCommand(str3, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                //    Button2.Attributes.Add("onclick","return valid()");

                //    Response.Redirect("OrderStatusDetails.aspx");
                //}
                //catch(Exception e1)
                //{
                //Response.Write(e1.ToString());

                //}
                Response.Redirect("OrderStatusDetails.aspx");
            }
            catch (Exception ex)
            {
                lbldisplay.Text = ex.Message;
            }
			 
    	}

		private void Button1_Click(object sender, System.EventArgs e)
		{
		    Response.Redirect("OrderStatusDetails.aspx");
		}

		private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
		{
			Calendar1.Visible=true;
		}

		protected void Calendar1_SelectionChanged(object sender, System.EventArgs e)
		{
			TextBox4.Text=Calendar1.SelectedDate.ToShortDateString();
			Calendar1.Visible=false;
            
		}
	}
}
