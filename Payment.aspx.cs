using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActualMP
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            lblTotal.Text = Session["total"].ToString();
        }

        protected void Reset()
        {
            DDPaymentMethod.SelectedIndex = 0;

            custName.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtAdd.Text = string.Empty;
            txtZipCode.Text = string.Empty;
            txtCred.Text = string.Empty;
            txtCVV.Text = string.Empty;

        }

        protected void brnPayNow_Click(object sender, EventArgs e)
        {
            string stringconn = "Provider=Microsoft.Jet.OLEDB.4.0;";
            stringconn += "Data Source= ";
            stringconn += Server.MapPath("~/App_Data/mmm.mdb;");

            OleDbConnection conn = new OleDbConnection(stringconn);
            OleDbCommand cmd = conn.CreateCommand();

            string insertstr = "insert into payment values ('";
            insertstr += Session["currentOrder"] + "'";
            insertstr += ", " + "'" + custName.Text + "'";
            insertstr += ", " + "'" + txtPhone.Text + "'";
            insertstr += ", " + "'" + txtCity.Text + "'";
            insertstr += ", " + "'" + txtAdd.Text + "'";
            insertstr += ", " + "'" + txtZipCode.Text + "'";
            insertstr += ", " + "'" + txtCred.Text + "'";
            insertstr += ", " + "'" + txtCVV.Text + "'";
            insertstr += ", " + "'" + lblTotal.Text + "'";
            insertstr += ");";

            conn.Open();
            cmd.CommandText = insertstr;
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("~/Receipt.aspx");

        }

        protected void DDPaymentMethod_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (DDPaymentMethod.SelectedIndex == 0)
            {
                delivery.Visible = false;
                txtAdd.Visible = false;
                zip.Visible = false;
                txtZipCode.Visible = false;
                city.Visible = false;
                txtCity.Visible = false;

            }

            else
            {
                delivery.Visible = true;
                txtAdd.Visible = true;
                zip.Visible = true;
                txtZipCode.Visible = true;
                city.Visible = true;
                txtCity.Visible = true;
                txtZipCode.Visible = true;
            }
        }
    }
}