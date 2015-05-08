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
    public static List<ProductoXpedido> listProdXped;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"] == null)
        {
            lblsession.Text = "Para poder realizar un pedido debe iniciar sesion. ";
            hlIniSesion.NavigateUrl = "~/Login.aspx";
            hlRegistrarse.NavigateUrl = "~/NuevoUsuario.aspx";
            Label1.Visible = false;
            txtTotal.Visible = false;
            btnConfirmar.Visible = false;
        }

        else
        {
            lblsession.Text = "Bienvenido " + Session["usuario"].ToString();
            hlIniSesion.Visible = false;
            hlRegistrarse.Visible = false;

            if (!IsPostBack)
            {
                dt = new DataTable();
                dt.Columns.Add("Nombre");
                dt.Columns.Add("Cantidad");
                dt.Columns.Add("Descripción");
                dt.Columns.Add("Precio");
                listProdXped = new List<ProductoXpedido>();

                CargarGrilla();
                //btnConfirmar.Enabled = false;
            }
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


    protected void btnAgregarCarrito_Click(object sender, EventArgs e)
    {


    }


    private void cargarGrilla(GridView gv, DataTable dt)
    {
        gv.DataSource = dt;
        gv.DataBind();
    }


    protected void gvProductos_PageIndexChanged(object sender, EventArgs e)
    { }

    protected void gvProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvProductos.PageIndex = e.NewPageIndex;
        CargarGrilla();
    }
    protected void btnConfirmar_Click(object sender, EventArgs e)
    {
        bool validar = validarCantidad();
        if (validar == true)
        {
            foreach (GridViewRow dgi in gvProductos.Rows)
            {
                CheckBox myCheckBox = dgi.Cells[0].Controls[1] as CheckBox;
                if (myCheckBox.Checked == true)
                {
                    TextBox txtCantidad = dgi.Cells[1].Controls[1] as TextBox;
                    int id_producto = (int.Parse(gvProductos.DataKeys[dgi.RowIndex].Value.ToString()));

                    ProductoXpedido pxp = new ProductoXpedido();
                    pxp.cantidad = int.Parse(txtCantidad.Text);

                    string nom = ProductoDAO.ObtenerProductoPorId(id_producto);
                    int precio = ProductoDAO.obtenerPrecioProducto(id_producto);
                    int cantidad = (int.Parse(txtCantidad.Text.ToString()));
                    int subtotal = (precio * cantidad);

                    pxp.precio = subtotal;
                    pxp.id_producto = id_producto;
                    pxp.id_tamaño = 3;

                    listProdXped.Add(pxp);

                    dt.Rows.Add(nom, pxp.cantidad, pxp.descripcion, subtotal);


                    CalcularTotal();
                    lblCant.Visible = false;
                }
            }
            Session["dataTable"] = dt;
            Session["lista"] = listProdXped;
            Session["total"] = txtTotal.Text;
            Response.Redirect("~/confirmarPedido.aspx");
        }
        else
        {
            lblCant.Text = "La cantidad ingresada debe ser un valor entre 1 y 100";
            lblCant.Visible = true;
        }
    }

    public void CalcularTotal()
    {
        int total = 0;
        foreach (var item in listProdXped)
        {
            total += item.precio;
        }
        txtTotal.Text = total.ToString();
    }

    //public bool validarDescripcion()
    //{
    //    txtDescripcion.MaxLength = 100;
    //    if (txtDescripcion.Text.Length < txtDescripcion.MaxLength)
    //        return true;
    //    else
    //        return false;
    //}


    protected void chek1_CheckedChanged(object sender, EventArgs e)
    { }

    protected void gvProductos_SelectedIndexChanged(object sender, EventArgs e)
    {
        btnConfirmar.Enabled = true;
    }

    protected bool validarCantidad()
    {
        bool ban = false;

        foreach (GridViewRow dgi in gvProductos.Rows)
        {
            CheckBox myCheckBox = dgi.Cells[0].Controls[1] as CheckBox;
            if (myCheckBox.Checked == true)
            {
                TextBox txtCantidad = dgi.Cells[1].Controls[1] as TextBox;
                if (!string.IsNullOrWhiteSpace(txtCantidad.Text))
                {
                    if (int.Parse(txtCantidad.Text) > 0 && int.Parse(txtCantidad.Text) < 101)
                    {
                        ban = true;
                    }
                    else
                    {
                        ban = false;
                        return ban;
                    }
                }
                else
                {
                    ban = false;
                    return ban;
                }
            }
        }
        return ban;
    }
}
