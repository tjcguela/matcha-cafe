using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActualMP
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string strconn = "Provider=Microsoft.Jet.OLEDB.4.0;";
            strconn += "Data Source = ";
            strconn += Server.MapPath("~/App_Data/mmm.mdb");

            OleDbConnection conn = new OleDbConnection(strconn);

            string selectstr = "select hashSalt from user_info where email = '";
            selectstr += txtEmail.Text + "'";

            conn.Open();
            OleDbCommand cmd = conn.CreateCommand();
            cmd.CommandText = selectstr;
            cmd.Connection = conn;
            string hashSaltDB = (string)cmd.ExecuteScalar();
            conn.Close();

            bool flag = true;
            if (hashSaltDB != null)
            {
                //
                //Verifying password
                //
                int hashPasswordLength = 20;
                int SaltLength = 16;
                int totalIterations = 10000;

                //Convert hashSalt back to bytes
                byte[] hashbytes = Convert.FromBase64String(hashSaltDB);

                //Get the salt from saved hashSalt
                byte[] salt = new byte[SaltLength];
                Array.Copy(hashbytes, 0, salt, 0, SaltLength);

                //Apply the same PBKDF2 function with new inputted password
                var pbkdf2 = new Rfc2898DeriveBytes(txtPassword.Text, salt, totalIterations);

                //convert hash to bytes
                byte[] hash = pbkdf2.GetBytes(hashPasswordLength);

                //Compare Attained Hashes
                for (int i = 0; i < hashPasswordLength; i++)
                {
                    if (hashbytes[i + 16] != hash[i])
                    {
                        flag = false;
                    }
                }
            }
            else
            {
                flag = false;
            }
            if (flag)
            {
                Session["email"] = txtEmail.Text;
                
                //Getting Given Name from DB
                selectstr = "select cust_GName from user_info where email = '";
                selectstr += txtEmail.Text + "'";

                conn.Open();
                cmd.CommandText = selectstr;
                cmd.Connection = conn;
                //Assigning Name to WebSite
                Session["user"] = cmd.ExecuteScalar().ToString();
                conn.Close();

                Response.Redirect("~/login-success.aspx");
                //Response.Redirect("~/menu.aspx");
            }
            else
            {
                Response.Redirect("~/login-success.aspx");
            }
        }
    }
}