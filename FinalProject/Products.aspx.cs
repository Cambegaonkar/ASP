using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class Products : System.Web.UI.Page
    {
        int Product_Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Product_Id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            Response.Redirect("~/ProductView?Product_Id=" + Product_Id);
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyCart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Thanks.aspx");
        }
    }
}