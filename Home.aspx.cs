using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ActualMP
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }


        //Button Events
        protected void btnOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/menu.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp.aspx");
        }

        protected void btnLearnMore_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LearnMore.aspx");
        }
    }
}