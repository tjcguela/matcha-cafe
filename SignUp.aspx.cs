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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    string strconn = "Provider=Microsoft.Jet.OLEDB.4.0;";
            //    strconn += "Data Source = ";
            //    strconn += Server.MapPath("~/App_Data/mmm.mdb");

            //    //
            //    //Hashing and Salting
            //    //
            //    int hashPasswordLength = 20;
            //    int SaltLength = 16;
            //    int hashBytesLength = 36;
            //    int totalIterations = 10000;

            //    //Salt
            //    byte[] salt;
            //    new RNGCryptoServiceProvider().GetBytes(salt = new byte[SaltLength]);

            //    //PBKDF2: Password-Based Key Derivation Function 2
            //    //A password algorithm thing
            //    //Hashing both password and salt
            //    var pbkdf2 = new Rfc2898DeriveBytes(txtPassword.Text, salt, totalIterations);

            //    //place string in byte array
            //    byte[] hash = pbkdf2.GetBytes(hashPasswordLength);

            //    //array for storing hashed password + salt
            //    byte[] hashBytes = new byte[hashBytesLength];

            //    //placing arrays into respective places
            //    Array.Copy(salt, 0, hashBytes, 0, 16);
            //    Array.Copy(hash, 0, hashBytes, 16, 20);

            //    //Convert byte array to string
            //    string hashSaltStr = Convert.ToBase64String(hashBytes);

            //    //
            //    //Inserting Into DB
            //    //
            //    string insertstr = "insert into user_info values ('";
            //    insertstr += txtEmail.Text + "'";
            //    insertstr += ", " + "'" + txtLName.Text + "'";
            //    insertstr += ", " + "'" + txtGName.Text + "'";
            //    insertstr += ", " + "'" + hashSaltStr + "');";

            //    OleDbConnection conn = new OleDbConnection(strconn);

            //    conn.Open();
            //    OleDbCommand cmd = conn.CreateCommand();
            //    cmd.CommandText = insertstr;
            //    cmd.Connection = conn;
            //    cmd.ExecuteNonQuery();
            //    conn.Close();

            //}
            //catch
            //{
            //    Response.Redirect("~/Home.aspx");
            //}

            if (!termsCondi.Checked)
            {
                txtEmail.Text = string.Empty;
                txtPassword.Text = string.Empty;
                txtGName.Text = string.Empty;
                txtLName.Text = string.Empty;

                termsValidator.Visible = true;
                RFVEmail.Visible = true;
                RFVGName.Visible = true;
                RFVLName.Visible = true;
                RFVPass.Visible = true;
            }
            else
            {
                termsValidator.Visible = false;

                string strconn = "Provider=Microsoft.Jet.OLEDB.4.0;";
                strconn += "Data Source = ";
                strconn += Server.MapPath("~/App_Data/mmm.mdb");

                //
                //Hashing and Salting
                //
                int hashPasswordLength = 20;
                int SaltLength = 16;
                int hashBytesLength = 36;
                int totalIterations = 10000;

                //Salt
                byte[] salt;
                new RNGCryptoServiceProvider().GetBytes(salt = new byte[SaltLength]);

                //PBKDF2: Password-Based Key Derivation Function 2
                //A password algorithm thing
                //Hashing both password and salt
                var pbkdf2 = new Rfc2898DeriveBytes(txtPassword.Text, salt, totalIterations);

                //place string in byte array
                byte[] hash = pbkdf2.GetBytes(hashPasswordLength);

                //array for storing hashed password + salt
                byte[] hashBytes = new byte[hashBytesLength];

                //placing arrays into respective places
                Array.Copy(salt, 0, hashBytes, 0, 16);
                Array.Copy(hash, 0, hashBytes, 16, 20);

                //Convert byte array to string
                string hashSaltStr = Convert.ToBase64String(hashBytes);

                //
                //Inserting Into DB
                //
                string insertstr = "insert into user_info values ('";
                insertstr += txtEmail.Text + "'";
                insertstr += ", " + "'" + txtLName.Text + "'";
                insertstr += ", " + "'" + txtGName.Text + "'";
                insertstr += ", " + "'" + hashSaltStr + "');";

                OleDbConnection conn = new OleDbConnection(strconn);

                conn.Open();
                OleDbCommand cmd = conn.CreateCommand();
                cmd.CommandText = insertstr;
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                conn.Close();
                Session["user"] = txtGName.Text.ToString();
                Session["email"] = txtEmail.Text.ToString();
                Response.Redirect("~/signup-success.aspx");
            }
        }
    }
}