using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["usuario"] != null)
            {
                lblbienvenido.Text = "Bienvenido " + Session["usuario"].ToString();
                HyperLink1.Visible = false;
                HyperLink2.Visible = false;
                LinkButton1.Visible = true;
            }
            else
            {
                lblbienvenido.Visible = false;
                HyperLink1.Visible = true;
                HyperLink2.Visible = true;
                LinkButton1.Visible = false;
            }
        }
    }

    protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["usuario"] = null;
        lblbienvenido.Visible = false;
        HyperLink1.Visible = true;
        HyperLink2.Visible = true;
        LinkButton1.Visible = false;
        Response.Redirect("~/Principal.aspx");
    }
}
