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
using System.Drawing;
using System.Web.UI.Design;


public partial class pedido2 : System.Web.UI.Page
{
    public static DataTable dt;
    public static List<ProductoXpedido> listProdXped;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["usuario"] == null)
            {
                lblsession.Text = "Para poder realizar un pedido debe iniciar sesión. ";
                hlIniSesion.NavigateUrl = "~/Login.aspx";
                hlRegistrarse.NavigateUrl = "~/NuevoUsuario.aspx";
                Label1.Visible = false;
                txtTotal.Visible = false;
                btnConfirmar.Visible = false;
                chSand.Visible = false;
                chBebida.Visible = false;
                chCafeteria.Visible = false;
                chGuarn.Visible = false;
                chPostre.Visible = false;
                chCombo.Visible = false;
                btnFiltrar.Visible = false;
            }

            else
            {
                lblsession.Visible = false;
                hlIniSesion.Visible = false;
                hlRegistrarse.Visible = false;


                Session["ProdInfo"] = null;
                dt = new DataTable();
                dt.Columns.Add("Producto");
                dt.Columns.Add("Cantidad");
                dt.Columns.Add("Subtotal");
                listProdXped = new List<ProductoXpedido>();

                DropDownList ddlPageSize = (DropDownList)Pager1.FindControl("ddlPageSize");
                Pager1.CurrentPageSize = Convert.ToInt32(ddlPageSize.SelectedItem.Value);
                gvProductos.PageIndex = 1;
                CargarGrilla();



            }
        }
    }
   
    


    private void CargarGrilla()
    {
        try
        {
            //gvProductos.DataSource = ProductoDAO.ObtenerTodo();
            int totalPages = ProductoDAO.paginas(gvProductos.PageIndex, gvProductos.PageSize);
            gvProductos.DataSource = ProductoDAO.productos(gvProductos.PageIndex, gvProductos.PageSize);
            gvProductos.DataKeyNames = new string[] { "id_producto" };

            gvProductos.DataBind();
            
            //gvProductos.BackColor = System.Drawing.Color.Transparent;
            Pager1.TotalPages = totalPages % gvProductos.PageSize == 0 ? totalPages / gvProductos.PageSize : totalPages / gvProductos.PageSize + 1;
            
            foreach (GridViewRow row in gvProductos.Rows)
            {
                //row.Cells[0].BackColor = System.Drawing.Color.Transparent;
                //row.Cells[1].BackColor = System.Drawing.Color.Transparent;
                //row.Cells[2].BackColor = System.Drawing.Color.Transparent;
                //row.Cells[3].BackColor = System.Drawing.Color.Transparent;
                //row.Cells[4].BackColor = System.Drawing.Color.Transparent;
                
                //row.Cells[0].BorderColor = System.Drawing.Color.Transparent;
                //row.Cells[1].BorderColor = System.Drawing.Color.Transparent;
                //row.Cells[2].BorderColor = System.Drawing.Color.Transparent;
                //row.Cells[3].BorderColor = System.Drawing.Color.Transparent;
                //row.Cells[4].BorderColor = System.Drawing.Color.Transparent;
                row.Cells[3].Font.Bold = false;
            }
           


 
            //gvProductos.DataBind();

            gvProductos.HeaderRow.Cells[2].Text = " Producto";
            gvProductos.HeaderRow.Cells[3].Text = " Descripcion";
            gvProductos.HeaderRow.Cells[4].Text = " Precio";
        }
        catch
        {

        }
    }

    protected void custPager_PageChanged(object sender, CustomPageChangeArgs e)
    {
        if (Session["ProdInfo"] == null)
            mantenerSeleccionado();

        gvProductos.PageSize = e.CurrentPageSize;
        gvProductos.PageIndex = e.CurrentPageNumber;
        CargarGrilla();
        marcarSeleccionados();
    }
    protected void btnAgregarCarrito_Click(object sender, EventArgs e)
    {


    }


    private void cargarGrilla(GridView gv, DataTable dt)
    {
        gv.DataSource = dt;
        gv.DataBind();
    }

    protected void btnConfirmar_Click(object sender, EventArgs e)
    {
        mantenerSeleccionado();
        lblCant.Visible = false;
        bool validar = validarCantidad();
        if (validar == true)
        {
            List<ProductoXpedido> prodInfo = Session["ProdInfo"] as List<ProductoXpedido>;
            foreach (var item in prodInfo)
            {
                ProductoXpedido pxp = new ProductoXpedido();
                pxp.id_producto = item.id_producto;
                pxp.cantidad = item.cantidad;

                string nom = ProductoDAO.ObtenerProductoPorId(pxp.id_producto);
                int precio = ProductoDAO.obtenerPrecioProducto(pxp.id_producto);
                int subtotal = (precio * pxp.cantidad);

                pxp.precio = subtotal;
                pxp.id_tamaño = 3;

                listProdXped.Add(pxp);
                dt.Columns[0].ColumnName = "Producto";
                dt.Columns[1].ColumnName = "Cantidad";
                dt.Columns[2].ColumnName = "Subtotal";
                dt.Rows.Add(nom, pxp.cantidad, subtotal);


                CalcularTotal();
                lblCant.Visible = false;
            }

            Session["dataTable"] = dt;
            Session["lista"] = listProdXped;
            Session["total"] = txtTotal.Text;
            Response.Redirect("~/confirmarPedido.aspx");
        }

        else
        {
            lblCant.Text = "La cantidad ingresada debe ser válida";
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

    protected void chek1_CheckedChanged(object sender, EventArgs e)
    {

    }

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

    protected void btnFiltrar_Click(object sender, EventArgs e)
    {
        int sand = 0, beb = 0, guarn = 0, postre = 0, caf = 0, combo = 0;

        if (chSand.Checked == true)
            sand = 1;
        if (chBebida.Checked == true)
            beb = 2;
        if (chGuarn.Checked == true)
            guarn = 3;
        if (chPostre.Checked == true)
            postre = 4;
        if (chCafeteria.Checked == true)
            caf = 5;
        if (chCombo.Checked == true)
            combo = 6;

        try
        {
            gvProductos.DataSource = ProductoDAO.ObtenerConFiltro(sand, beb, guarn, postre, caf, combo);
            gvProductos.DataKeyNames = new string[] { "id_producto" };
            gvProductos.DataBind();

            gvProductos.HeaderRow.Cells[2].Text = " Producto";
            gvProductos.HeaderRow.Cells[3].Text = " Descripcion";
            gvProductos.HeaderRow.Cells[4].Text = " Precio";
        }
        catch
        {

        }
    }
        public void mantenerSeleccionado()
    {
        List<ProductoXpedido> prodInfo = Session["ProdInfo"] as List<ProductoXpedido>;

        if (prodInfo == null)
            prodInfo = new List<ProductoXpedido>();

        foreach (GridViewRow dgi in gvProductos.Rows)
        {
            CheckBox myCheckBox = dgi.Cells[0].Controls[1] as CheckBox;
            TextBox txtCantidad = dgi.Cells[1].Controls[1] as TextBox;
            if (myCheckBox.Checked == true && txtCantidad.Text!="")
            {
                ProductoXpedido pxp = new ProductoXpedido();
                pxp.id_producto = (int.Parse(gvProductos.DataKeys[dgi.RowIndex].Value.ToString()));
                pxp.cantidad = int.Parse(txtCantidad.Text);
                prodInfo.Add(pxp);
            }

        }
        Session["ProdInfo"] = prodInfo;
    }


    public void marcarSeleccionados()
    {
        List<ProductoXpedido> prodInfo = Session["ProdInfo"] as List<ProductoXpedido>;

        foreach (var item in prodInfo)
        {
            int id = item.id_producto;
            int cant = item.cantidad;
            foreach (GridViewRow dgi in gvProductos.Rows)
            {
                if(int.Parse(gvProductos.DataKeys[dgi.RowIndex].Value.ToString())== id)
                {
                    CheckBox myCheckBox = dgi.Cells[0].Controls[1] as CheckBox;
                    myCheckBox.Checked = true;
                    TextBox txtCantidad = dgi.Cells[1].Controls[1] as TextBox;
                    txtCantidad.Text = Convert.ToString(cant);
                }
            }
        }
    }

}

