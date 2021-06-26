using System;

namespace OnlineFastFood
{
	/// <summary>
	/// Summary description for CShoppingCartItem.
	/// </summary>
	public class CShoppingCartItem
	{
//		public CShoppingCartItem()
//		{
//			//
//			// TODO: Add constructor logic here
//			//
//		}
		
		private int recipeid;
		private string strrecipename;
		private decimal decUnitPrice;
		private int intQuantity;
		
		public int Recipeid
		{
			get
			{
				return recipeid;
			}
			set
			{
				recipeid=value;
			}
		}

		public string Recipename
		{
			get
			{
				return strrecipename;
			}
			set
			{
				strrecipename=value;
			}
		}

		public decimal Cost
		{
			get
			{
				return decUnitPrice;
			}
			set
			{
				decUnitPrice=value;
			}
		}

		public int Quantity
		{
			get
			{
				return intQuantity;
			}
			set
			{
				intQuantity=value;
			}
		}
	}
}
