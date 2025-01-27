using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ActualMP
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {

                string strconn = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=";
                strconn += Server.MapPath("~/App_Data/coffeelotte.mdb;");
                OleDbConnection conn = new OleDbConnection(strconn);

                conn.Open();
                string insertstr = "insert into contactUs values('" + contactEmail.Text + "','";
                insertstr += contactName.Text + "','" + comments.Text + "');";
                OleDbCommand insertcmd1 = new OleDbCommand(insertstr, conn);
                insertcmd1.ExecuteNonQuery();

                conn.Close();
                contactEmail.Text = String.Empty;
                contactName.Text = String.Empty;
                comments.Text = String.Empty;
                Response.Redirect("~/contact-success.aspx");
                //Response.Write("<script>alert('Submitted! Thank you!');</script>");
            }
            else
            {
                Response.Write("<script>alert('Some inputs can't be empty...');</script>");
            }
        }

        protected void comments_TextChanged(object sender, EventArgs e)
        {
            comments.Text = string.Empty;
        }
    }
}