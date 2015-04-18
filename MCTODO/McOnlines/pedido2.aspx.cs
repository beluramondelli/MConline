using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using McDAO;
using Entidades;
using System.Data;
using System.Data.SqlClient;


public partial class pedido2 : System.Web.UI.Page
{
    private static DataTable dataTable;
    int nroItem = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CargarGrilla();
            txtCantidad.Enabled = false;
            txtDescripcion.Enabled = false;
            btnAgregarCarrito.Enabled = false;
        }
    }

    private void CargarGrilla()
    {
        try
        {
            dgvProductos.DataSource = ProductoDAO.ObtenerTodo();
            dgvProductos.DataKeyNames = new string[] { "id_producto", "nombre" };
            dgvProductos.DataBind();
            dgvProductos.HeaderRow.Cells[0].Text = " ID ";
            dgvProductos.HeaderRow.Cells[1].Text = " Nombre";
        }
        catch
        {

        }
    }
    protected void gvProductos_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtCantidad.Text = "1";
        txtDescripcion.Text = "";
        txtCantidad.Enabled = true;
        txtDescripcion.Enabled = true;
        btnAgregarCarrito.Enabled = true;
    }

    protected void btnAgregarCarrito_Click(object sender, EventArgs e)
    {

        Producto prod = ProductoDAO.ObtenerProductoPorId(int.Parse(dgvProductos.SelectedDataKey.Value.ToString()));
        ProductoXpedido pxp= new ProductoXpedido();
        pxp.cantidad = int.Parse(txtCantidad.Text);
        pxp.descripcion = txtDescripcion.Text;

        //prod.
        //nroItem = nroItem +1;
        
    }

    private void cargarGrilla(GridView gv, DataTable dt)
    {
        gv.DataSource = dt;
        gv.DataBind();
    }
}