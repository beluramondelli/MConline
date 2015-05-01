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
using System.Windows.Forms;



public partial class pedido2 : System.Web.UI.Page
{
    public static DataTable dt;
    public static List<ProductoXpedido> listProdXped;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dt=new DataTable();
            dt.Columns.Add("Nombre");
            dt.Columns.Add("Cantidad");
            dt.Columns.Add("Descripción");
            dt.Columns.Add("Precio");
            listProdXped = new List<ProductoXpedido>();

            CargarGrilla();
            txtCantidad.Enabled = false;
            txtDescripcion.Enabled = false;
            btnAgregarCarrito.Enabled = false;
            btnConfirmar.Enabled = false;
            txtTotal.Enabled = false;
            lblCant.Visible = false;
         }
    }

    private void CargarGrilla()
    {
        try
        {
            gvProductos.DataSource = ProductoDAO.ObtenerTodo();
            gvProductos.DataKeyNames = new string[] { "id_producto" };
            gvProductos.DataBind();

            //gvProductos.Columns[2].Visible = false;
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


        if (int.Parse(txtCantidad.Text) > 0 && int.Parse(txtCantidad.Text) < 101)
        {
            ProductoXpedido pxp = new ProductoXpedido();
            pxp.descripcion = txtDescripcion.Text;
            pxp.cantidad = int.Parse(txtCantidad.Text);

            lblCant.Visible = false;
            int id_producto = (int.Parse(gvProductos.SelectedDataKey.Value.ToString()));
            string nom = ProductoDAO.ObtenerProductoPorId(id_producto);
            int precio = ProductoDAO.obtenerPrecioProducto(id_producto);
            int cantidad = (int.Parse(txtCantidad.Text.ToString()));
            int subtotal = (precio * cantidad);

            pxp.precio = subtotal;
            pxp.id_producto = id_producto;
            pxp.id_tamaño = 3;

            listProdXped.Add(pxp);

            dt.Rows.Add(nom, pxp.cantidad, pxp.descripcion, subtotal);
            cargarGrilla(dgvCarrito, dt);
            CalcularTotal();
            btnConfirmar.Enabled = true;
            txtCantidad.Text = "";
            txtCantidad.Enabled = false;
            txtDescripcion.Text = "";
            txtDescripcion.Enabled = false;
            btnAgregarCarrito.Enabled = false;
        }
        else
            lblCant.Visible=true;
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
    protected void btnConfirmar_Click(object sender, EventArgs e)
    {
        Pedido ped = new Pedido();

        ped.fecha=DateTime.Now;
        ped.montoTotal = int.Parse(txtTotal.Text);
        ped.id_pedido = 0;
        ped.horaPedido = DateTime.Now;
        ped.horaEntrega = DateTime.Now;

        McDAO.PedidoDAO.insertarPedido(ped, listProdXped);
        Response.Redirect("~/PedidoRealizado.aspx");

    }

    public void CalcularTotal()
    {
        int total = 0;
        for (int i = 0; i < dgvCarrito.Rows.Count; i++)
        {
            total = total + int.Parse(dgvCarrito.Rows[i].Cells[4].Text);
        }
        txtTotal.Text = total.ToString();
    }
}