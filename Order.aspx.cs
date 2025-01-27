using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActualMP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void actions(object sender, EventArgs e)
        {
            UpdateTotal();
        }
        private void UpdateTotal()
        {
            Page.Validate();
            if (Page.IsValid)
            {
                try
                {
                    int hbcSizeofDrink = int.Parse(hbcSize.SelectedValue);
                    int espSizeofDrink = int.Parse(espSize.SelectedValue);
                    int shcSizeofDrink = int.Parse(shcSize.SelectedValue);
                    int hbcQuantity = int.Parse(hbcQty.Text);
                    int espQuantity = int.Parse(espQty.Text);
                    int shcQuantity = int.Parse(shcQty.Text);
                    int hbcTotal = hbcQuantity * hbcSizeofDrink;
                    int espTotal = espQuantity * espSizeofDrink;
                    int shcTotal = shcQuantity * shcSizeofDrink;
                    hbcPrice.Text = hbcTotal.ToString();
                    espPrice.Text = espTotal.ToString();
                    shcPrice.Text = shcTotal.ToString();
                    int icedAmericanoSizeofDrink = int.Parse(icedAmericanoSize.SelectedValue);
                    int icedMatchaSizeofDrink = int.Parse(icedMatchaSize.SelectedValue);
                    int icedChocoSizeofDrink = int.Parse(icedChocoSize.SelectedValue);
                    int icedAmericanoQuantity = int.Parse(icedAmericanoQty.Text);
                    int icedMatchaQuantity = int.Parse(icedMatchaQty.Text);
                    int icedChocoQuantity = int.Parse(icedChocoQty.Text);
                    int icedAmericanoTotal = icedAmericanoQuantity * icedAmericanoSizeofDrink;
                    int icedMatchaTotal = icedMatchaQuantity * icedMatchaSizeofDrink;
                    int icedChocoTotal = icedChocoQuantity * icedChocoSizeofDrink;
                    hbcPrice.Text = hbcTotal.ToString();
                    espPrice.Text = espTotal.ToString();
                    shcPrice.Text = shcTotal.ToString();
                    icedMatchaPrice.Text = icedMatchaTotal.ToString();
                    icedAmericanoPrice.Text = icedAmericanoTotal.ToString();
                    fbcPrice.Text = icedChocoTotal.ToString();

                    int fbcQuantity = int.Parse(fbcQty.Text);
                    int spamQuantity = int.Parse(spamQty.Text);
                    int blcQuantity = int.Parse(blcQty.Text);
                    int fbcTotal = fbcQuantity * 145;
                    int spamTotal = spamQuantity * 170;
                    int blcTotal = blcQuantity * 315;
                    fbcPrice.Text = fbcTotal.ToString();
                    spamPrice.Text = spamTotal.ToString();
                    blcPrice.Text = blcTotal.ToString();

                    int grandTotal = hbcTotal + espTotal + shcTotal + icedAmericanoTotal + icedMatchaTotal + icedChocoTotal + fbcTotal + spamTotal + blcTotal;
                    orderTotal.Text = grandTotal.ToString();
                }
                catch
                {

                }
                
               

            }


        }
        protected void buttonclear(object sender, EventArgs e)
        {
            hbcQty.Text = "0";
            espQty.Text = "0";
            shcQty.Text = "0";
            icedAmericanoQty.Text = "0";
            icedMatchaQty.Text = "0";
            icedChocoQty.Text = "0";

            hbcPrice.Text = "0";
            espPrice.Text = "0";
            shcPrice.Text = "0";
            icedMatchaPrice.Text = "0";
            icedAmericanoPrice.Text = "0";
            fbcPrice.Text = "0";

            fbcQty.Text = "0";
            spamQty.Text = "0";
            blcQty.Text = "0";

            fbcPrice.Text = "0";
            spamPrice.Text = "0";
            blcPrice.Text = "0";

            hbcSize.SelectedIndex = 0;
            espSize.SelectedIndex = 0;
            shcSize.SelectedIndex = 0;
            icedAmericanoSize.SelectedIndex = 0;
            icedMatchaSize.SelectedIndex = 0;
            icedChocoSize.SelectedIndex = 0;

            orderTotal.Text = "0";
        }
        protected void addtoDatabase()
        {
            int hbcSizeofDrink = int.Parse(hbcSize.SelectedValue);
            int espSizeofDrink = int.Parse(espSize.SelectedValue);
            int shcSizeofDrink = int.Parse(shcSize.SelectedValue);
            int hbcQuantity = int.Parse(hbcQty.Text);
            int espQuantity = int.Parse(espQty.Text);
            int shcQuantity = int.Parse(shcQty.Text);


            int icedAmericanoSizeofDrink = int.Parse(icedAmericanoSize.SelectedValue);
            int icedMatchaSizeofDrink = int.Parse(icedMatchaSize.SelectedValue);
            int icedChocoSizeofDrink = int.Parse(icedChocoSize.SelectedValue);
            int icedAmericanoQuantity = int.Parse(icedAmericanoQty.Text);
            int icedMatchaQuantity = int.Parse(icedMatchaQty.Text);
            int icedChocoQuantity = int.Parse(icedChocoQty.Text);


            int fbcQuantity = int.Parse(fbcQty.Text);
            int spamQuantity = int.Parse(spamQty.Text);
            int blcQuantity = int.Parse(blcQty.Text);


            //string insertQuery = "INSERT INTO Orders(No_HBC) values ('444');";
            //insertQuery += 
            //"(@Ord_hbc, @Ord_esp, @Ordshc, @OrdicedA, @OrdicedM, @OrdicedC, @Ordfbc, @Ordspam, @Ordblc, @Size_hbc, @Size_esp, @Sizeshc, @SizeicedA, @SizeicedM, @SizeicedC) ";

            string insertQuery = "INSERT INTO Orders values ('" + hbcPrice.Text + "'";
            insertQuery += ", " + "'" + espPrice.Text + "'";
            insertQuery += ", " + "'" + shcPrice.Text + "'";
            insertQuery += ", " + "'" + icedAmericanoPrice.Text + "'";
            insertQuery += ", " + "'" + icedMatchaPrice.Text + "'";
            insertQuery += ", " + "'" + icedChocoPrice.Text + "'";
            insertQuery += ", " + "'" + fbcPrice.Text + "'";
            insertQuery += ", " + "'" + spamPrice.Text + "'";
            insertQuery += ", " + "'" + blcPrice.Text + "'";
            insertQuery += ", " + "'" + hbcSize.SelectedValue + "'";
            insertQuery += ", " + "'" + espSize.SelectedValue + "'";
            insertQuery += ", " + "'" + shcSize.SelectedValue + "'";
            insertQuery += ", " + "'" + icedAmericanoSize.SelectedValue + "'";
            insertQuery += ", " + "'" + icedMatchaSize.SelectedValue + "'";
            insertQuery += ", " + "'" + icedChocoSize.SelectedValue + "');";

            string connection = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=";
            connection += Server.MapPath("~/App_Data/coffeelotte.mdb;");

            OleDbConnection conn = new OleDbConnection(connection);
            conn.Open();

            OleDbCommand command = new OleDbCommand(insertQuery, conn);
            command.CommandText = insertQuery;
            command.Connection = conn;
            command.ExecuteNonQuery();
            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addtoDatabase();
        }
    }

}
