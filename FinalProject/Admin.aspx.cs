using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string password = TextBox2.Text;
            if(name == "admin")
            {
                if(password == "1234")
                {
                    Response.Redirect("~/Adminpage.aspx");
                }
            
            else
            {
                
                lbl4.Text = "Your Email_Id or Password is Invalid";
            }
            }
        }
    }
}