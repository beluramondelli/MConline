using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using McDAO;
using Entidades;


public partial class pedido2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            CargarGrilla();
    }

    private void CargarGrilla()
    {
        try
        {

            gvProductos.DataSource = ProductoDAO.ObtenerTodo();
            gvProductos.DataKeyNames = new string[] { "id_producto", "nombre" };
            gvProductos.DataBind();
            gvProductos.HeaderRow.Cells[0].Text = " ID ";
            gvProductos.HeaderRow.Cells[1].Text = " Nombre";

        }
        catch
        {

        }
    }
}