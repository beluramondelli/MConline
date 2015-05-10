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
                HyperLink3.Visible = true;
            }
            else
            {
                lblbienvenido.Visible = false;
                HyperLink1.Visible = true;
                HyperLink2.Visible = true;
                HyperLink3.Visible = false;
            }
        }
    }

    protected void cerrarSesion(object sender, EventArgs e)
    {
        Session["usuario"] = null;
        Response.Redirect("~/Principal.aspx");
    }

    protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}
