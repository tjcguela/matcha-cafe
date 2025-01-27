using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActualMP
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["user"] != null)
            {
                lblCurrentUser.Visible = true;
                lblCurrentUser.Text = Session["user"].ToString();
                HPLogin.Visible = false;
                btnLogOut.Visible = true;
            }
            else
            {
                lblCurrentUser.Visible = false;
                HPLogin.Visible = true;
                btnLogOut.Visible = false;
                lblCurrentUser.Visible = false;
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            btnLogOut.Visible = false;
            HPLogin.Visible = true;
            lblCurrentUser.Visible = false;
            Response.Redirect("~/Logout-success.aspx");
        }
    }
}