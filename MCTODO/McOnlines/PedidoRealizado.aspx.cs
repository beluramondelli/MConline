using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PedidoRealizado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnVolver_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pedido2.aspx");
    }
}