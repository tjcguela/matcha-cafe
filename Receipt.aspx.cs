using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ActualMP
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            string stringconn = "Provider=Microsoft.Jet.OLEDB.4.0;";
            stringconn += "Data Source= ";
            stringconn += Server.MapPath("~/App_Data/mmm.mdb;");

            OleDbConnection conn = new OleDbConnection(stringconn);
            OleDbCommand cmd = conn.CreateCommand();

            //string selectstr = "Select email, orderID from cust_order where orderID = '";
            //selectstr += Session["currentOrder"].ToString() + "'";

            //OrderID
            string selectstr = "select orderID from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderID.Text = cmd.ExecuteScalar().ToString();
            conn.Close();

            //Email
            selectstr = "select email from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderCustomer.Text = cmd.ExecuteScalar().ToString();
            conn.Close();

            //Total
            double total = 0;

            //Natural Matcha
            //Small
            selectstr = "select no_naturalSmall from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummNaturalSmallQty.Text = cmd.ExecuteScalar().ToString();
            double order = Convert.ToDouble(lblOrderSummNaturalSmallQty.Text);
            if (order > 0)
            {
                orderSummNaturalSmall.Visible = true;
                order *= 80.50;
                total += order;
                lblOrderSummNaturalSmallPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Medium
            selectstr = "select no_naturalMedium from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummNaturalMediumQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummNaturalMediumQty.Text);
            if (order > 0)
            {
                orderSummNaturalMedium.Visible = true;
                order *= 100.75;
                total += order;
                lblOrderSummNaturalMediumPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Large
            selectstr = "select no_naturalLarge from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummNaturalLargeQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummNaturalLargeQty.Text);
            if (order > 0)
            {
                orderSummNaturalLarge.Visible = true;
                order *= 100.75;
                total += order;
                lblOrderSummNaturalLargePrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();

            if (total > 0)
            {
                lblGrandTotal.Visible = true;
                lblGrandTotal.Text = total.ToString("₱ 0.00");
            }


            //Strawberry Matcha
            //Small
            selectstr = "select no_StrawberrySmall from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummStrawberrySmallQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummStrawberrySmallQty.Text);
            if (order > 0)
            {
                orderSummStrawberrySmall.Visible = true;
                order *= 100.50;
                total += order;
                lblOrderSummStrawberrySmallPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Medium
            selectstr = "select no_StrawberryMedium from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummStrawberryMediumQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummStrawberryMediumQty.Text);
            if (order > 0)
            {
                orderSummStrawberryMedium.Visible = true;
                order *= 150.75;
                total += order;
                lblOrderSummStrawberryMediumPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Large
            selectstr = "select no_StrawberryLarge from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummStrawberryLargeQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummStrawberryLargeQty.Text);
            if (order > 0)
            {
                orderSummStrawberryLarge.Visible = true;
                order *= 200.85;
                total += order;
                lblOrderSummStrawberryLargePrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();

            //Lilac Matcha
            //Small
            selectstr = "select no_LilacSmall from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummLilacSmallQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummLilacSmallQty.Text);
            if (order > 0)
            {
                orderSummLilacSmall.Visible = true;
                order *= 150.50;
                total += order;
                lblOrderSummLilacSmallPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Medium
            selectstr = "select no_LilacMedium from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummLilacMediumQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummLilacMediumQty.Text);
            if (order > 0)
            {
                orderSummLilacMedium.Visible = true;
                order *= 200.80;
                total += order;
                lblOrderSummLilacMediumPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Large
            selectstr = "select no_LilacLarge from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummLilacLargeQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummLilacLargeQty.Text);
            if (order > 0)
            {
                orderSummLilacLarge.Visible = true;
                order *= 250.99;
                total += order;
                lblOrderSummLilacLargePrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();

            //Espresso Matcha
            //Small
            selectstr = "select no_EspressoSmall from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummEspressoSmallQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummEspressoSmallQty.Text);
            if (order > 0)
            {
                orderSummEspressoSmall.Visible = true;
                order *= 50.50;
                total += order;
                lblOrderSummEspressoSmallPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Medium
            selectstr = "select no_EspressoMedium from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummEspressoMediumQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummEspressoMediumQty.Text);
            if (order > 0)
            {
                orderSummEspressoMedium.Visible = true;
                order *= 75.80;
                total += order;
                lblOrderSummEspressoMediumPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Large
            selectstr = "select no_EspressoLarge from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummEspressoLargeQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummEspressoLargeQty.Text);
            if (order > 0)
            {
                orderSummEspressoLarge.Visible = true;
                order *= 100.75;
                total += order;
                lblOrderSummEspressoLargePrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();

            //Choco Matcha
            //Small
            selectstr = "select no_ChocoSmall from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummChocoSmallQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummChocoSmallQty.Text);
            if (order > 0)
            {
                orderSummChocoSmall.Visible = true;
                order *= 75.50;
                total += order;
                lblOrderSummChocoSmallPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Medium
            selectstr = "select no_ChocoMedium from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummChocoMediumQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummChocoMediumQty.Text);
            if (order > 0)
            {
                orderSummChocoMedium.Visible = true;
                order *= 100.65;
                total += order;
                lblOrderSummChocoMediumPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Large
            selectstr = "select no_ChocoLarge from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummChocoLargeQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummChocoLargeQty.Text);
            if (order > 0)
            {
                orderSummChocoLarge.Visible = true;
                order *= 125.85;
                total += order;
                lblOrderSummChocoLargePrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();

            //White Matcha
            //Small
            selectstr = "select no_WhiteSmall from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummWhiteSmallQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummWhiteSmallQty.Text);
            if (order > 0)
            {
                orderSummWhiteSmall.Visible = true;
                order *= 80.50;
                total += order;
                lblOrderSummWhiteSmallPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Medium
            selectstr = "select no_WhiteMedium from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummWhiteMediumQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummWhiteMediumQty.Text);
            if (order > 0)
            {
                orderSummWhiteMedium.Visible = true;
                order *= 120.66;
                total += order;
                lblOrderSummWhiteMediumPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Large
            selectstr = "select no_WhiteLarge from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummWhiteLargeQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummWhiteLargeQty.Text);
            if (order > 0)
            {
                orderSummWhiteLarge.Visible = true;
                order *= 200.55;
                total += order;
                lblOrderSummWhiteLargePrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();

            //Pastries Matcha
            //Small
            selectstr = "select no_PastriesSix from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummPastriesSixQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummPastriesSixQty.Text);
            if (order > 0)
            {
                orderSummPastriesSix.Visible = true;
                order *= 300.65;
                total += order;
                lblOrderSummPastriesSixPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Medium
            selectstr = "select no_PastriesTwelve from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummPastriesTwelveQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummPastriesTwelveQty.Text);
            if (order > 0)
            {
                orderSummPastriesTwelve.Visible = true;
                order *= 500.25;
                total += order;
                lblOrderSummPastriesTwelvePrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();
            //Large
            selectstr = "select no_PastriesTwenty from cust_order where orderID = '";
            selectstr += Session["currentOrder"].ToString() + "'";

            conn.Open();
            cmd.CommandText = selectstr;
            lblOrderSummPastriesTwentyQty.Text = cmd.ExecuteScalar().ToString();
            order = Convert.ToDouble(lblOrderSummPastriesTwentyQty.Text);
            if (order > 0)
            {
                orderSummPastriesTwenty.Visible = true;
                order *= 850.88;
                total += order;
                lblOrderSummPastriesTwentyPrice.Text = order.ToString("₱ 0.00");
            }
            conn.Close();

            if (total > 0)
            {
                lblGrandTotal.Visible = true;
                lblGrandTotal.Text = total.ToString("₱ 0.00");
            }

            Session["total"] = total.ToString("0.00");

            //using(OleDbDataAdapter ad = new OleDbDataAdapter(cmd))
            //{
            //    DataSet ds = new DataSet();
            //    ad.Fill(ds);
            //    GridViewReceipt.DataSource = ds;
            //    GridViewReceipt.DataBind();
            //}
            //conn.Close();
        }
    }
}