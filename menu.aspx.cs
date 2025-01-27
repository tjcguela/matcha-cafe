using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Services.Protocols;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ActualMP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        protected void txtQtyNatural_TextChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyNatural", "DDSizeNatural", "lblPriceNatural", "lblQtyNaturalRV");
        }

        protected void DDSizeNatural_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyNatural", "DDSizeNatural", "lblPriceNatural", "lblQtyNaturalRV");
        }

        protected void txtQtyStrawberry_TextChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyStrawberry", "DDSizeStrawberry", "lblPriceStrawberry", "lblQtyStrawberryRV");
        }

        protected void DDSizeStrawberry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyStrawberry", "DDSizeStrawberry", "lblPriceStrawberry", "lblQtyStrawberryRV");
        }

        protected void DDSizeLilac_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyLilac", "DDSizeLilac", "lblPriceLilac", "lblQtyLilacRV");
        }

        protected void txtQtyLilac_TextChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyLilac", "DDSizeLilac", "lblPriceLilac", "lblQtyLilacRV");

        }

        protected void txtQtyEspresso_TextChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyEspresso", "DDSizeEspresso", "lblPriceEspresso", "lblQtyEspressoRV");
        }

        protected void DDSizeEspresso_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyEspresso", "DDSizeEspresso", "lblPriceEspresso", "lblQtyEspressoRV");
        }

        protected void DDSizeChoco_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyChoco", "DDSizeChoco", "lblPriceChoco", "lblQtyChocoRV");
        }

        protected void txtQtyChoco_TextChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyChoco", "DDSizeChoco", "lblPriceChoco", "lblQtyChocoRV");
        }

        protected void DDSizeWhite_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyWhite", "DDSizeWhite", "lblPriceWhite", "lblQtyWhiteRV");
        }

        protected void txtQtyWhite_TextChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyWhite", "DDSizeWhite", "lblPriceWhite", "lblQtyWhiteRV");
        }

        protected void DDSizePastries_SelectedIndexChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyPastries", "DDSizePastries", "lblPricePastries", "lblQtyPastriesRV");
        }

        protected void txtQtyPastries_TextChanged(object sender, EventArgs e)
        {
            ChangeQty("txtQtyPastries", "DDSizePastries", "lblPricePastries", "lblQtyPastriesRV");
        }

        protected void btnNaturalAdd_Click(object sender, EventArgs e)
        {
            btnAddToReceipt("txtQtyNatural", "DDSizeNatural", "orderSummNaturalSmall", "lblOrderSummNaturalSmallQty", "lblOrderSummNaturalSmallRV", "lblOrderSummNaturalSmallPrice", "orderSummNaturalMedium", "lblOrderSummNaturalMediumQty", "lblOrderSummNaturalMediumRV", "lblOrderSummNaturalMediumPrice", "orderSummNaturalLarge", "lblOrderSummNaturalLargeQty", "lblOrderSummNaturalLargeRV", "lblOrderSummNaturalLargePrice");
        }

        protected void btnNaturalRemove_Click(object sender, EventArgs e)
        {
            btnRemoveFromReceipt("txtQtyNatural", "DDSizeNatural", "orderSummNaturalSmall", "lblOrderSummNaturalSmallQty", "lblOrderSummNaturalSmallRV", "lblOrderSummNaturalSmallPrice", "orderSummNaturalMedium", "lblOrderSummNaturalMediumQty", "lblOrderSummNaturalMediumRV", "lblOrderSummNaturalMediumPrice", "orderSummNaturalLarge", "lblOrderSummNaturalLargeQty", "lblOrderSummNaturalLargeRV", "lblOrderSummNaturalLargePrice");
        }

        protected void btnStrawberryAdd_Click(object sender, EventArgs e)
        {
            btnAddToReceipt("txtQtyStrawberry", "DDSizeStrawberry", "orderSummStrawberrySmall", "lblOrderSummStrawberrySmallQty", "lblOrderSummStrawberrySmallRV", "lblOrderSummStrawberrySmallPrice", "orderSummStrawberryMedium", "lblOrderSummStrawberryMediumQty", "lblOrderSummStrawberryMediumRV", "lblOrderSummStrawberryMediumPrice", "orderSummStrawberryLarge", "lblOrderSummStrawberryLargeQty", "lblOrderSummStrawberryLargeRV", "lblOrderSummStrawberryLargePrice");

        }

        protected void btnStrawberryRemove_Click(object sender, EventArgs e)
        {
            btnRemoveFromReceipt("txtQtyStrawberry", "DDSizeStrawberry", "orderSummStrawberrySmall", "lblOrderSummStrawberrySmallQty", "lblOrderSummStrawberrySmallRV", "lblOrderSummStrawberrySmallPrice", "orderSummStrawberryMedium", "lblOrderSummStrawberryMediumQty", "lblOrderSummStrawberryMediumRV", "lblOrderSummStrawberryMediumPrice", "orderSummStrawberryLarge", "lblOrderSummStrawberryLargeQty", "lblOrderSummStrawberryLargeRV", "lblOrderSummStrawberryLargePrice");
        }

        protected void btnLilacAdd_Click(object sender, EventArgs e)
        {
            btnAddToReceipt("txtQtyLilac", "DDSizeLilac", "orderSummLilacSmall", "lblOrderSummLilacSmallQty", "lblOrderSummLilacSmallRV", "lblOrderSummLilacSmallPrice", "orderSummLilacMedium", "lblOrderSummLilacMediumQty", "lblOrderSummLilacMediumRV", "lblOrderSummLilacMediumPrice", "orderSummLilacLarge", "lblOrderSummLilacLargeQty", "lblOrderSummLilacLargeRV", "lblOrderSummLilacLargePrice");

        }

        protected void btnLilacRemove_Click(object sender, EventArgs e)
        {
            btnRemoveFromReceipt("txtQtyLilac", "DDSizeLilac", "orderSummLilacSmall", "lblOrderSummLilacSmallQty", "lblOrderSummLilacSmallRV", "lblOrderSummLilacSmallPrice", "orderSummLilacMedium", "lblOrderSummLilacMediumQty", "lblOrderSummLilacMediumRV", "lblOrderSummLilacMediumPrice", "orderSummLilacLarge", "lblOrderSummLilacLargeQty", "lblOrderSummLilacLargeRV", "lblOrderSummLilacLargePrice");

        }

        protected void btnEspressoAdd_Click(object sender, EventArgs e)
        {
            btnAddToReceipt("txtQtyEspresso", "DDSizeEspresso", "orderSummEspressoSmall", "lblOrderSummEspressoSmallQty", "lblOrderSummEspressoSmallRV", "lblOrderSummEspressoSmallPrice", "orderSummEspressoMedium", "lblOrderSummEspressoMediumQty", "lblOrderSummEspressoMediumRV", "lblOrderSummEspressoMediumPrice", "orderSummEspressoLarge", "lblOrderSummEspressoLargeQty", "lblOrderSummEspressoLargeRV", "lblOrderSummEspressoLargePrice");
        }

        protected void btnEspressoRemove_Click(object sender, EventArgs e)
        {
            btnRemoveFromReceipt("txtQtyEspresso", "DDSizeEspresso", "orderSummEspressoSmall", "lblOrderSummEspressoSmallQty", "lblOrderSummEspressoSmallRV", "lblOrderSummEspressoSmallPrice", "orderSummEspressoMedium", "lblOrderSummEspressoMediumQty", "lblOrderSummEspressoMediumRV", "lblOrderSummEspressoMediumPrice", "orderSummEspressoLarge", "lblOrderSummEspressoLargeQty", "lblOrderSummEspressoLargeRV", "lblOrderSummEspressoLargePrice");
        }

        protected void btnChocoAdd_Click(object sender, EventArgs e)
        {
            btnAddToReceipt("txtQtyChoco", "DDSizeChoco", "orderSummChocoSmall", "lblOrderSummChocoSmallQty", "lblOrderSummChocoSmallRV", "lblOrderSummChocoSmallPrice", "orderSummChocoMedium", "lblOrderSummChocoMediumQty", "lblOrderSummChocoMediumRV", "lblOrderSummChocoMediumPrice", "orderSummChocoLarge", "lblOrderSummChocoLargeQty", "lblOrderSummChocoLargeRV", "lblOrderSummChocoLargePrice");
        }

        protected void btnChocoRemove_Click(object sender, EventArgs e)
        {
            btnRemoveFromReceipt("txtQtyChoco", "DDSizeChoco", "orderSummChocoSmall", "lblOrderSummChocoSmallQty", "lblOrderSummChocoSmallRV", "lblOrderSummChocoSmallPrice", "orderSummChocoMedium", "lblOrderSummChocoMediumQty", "lblOrderSummChocoMediumRV", "lblOrderSummChocoMediumPrice", "orderSummChocoLarge", "lblOrderSummChocoLargeQty", "lblOrderSummChocoLargeRV", "lblOrderSummChocoLargePrice");
        }

        protected void btnWhiteAdd_Click(object sender, EventArgs e)
        {
            btnAddToReceipt("txtQtyWhite", "DDSizeWhite", "orderSummWhiteSmall", "lblOrderSummWhiteSmallQty", "lblOrderSummWhiteSmallRV", "lblOrderSummWhiteSmallPrice", "orderSummWhiteMedium", "lblOrderSummWhiteMediumQty", "lblOrderSummWhiteMediumRV", "lblOrderSummWhiteMediumPrice", "orderSummWhiteLarge", "lblOrderSummWhiteLargeQty", "lblOrderSummWhiteLargeRV", "lblOrderSummWhiteLargePrice");
        }

        protected void btnWhiteRemove_Click(object sender, EventArgs e)
        {
            btnRemoveFromReceipt("txtQtyWhite", "DDSizeWhite", "orderSummWhiteSmall", "lblOrderSummWhiteSmallQty", "lblOrderSummWhiteSmallRV", "lblOrderSummWhiteSmallPrice", "orderSummWhiteMedium", "lblOrderSummWhiteMediumQty", "lblOrderSummWhiteMediumRV", "lblOrderSummWhiteMediumPrice", "orderSummWhiteLarge", "lblOrderSummWhiteLargeQty", "lblOrderSummWhiteLargeRV", "lblOrderSummWhiteLargePrice");
        }

        protected void btnPastriesAdd_Click(object sender, EventArgs e)
        {
            btnAddToReceipt("txtQtyPastries", "DDSizePastries", "orderSummPastriesSix", "lblOrderSummPastriesSixQty", "lblOrderSummPastriesSixRV", "lblOrderSummPastriesSixPrice", "orderSummPastriesTwelve", "lblOrderSummPastriesTwelveQty", "lblOrderSummPastriesTwelveRV", "lblOrderSummPastriesTwelvePrice", "orderSummPastriesTwenty", "lblOrderSummPastriesTwentyQty", "lblOrderSummPastriesTwentyRV", "lblOrderSummPastriesTwentyPrice");

        }

        protected void btnPastriesRemove_Click(object sender, EventArgs e)
        {
            btnRemoveFromReceipt("txtQtyPastries", "DDSizePastries", "orderSummPastriesSix", "lblOrderSummPastriesSixQty", "lblOrderSummPastriesSixRV", "lblOrderSummPastriesSixPrice", "orderSummPastriesTwelve", "lblOrderSummPastriesTwelveQty", "lblOrderSummPastriesTwelveRV", "lblOrderSummPastriesTwelvePrice", "orderSummPastriesTwenty", "lblOrderSummPastriesTwentyQty", "lblOrderSummPastriesTwentyRV", "lblOrderSummPastriesTwentyPrice");

        }

        protected void ResetValidators()
        {
            lblOrderSummNaturalSmallRV.Visible = false;
            lblOrderSummNaturalMediumRV.Visible = false;
            lblOrderSummNaturalLargeRV.Visible = false;

            lblOrderSummStrawberrySmallRV.Visible = false;
            lblOrderSummStrawberryMediumRV.Visible = false;
            lblOrderSummStrawberryLargeRV.Visible = false;

            lblOrderSummLilacSmallRV.Visible = false;
            lblOrderSummLilacMediumRV.Visible = false;
            lblOrderSummLilacLargeRV.Visible = false;

            lblOrderSummEspressoSmallRV.Visible = false;
            lblOrderSummEspressoMediumRV.Visible = false;
            lblOrderSummEspressoLargeRV.Visible = false;

            lblOrderSummChocoSmallRV.Visible = false;
            lblOrderSummChocoMediumRV.Visible = false;
            lblOrderSummChocoLargeRV.Visible = false;

            lblOrderSummWhiteSmallRV.Visible = false;
            lblOrderSummWhiteMediumRV.Visible = false;
            lblOrderSummWhiteLargeRV.Visible = false;

            lblOrderSummPastriesSixRV.Visible = false;
            lblOrderSummPastriesTwelveRV.Visible = false;
            lblOrderSummPastriesTwentyRV.Visible = false;
        }

        protected double GetTotal()
        {
            double naturalSmallQty = Convert.ToDouble(lblOrderSummNaturalSmallQty.Text);
            double naturalMediumQty = Convert.ToDouble(lblOrderSummNaturalMediumQty.Text);
            double naturalLargeQty = Convert.ToDouble(lblOrderSummNaturalLargeQty.Text);

            double StrawberrySmallQty = Convert.ToDouble(lblOrderSummStrawberrySmallQty.Text);
            double StrawberryMediumQty = Convert.ToDouble(lblOrderSummStrawberryMediumQty.Text);
            double StrawberryLargeQty = Convert.ToDouble(lblOrderSummStrawberryLargeQty.Text);

            double LilacSmallQty = Convert.ToDouble(lblOrderSummLilacSmallQty.Text);
            double LilacMediumQty = Convert.ToDouble(lblOrderSummLilacMediumQty.Text);
            double LilacLargeQty = Convert.ToDouble(lblOrderSummLilacLargeQty.Text);

            double EspressoSmallQty = Convert.ToDouble(lblOrderSummEspressoSmallQty.Text);
            double EspressoMediumQty = Convert.ToDouble(lblOrderSummEspressoMediumQty.Text);
            double EspressoLargeQty = Convert.ToDouble(lblOrderSummEspressoLargeQty.Text);

            double ChocoSmallQty = Convert.ToDouble(lblOrderSummChocoSmallQty.Text);
            double ChocoMediumQty = Convert.ToDouble(lblOrderSummChocoMediumQty.Text);
            double ChocoLargeQty = Convert.ToDouble(lblOrderSummChocoLargeQty.Text);

            double WhiteSmallQty = Convert.ToDouble(lblOrderSummWhiteSmallQty.Text);
            double WhiteMediumQty = Convert.ToDouble(lblOrderSummWhiteMediumQty.Text);
            double WhiteLargeQty = Convert.ToDouble(lblOrderSummWhiteLargeQty.Text);

            double PastriesSixQty = Convert.ToDouble(lblOrderSummPastriesSixQty.Text);
            double PastriesTwelveQty = Convert.ToDouble(lblOrderSummPastriesTwelveQty.Text);
            double PastriesTwentyQty = Convert.ToDouble(lblOrderSummPastriesTwentyQty.Text);

            double naturalTotal = naturalSmallQty * Convert.ToDouble(nsPrice.Value) + naturalMediumQty * Convert.ToDouble(nmPrice.Value) + naturalLargeQty * Convert.ToDouble(nlPrice.Value);
            double StrawberryTotal = StrawberrySmallQty * Convert.ToDouble(ssPrice.Value) + StrawberryMediumQty * Convert.ToDouble(smPrice.Value) + StrawberryLargeQty * Convert.ToDouble(slPrice.Value);
            double LilacTotal = LilacSmallQty * Convert.ToDouble(lsPrice.Value) + LilacMediumQty * Convert.ToDouble(lmPrice.Value) + LilacLargeQty * Convert.ToDouble(llPrice.Value);
            double EspressoTotal = EspressoSmallQty * Convert.ToDouble(esPrice.Value) + EspressoMediumQty * Convert.ToDouble(emPrice.Value) + EspressoLargeQty * Convert.ToDouble(elPrice.Value);
            double ChocoTotal = ChocoSmallQty * Convert.ToDouble(csPrice.Value) + ChocoMediumQty * Convert.ToDouble(cmPrice.Value) + ChocoLargeQty * Convert.ToDouble(clPrice.Value);
            double WhiteTotal = WhiteSmallQty * Convert.ToDouble(wsPrice.Value) + WhiteMediumQty * Convert.ToDouble(wmPrice.Value) + WhiteLargeQty * Convert.ToDouble(wlPrice.Value);
            double PastriesTotal = PastriesSixQty * Convert.ToDouble(p6Price.Value) + PastriesTwelveQty * Convert.ToDouble(p12Price.Value) + PastriesTwentyQty * Convert.ToDouble(p20Price.Value);

            double grandTotal = naturalTotal + StrawberryTotal + LilacTotal + EspressoTotal + ChocoTotal + WhiteTotal + PastriesTotal;

            return grandTotal;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //
            //Values Reset
            //
            lblOrderSummNaturalSmallQty.Text = "0";
            lblOrderSummNaturalSmallPrice.Text = "0";
            lblOrderSummNaturalMediumQty.Text = "0";
            lblOrderSummNaturalMediumPrice.Text = "0";
            lblOrderSummNaturalLargeQty.Text = "0";
            lblOrderSummNaturalLargePrice.Text = "0";

            lblOrderSummStrawberrySmallQty.Text = "0";
            lblOrderSummStrawberrySmallPrice.Text = "0";
            lblOrderSummStrawberryMediumQty.Text = "0";
            lblOrderSummStrawberryMediumPrice.Text = "0";
            lblOrderSummStrawberryLargeQty.Text = "0";
            lblOrderSummStrawberryLargePrice.Text = "0";

            lblOrderSummLilacSmallQty.Text = "0";
            lblOrderSummLilacSmallPrice.Text = "0";
            lblOrderSummLilacMediumQty.Text = "0";
            lblOrderSummLilacMediumPrice.Text = "0";
            lblOrderSummLilacLargeQty.Text = "0";
            lblOrderSummLilacLargePrice.Text = "0";

            lblOrderSummEspressoSmallQty.Text = "0";
            lblOrderSummEspressoSmallPrice.Text = "0";
            lblOrderSummEspressoMediumQty.Text = "0";
            lblOrderSummEspressoMediumPrice.Text = "0";
            lblOrderSummEspressoLargeQty.Text = "0";
            lblOrderSummEspressoLargePrice.Text = "0";

            lblOrderSummChocoSmallQty.Text = "0";
            lblOrderSummChocoSmallPrice.Text = "0";
            lblOrderSummChocoMediumQty.Text = "0";
            lblOrderSummChocoMediumPrice.Text = "0";
            lblOrderSummChocoLargeQty.Text = "0";
            lblOrderSummChocoLargePrice.Text = "0";

            lblOrderSummWhiteSmallQty.Text = "0";
            lblOrderSummWhiteSmallPrice.Text = "0";
            lblOrderSummWhiteMediumQty.Text = "0";
            lblOrderSummWhiteMediumPrice.Text = "0";
            lblOrderSummWhiteLargeQty.Text = "0";
            lblOrderSummWhiteLargePrice.Text = "0";

            lblOrderSummPastriesSixQty.Text = "0";
            lblOrderSummPastriesSixPrice.Text = "0";
            lblOrderSummPastriesTwelveQty.Text = "0";
            lblOrderSummPastriesTwelvePrice.Text = "0";
            lblOrderSummPastriesTwentyQty.Text = "0";
            lblOrderSummPastriesTwentyPrice.Text = "0";

            //
            //Visibility Reset
            //

            orderSummNaturalSmall.Visible = false;
            orderSummNaturalMedium.Visible = false;
            orderSummNaturalLarge.Visible = false;

            orderSummStrawberrySmall.Visible = false;
            orderSummStrawberryMedium.Visible = false;
            orderSummStrawberryLarge.Visible = false;

            orderSummLilacSmall.Visible = false;
            orderSummLilacMedium.Visible = false;
            orderSummLilacLarge.Visible = false;

            orderSummEspressoSmall.Visible = false;
            orderSummEspressoMedium.Visible = false;
            orderSummEspressoLarge.Visible = false;

            orderSummChocoSmall.Visible = false;
            orderSummChocoMedium.Visible = false;
            orderSummChocoLarge.Visible = false;

            orderSummWhiteSmall.Visible = false;
            orderSummWhiteMedium.Visible = false;
            orderSummWhiteLarge.Visible = false;

            orderSummPastriesSix.Visible = false;
            orderSummPastriesTwelve.Visible = false;
            orderSummPastriesTwenty.Visible = false;

            orderBoxTitle.Visible = false;
            orderBox.Visible = false;
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (Session["user"] is null)
            {
                Response.Redirect("~/LoginMust.aspx");
            }
            else
            {
                string stringconn = "Provider=Microsoft.Jet.OLEDB.4.0;";
                stringconn += "Data Source= ";
                stringconn += Server.MapPath("~/App_Data/mmm.mdb;");

                OleDbConnection conn = new OleDbConnection(stringconn);
                OleDbCommand cmd = conn.CreateCommand();

                int orderLength = 20;
                byte[] orderID;
                new RNGCryptoServiceProvider().GetBytes(orderID = new byte[orderLength]);

                string strOrderID = Convert.ToBase64String(orderID);

                string selectstr = "select orderID from cust_order where orderID = '";
                selectstr += strOrderID + "';";

                conn.Open();
                cmd.Connection = conn;
                cmd.CommandText = selectstr;
                string findOrderID = Convert.ToString(cmd.ExecuteScalar());

                if (!String.IsNullOrEmpty(findOrderID))
                {
                    byte[] moreByte;
                    new RNGCryptoServiceProvider().GetBytes(moreByte = new byte[orderLength]);
                    strOrderID += Convert.ToBase64String(orderID);
                }

                Session["currentOrder"] = strOrderID;
                conn.Close();


                string insertstr = "Insert into cust_order values ('";
                //email
                insertstr += Session["email"].ToString() + "'";
                //orderID
                insertstr += ", " + "'" + Session["currentOrder"].ToString() + "'";
                //natural
                insertstr += ", " + lblOrderSummNaturalSmallQty.Text;
                insertstr += ", " + lblOrderSummNaturalMediumQty.Text;
                insertstr += ", " + lblOrderSummNaturalLargeQty.Text;
                //strawberry
                insertstr += ", " + lblOrderSummStrawberrySmallQty.Text;
                insertstr += ", " + lblOrderSummStrawberryMediumQty.Text;
                insertstr += ", " + lblOrderSummStrawberryLargeQty.Text;
                //lilac
                insertstr += ", " + lblOrderSummLilacSmallQty.Text;
                insertstr += ", " + lblOrderSummLilacMediumQty.Text;
                insertstr += ", " + lblOrderSummLilacLargeQty.Text;
                //espresso
                insertstr += ", " + lblOrderSummEspressoSmallQty.Text;
                insertstr += ", " + lblOrderSummEspressoMediumQty.Text;
                insertstr += ", " + lblOrderSummEspressoLargeQty.Text;
                //choco
                insertstr += ", " + lblOrderSummChocoSmallQty.Text;
                insertstr += ", " + lblOrderSummChocoMediumQty.Text;
                insertstr += ", " + lblOrderSummChocoLargeQty.Text;
                //white
                insertstr += ", " + lblOrderSummWhiteSmallQty.Text;
                insertstr += ", " + lblOrderSummWhiteMediumQty.Text;
                insertstr += ", " + lblOrderSummWhiteLargeQty.Text;
                //Pastries
                insertstr += ", " + lblOrderSummPastriesSixQty.Text;
                insertstr += ", " + lblOrderSummPastriesTwelveQty.Text;
                insertstr += ", " + lblOrderSummPastriesTwentyQty.Text;
                //ending
                insertstr += ");";

                conn.Open();
                cmd.CommandText = insertstr;
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                conn.Close();

                Session["total"] = GetTotal().ToString("0.00");
                Response.Redirect("~/Payment.aspx");
            }

        }
        protected void ChangeQty(string txtQty, string DDSize, string lblPrice, string lblRV)
        {
            //
            //Assigning Controls to variables
            //
            TextBox _textBoxQty = new TextBox();
            DropDownList _DDSize = new DropDownList();
            Label _lblPrice = new Label();
            Label _lblRV = new Label();

            _textBoxQty = UpdatePanel8.FindControl(txtQty) as TextBox;
            _DDSize = UpdatePanel8.FindControl(DDSize) as DropDownList;
            _lblPrice = UpdatePanel8.FindControl(lblPrice) as Label;
            _lblRV = UpdatePanel8.FindControl(lblRV) as Label;

            //
            //Operations
            //
            double naturalQty = 0;

            if (string.IsNullOrEmpty(_textBoxQty.Text))
            {
                naturalQty = 1;
                _textBoxQty.Text = naturalQty.ToString();
            }
            else
            {
                naturalQty = Convert.ToDouble(_textBoxQty.Text);
            }

            double naturalPrice = Convert.ToDouble(_DDSize.SelectedValue);

            if (naturalQty < 0 || naturalQty >= 21)
            {
                _lblRV.Text = "Max/Min limit breached!";
                _lblPrice.Text = "₱ 0.00";
                _DDSize.SelectedIndex = 1;
                _textBoxQty.Text = "";
            }
            else if (naturalQty >= 0 || naturalQty < 21)
            {
                _lblRV.Text = "";
                double subTotal = naturalQty * naturalPrice;
                _lblPrice.Text = subTotal.ToString("₱ 0.00");
            }
        }

        protected void btnAddToReceipt(string txtQty, string DDSize, string orderSummSmall, string orderSummSmallQty, string orderSummSmallRV, string orderSummSmallPrice, string orderSummMedium, string orderSummMediumQty, string orderSummMediumRV, string orderSummMediumPrice, string orderSummLarge, string orderSummLargeQty, string orderSummLargeRV, string orderSummLargePrice)
        {

            TextBox _txtQty = new TextBox();
            DropDownList _DDSize = new DropDownList();

            HtmlGenericControl _orderSummSmall = new HtmlGenericControl ();
            Label _orderSummSmallQty = new Label();
            Label _orderSummSmallRV = new Label();
            Label _orderSummSmallPrice = new Label();

            HtmlGenericControl _orderSummMedium = new HtmlGenericControl();
            Label _orderSummMediumQty = new Label();
            Label _orderSummMediumRV = new Label();
            Label _orderSummMediumPrice = new Label();

            HtmlGenericControl _orderSummLarge = new HtmlGenericControl();
            Label _orderSummLargeQty = new Label();
            Label _orderSummLargeRV = new Label();
            Label _orderSummLargePrice = new Label();

            _txtQty = UpdatePanel8.FindControl(txtQty) as TextBox;
            _DDSize = UpdatePanel8.FindControl(DDSize) as DropDownList;

            _orderSummSmall = UpdatePanel8.FindControl(orderSummSmall) as HtmlGenericControl;
            _orderSummSmallQty = UpdatePanel8.FindControl(orderSummSmallQty) as Label;
            _orderSummSmallRV = UpdatePanel8.FindControl(orderSummSmallRV) as Label;
            _orderSummSmallPrice = UpdatePanel8.FindControl(orderSummSmallPrice) as Label;

            _orderSummMedium = UpdatePanel8.FindControl(orderSummMedium) as HtmlGenericControl;
            _orderSummMediumQty = UpdatePanel8.FindControl(orderSummMediumQty) as Label;
            _orderSummMediumRV = UpdatePanel8.FindControl(orderSummMediumRV) as Label;
            _orderSummMediumPrice = UpdatePanel8.FindControl(orderSummMediumPrice) as Label;

            _orderSummLarge = UpdatePanel8.FindControl(orderSummLarge) as HtmlGenericControl;
            _orderSummLargeQty = UpdatePanel8.FindControl(orderSummLargeQty) as Label;
            _orderSummLargeRV = UpdatePanel8.FindControl(orderSummLargeRV) as Label;
            _orderSummLargePrice = UpdatePanel8.FindControl(orderSummLargePrice) as Label;

            ResetValidators();
            if (GetTotal() == 0)
            {
                orderBox.Visible = false;
                orderBoxTitle.Visible = false;
                lblGrandTotal.Visible = false;
                lblGrandTotal.Text = GetTotal().ToString("₱ 0.00");
            }

            else
            {
                orderBox.Visible = true;
                orderBoxTitle.Visible = true;
                lblGrandTotal.Text = GetTotal().ToString("₱ 0.00");
                lblGrandTotal.Visible = true;
            }

            double naturalQty = 0;

            if (string.IsNullOrEmpty(_txtQty.Text))
            {
                _txtQty.Text = "0";
                _orderSummSmallQty.Text = "0";
            }
            else
            {
                naturalQty = Convert.ToDouble(_txtQty.Text);
            }

            double currentOrderSmallQty = 0;
            double currentOrderMediumQty = 0;
            double currentOrderLargeQty = 0;

            double totalOrderSmallQty = 0;
            double totalOrderMediumQty = 0;
            double totalOrderLargeQty = 0;

            double totalOrderSmallPrice = 0;
            double totalOrderMediumPrice = 0;
            double totalOrderLargePrice = 0;

            switch (_DDSize.SelectedIndex)
            {
                case 0:
                    currentOrderSmallQty = Convert.ToDouble(_orderSummSmallQty.Text);

                    totalOrderSmallQty = currentOrderSmallQty + naturalQty;
                    totalOrderSmallPrice = totalOrderSmallQty * Convert.ToDouble(_DDSize.SelectedValue);

                    if ((totalOrderSmallQty < 0) || (totalOrderSmallQty > 20))
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummSmallRV.Visible = true;
                    }
                    else if (totalOrderSmallQty == 0)
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummSmallRV.Visible = false;
                        _orderSummSmall.Visible = false;
                        _orderSummSmallQty.Text = totalOrderSmallQty.ToString();
                        _orderSummSmallPrice.Text = totalOrderSmallPrice.ToString();
                    }
                    else
                    {
                        _orderSummSmallRV.Visible = false;
                        _orderSummSmall.Visible = true;
                        _orderSummSmallQty.Text = totalOrderSmallQty.ToString();
                        _orderSummSmallPrice.Text = totalOrderSmallPrice.ToString();
                    }
                    break;
                case 1:
                    currentOrderMediumQty = Convert.ToDouble(_orderSummMediumQty.Text);

                    totalOrderMediumQty = currentOrderMediumQty + naturalQty;
                    totalOrderMediumPrice = totalOrderMediumQty * Convert.ToDouble(_DDSize.SelectedValue);

                    if ((totalOrderMediumQty < 0) || (totalOrderMediumQty > 20))
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummMediumRV.Visible = true;
                    }
                    else if (totalOrderMediumQty == 0)
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummMediumRV.Visible = false;
                        _orderSummMedium.Visible = false;
                        _orderSummMediumQty.Text = totalOrderMediumQty.ToString();
                        _orderSummMediumPrice.Text = totalOrderMediumPrice.ToString();
                    }
                    else
                    {
                        _orderSummMediumRV.Visible = false;
                        _orderSummMedium.Visible = true;
                        _orderSummMediumQty.Text = totalOrderMediumQty.ToString();
                        _orderSummMediumPrice.Text = totalOrderMediumPrice.ToString();
                    }

                    break;
                case 2:
                    currentOrderLargeQty = Convert.ToDouble(_orderSummLargeQty.Text);

                    totalOrderLargeQty = currentOrderLargeQty + naturalQty;
                    totalOrderLargePrice = totalOrderLargeQty * Convert.ToDouble(_DDSize.SelectedValue);

                    if ((totalOrderLargeQty < 0) || (totalOrderLargeQty > 20))
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummLargeRV.Visible = true;
                    }
                    else if (totalOrderLargeQty == 0)
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummLargeRV.Visible = false;
                        _orderSummLarge.Visible = false;
                        _orderSummLargeQty.Text = totalOrderLargeQty.ToString();
                        _orderSummLargePrice.Text = totalOrderLargePrice.ToString();
                    }
                    else
                    {
                        _orderSummLargeRV.Visible = false;
                        _orderSummLarge.Visible = true;
                        _orderSummLargeQty.Text = totalOrderLargeQty.ToString();
                        _orderSummLargePrice.Text = totalOrderLargePrice.ToString();
                    }
                    break;

            }

            if (GetTotal() == 0)
            {
                orderBox.Visible = false;
                orderBoxTitle.Visible = false;
                lblGrandTotal.Visible = false;
                lblGrandTotal.Text = GetTotal().ToString("₱ 0.00");
            }

            else
            {
                orderBox.Visible = true;
                orderBoxTitle.Visible = true;
                lblGrandTotal.Text = GetTotal().ToString("₱ 0.00");
                lblGrandTotal.Visible = true;
            }
        }

        protected void btnRemoveFromReceipt(string txtQty, string DDSize, string orderSummSmall, string orderSummSmallQty, string orderSummSmallRV, string orderSummSmallPrice, string orderSummMedium, string orderSummMediumQty, string orderSummMediumRV, string orderSummMediumPrice, string orderSummLarge, string orderSummLargeQty, string orderSummLargeRV, string orderSummLargePrice)
        {

            TextBox _txtQty = new TextBox();
            DropDownList _DDSize = new DropDownList();

            HtmlGenericControl _orderSummSmall = new HtmlGenericControl();
            Label _orderSummSmallQty = new Label();
            Label _orderSummSmallRV = new Label();
            Label _orderSummSmallPrice = new Label();

            HtmlGenericControl _orderSummMedium = new HtmlGenericControl();
            Label _orderSummMediumQty = new Label();
            Label _orderSummMediumRV = new Label();
            Label _orderSummMediumPrice = new Label();

            HtmlGenericControl _orderSummLarge = new HtmlGenericControl();
            Label _orderSummLargeQty = new Label();
            Label _orderSummLargeRV = new Label();
            Label _orderSummLargePrice = new Label();

            _txtQty = UpdatePanel8.FindControl(txtQty) as TextBox;
            _DDSize = UpdatePanel8.FindControl(DDSize) as DropDownList;

            _orderSummSmall = UpdatePanel8.FindControl(orderSummSmall) as HtmlGenericControl;
            _orderSummSmallQty = UpdatePanel8.FindControl(orderSummSmallQty) as Label;
            _orderSummSmallRV = UpdatePanel8.FindControl(orderSummSmallRV) as Label;
            _orderSummSmallPrice = UpdatePanel8.FindControl(orderSummSmallPrice) as Label;

            _orderSummMedium = UpdatePanel8.FindControl(orderSummMedium) as HtmlGenericControl;
            _orderSummMediumQty = UpdatePanel8.FindControl(orderSummMediumQty) as Label;
            _orderSummMediumRV = UpdatePanel8.FindControl(orderSummMediumRV) as Label;
            _orderSummMediumPrice = UpdatePanel8.FindControl(orderSummMediumPrice) as Label;

            _orderSummLarge = UpdatePanel8.FindControl(orderSummLarge) as HtmlGenericControl;
            _orderSummLargeQty = UpdatePanel8.FindControl(orderSummLargeQty) as Label;
            _orderSummLargeRV = UpdatePanel8.FindControl(orderSummLargeRV) as Label;
            _orderSummLargePrice = UpdatePanel8.FindControl(orderSummLargePrice) as Label;

            ResetValidators();
            if (GetTotal() == 0)
            {
                orderBox.Visible = false;
                orderBoxTitle.Visible = false;
                lblGrandTotal.Visible = false;
                lblGrandTotal.Text = GetTotal().ToString("₱ 0.00");
            }

            else
            {
                orderBox.Visible = true;
                orderBoxTitle.Visible = true;
                lblGrandTotal.Text = GetTotal().ToString("₱ 0.00");
                lblGrandTotal.Visible = true;
            }

            double naturalQty = 0;

            if (string.IsNullOrEmpty(_txtQty.Text))
            {
                _txtQty.Text = "0";
                _orderSummSmallQty.Text = "0";
            }
            else
            {
                naturalQty = Convert.ToDouble(_txtQty.Text);
            }

            double currentOrderSmallQty = 0;
            double currentOrderMediumQty = 0;
            double currentOrderLargeQty = 0;

            double totalOrderSmallQty = 0;
            double totalOrderMediumQty = 0;
            double totalOrderLargeQty = 0;

            double totalOrderSmallPrice = 0;
            double totalOrderMediumPrice = 0;
            double totalOrderLargePrice = 0;

            switch (_DDSize.SelectedIndex)
            {
                case 0:
                    currentOrderSmallQty = Convert.ToDouble(_orderSummSmallQty.Text);

                    totalOrderSmallQty = currentOrderSmallQty - naturalQty;
                    totalOrderSmallPrice = totalOrderSmallQty * Convert.ToDouble(_DDSize.SelectedValue);

                    if ((totalOrderSmallQty < 0) || (totalOrderSmallQty > 20))
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummSmallRV.Visible = true;
                    }
                    else if (totalOrderSmallQty == 0)
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummSmallRV.Visible = false;
                        _orderSummSmall.Visible = false;
                        _orderSummSmallQty.Text = totalOrderSmallQty.ToString();
                        _orderSummSmallPrice.Text = totalOrderSmallPrice.ToString();
                    }
                    else
                    {
                        _orderSummSmallRV.Visible = false;
                        _orderSummSmall.Visible = true;
                        _orderSummSmallQty.Text = totalOrderSmallQty.ToString();
                        _orderSummSmallPrice.Text = totalOrderSmallPrice.ToString();
                    }
                    break;
                case 1:
                    currentOrderMediumQty = Convert.ToDouble(_orderSummMediumQty.Text);

                    totalOrderMediumQty = currentOrderMediumQty - naturalQty;
                    totalOrderMediumPrice = totalOrderMediumQty * Convert.ToDouble(_DDSize.SelectedValue);

                    if ((totalOrderMediumQty < 0) || (totalOrderMediumQty > 20))
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummMediumRV.Visible = true;
                    }
                    else if (totalOrderMediumQty == 0)
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummMediumRV.Visible = false;
                        _orderSummMedium.Visible = false;
                        _orderSummMediumQty.Text = totalOrderMediumQty.ToString();
                        _orderSummMediumPrice.Text = totalOrderMediumPrice.ToString();
                    }
                    else
                    {
                        _orderSummMediumRV.Visible = false;
                        _orderSummMedium.Visible = true;
                        _orderSummMediumQty.Text = totalOrderMediumQty.ToString();
                        _orderSummMediumPrice.Text = totalOrderMediumPrice.ToString();
                    }

                    break;
                case 2:
                    currentOrderLargeQty = Convert.ToDouble(_orderSummLargeQty.Text);

                    totalOrderLargeQty = currentOrderLargeQty - naturalQty;
                    totalOrderLargePrice = totalOrderLargeQty * Convert.ToDouble(_DDSize.SelectedValue);

                    if ((totalOrderLargeQty < 0) || (totalOrderLargeQty > 20))
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummLargeRV.Visible = true;
                    }
                    else if (totalOrderLargeQty == 0)
                    {
                        //txtQtyChoco.Text = totalOrderSmallQty.ToString();
                        _orderSummLargeRV.Visible = false;
                        _orderSummLarge.Visible = false;
                        _orderSummLargeQty.Text = totalOrderLargeQty.ToString();
                        _orderSummLargePrice.Text = totalOrderLargePrice.ToString();
                    }
                    else
                    {
                        _orderSummLargeRV.Visible = false;
                        _orderSummLarge.Visible = true;
                        _orderSummLargeQty.Text = totalOrderLargeQty.ToString();
                        _orderSummLargePrice.Text = totalOrderLargePrice.ToString();
                    }
                    break;

            }

            if (GetTotal() == 0)
            {
                orderBox.Visible = false;
                orderBoxTitle.Visible = false;
                lblGrandTotal.Visible = false;
                lblGrandTotal.Text = GetTotal().ToString("₱ 0.00");
            }

            else
            {
                orderBox.Visible = true;
                orderBoxTitle.Visible = true;
                lblGrandTotal.Text = GetTotal().ToString("₱ 0.00");
                lblGrandTotal.Visible = true;
            }
        }
    }
}