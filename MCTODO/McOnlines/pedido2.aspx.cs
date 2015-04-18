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
    public static DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dt=new DataTable();
            dt.Columns.Add("Nombre");
            dt.Columns.Add("Cantidad");

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
            gvProductos.DataSource = ProductoDAO.ObtenerTodo();
            gvProductos.DataKeyNames = new string[] { "id_producto" };
            gvProductos.DataBind();
            gvProductos.Columns[1].Visible = false;
            //gvProductos.HeaderRow.Cells[1].Text = " Código de producto";
            gvProductos.HeaderRow.Cells[2].Text = " Producto";
            gvProductos.HeaderRow.Cells[3].Text = " Descripcion";
            gvProductos.HeaderRow.Cells[4].Text = " Precio";
          
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

        //Producto prod = ProductoDAO.ObtenerProductoPorId(int.Parse(gvProductos.SelectedDataKey.Value.ToString()));
        ProductoXpedido pxp = new ProductoXpedido();
        pxp.cantidad = int.Parse(txtCantidad.Text);
        pxp.descripcion = txtDescripcion.Text;

        int id_producto = (int.Parse(gvProductos.SelectedDataKey.Value.ToString()));

        string nom = ProductoDAO.ObtenerProductoPorId(id_producto);

        dt.Rows.Add(nom, pxp.cantidad);

        dgvCarrito.DataSource = dt;
        dgvCarrito.DataBind();
    }

    private void cargarGrilla(GridView gv, DataTable dt)
    {
        gv.DataSource = dt;
        gv.DataBind();
    }

  
    protected void gvProductos_PageIndexChanged(object sender, EventArgs e)
    {


    }
    protected void gvProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvProductos.PageIndex = e.NewPageIndex;
        CargarGrilla();
    }
}