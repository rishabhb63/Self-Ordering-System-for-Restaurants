using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


namespace OnlineFastFood
{
	/// <summary>
	/// Summary description for CartDetails.
	/// </summary>
	public partial class CartDetails : System.Web.UI.Page
	{

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
					dt=(DataTable)Session["order"];
					Panel1.Visible=false;
					DataGrid1.DataSource=dt;
					DataGrid1.DataBind();
					for(int k=0;k<dt.Rows.Count;k++)
					{
						TextBox t=new TextBox();
						t=(TextBox)DataGrid1.Items[k].Cells[3].FindControl("TextBox2");
						t.Text=dt.Rows[k]["quantity"].ToString();
					}
					calculate();
				}
				catch
				{
				}
				//FillCartFromCookies();
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
			this.DataGrid1.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_DeleteCommand);

		}
		#endregion
//		private void FillCartFromCookies()
//		{
//			HttpCookie c=HttpContext.Current.Request.Cookies["cart"];
//			ArrayList items=new ArrayList();
//		
//					for(int i=0;i<c.Values.Count;i++)
//					{
//						string[] vals=c.Values[i].Split('|');
//						CShoppingCartItem item=new CShoppingCartItem();
//						item.Recipeid=Int16.Parse(vals[0]);
//						item.Recipename=vals[1];
//						item.Cost=decimal.Parse(vals[2]);
//						item.Quantity=1;
//						items.Add(item);
//					}
//
//				DataGrid1.DataSource=items;
//				DataGrid1.DataBind();
//			
//			calculate();
//		}
		private void DataGrid1_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
//			HttpCookie c=HttpContext.Current.Request.Cookies["cart"];
//			
//					
//					c.Values.Remove(e.Item.Cells[1].Text);
//					Response.Cookies.Add(c);
//				
//			FillCartFromCookies();	
			try
			{
				dt.Rows.RemoveAt(e.Item.ItemIndex);
				DataGrid1.DataSource=dt;
				DataGrid1.DataBind();
				for(int k=0;k<dt.Rows.Count;k++)
				{
					TextBox t=new TextBox();
					t=(TextBox)DataGrid1.Items[k].Cells[3].FindControl("TextBox2");
					t.Text=dt.Rows[k]["quantity"].ToString();
				}
			
				calculate();
			}
			catch
			{
			}
		}
		protected void Button1_Click(object sender, System.EventArgs e)
		{
			calculate();	
		}
		void calculate()
		{			
			decimal total=0;

			try
			{
				foreach(DataGridItem dgi in DataGrid1.Items)
				{
					if(dgi.ItemType==ListItemType.Item || dgi.ItemType==ListItemType.AlternatingItem)
					{
						TextBox t=(TextBox)dgi.Cells[3].Controls[1];
						int quantity=int.Parse(t.Text);
						decimal unitprice=Decimal.Parse(dgi.Cells[2].Text);
						total=total + (unitprice * quantity);
					}
				}
			}
			catch(Exception ex)
			{
				Response.Write(ex.Message);
			}
			lblAmt.Text=total.ToString();
		}

		protected void Submit_Click(object sender, System.EventArgs e)
		{
			Session["cardno"]=txtcno.Text;
			Session["vccno"]=txtvccno.Text;
			Session["ctype"]=DropDownList2.SelectedItem.Text;
            //cmd = new SqlCommand("Insert into transactionmaster values('"+Session["ctype"].ToString()+"',"+Session["cardno"]+","+Session["vccno"]+","+

//			HttpCookie a=new HttpCookie("order");
//			string itemdetails;
//			foreach(DataGridItem i in DataGrid1.Items)
//			{
//				
//				TextBox t=new TextBox();
//				t=(TextBox)i.Cells[3].Controls[1];
//				itemdetails=i.Cells[0].Text+"|"+t.Text+"|"+Convert.ToString(Double.Parse(i.Cells[2].Text)*Double.Parse(t.Text));
//				a.Values[i.Cells[1].Text]=itemdetails;
//				Response.Cookies.Add(a);
//			}
			try
			{


				for(int j=0;j<DataGrid1.Items.Count;j++)
				{
					dt.Rows[j].BeginEdit();
					TextBox t=new TextBox();
					t=(TextBox)DataGrid1.Items[j].Cells[3].FindControl("TextBox2");
					dt.Rows[j]["quantity"]=t.Text;
					string tot=Convert.ToString(Double.Parse(DataGrid1.Items[j].Cells[2].Text)*Double.Parse(t.Text));
                    dt.Rows[j]["total"] = lblAmt.Text;
                    //Convert.ToString(Double.Parse(DataGrid1.Items[j].Cells[2].Text)*Double.Parse(t.Text));

				}
				Session["order"]=dt;
			}
			catch
			{

			}
			Response.Redirect("OrderDetails.aspx");
		}

		protected void DropDownList1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			if(DropDownList1.SelectedItem.Text=="creditcard")
			{
				Panel1.Visible=true;				
			}               
			else
			{
				Panel1.Visible=false;
			}              
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{	
			try
			{
				for(int j=0;j<DataGrid1.Items.Count;j++)
				{
					dt.Rows[j].BeginEdit();
					TextBox t=new TextBox();
					t=(TextBox)DataGrid1.Items[j].Cells[3].FindControl("TextBox2");
					dt.Rows[j]["quantity"]=t.Text;
					string tot=Convert.ToString(Double.Parse(DataGrid1.Items[j].Cells[2].Text)*Double.Parse(t.Text));
					dt.Rows[j]["total"]=Convert.ToString(Double.Parse(DataGrid1.Items[j].Cells[2].Text)*Double.Parse(t.Text));
				}
			}
			catch
			{
			}
			
			Session["order"]=dt;
			Session["return"]=1;
			Response.Redirect("Recipesdetails.aspx");			
		}

		protected void DropDownList2_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}
        protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}
