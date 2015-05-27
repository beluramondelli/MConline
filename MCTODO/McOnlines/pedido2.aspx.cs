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

                DropDownList ddlPageSize = (DropDownList)custPager.FindControl("ddlPageSize");
                custPager.CurrentPageSize = Convert.ToInt32(ddlPageSize.SelectedItem.Value);
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
          
            custPager.TotalPages = totalPages % gvProductos.PageSize == 0 ? totalPages / gvProductos.PageSize : totalPages / gvProductos.PageSize + 1;

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
        gvProductos.PageSize = e.CurrentPageSize;
        gvProductos.PageIndex = e.CurrentPageNumber;
        CargarGrilla();
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
    {
        RestoreProductInfo((GridView)sender);
    }

    protected void gvProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        KeepSelection((GridView)sender);
        gvProductos.PageIndex = e.NewPageIndex;
        CargarGrilla();
    }
    protected void btnConfirmar_Click(object sender, EventArgs e)
    {
        lblCant.Visible = false;
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
                    dt.Columns[0].ColumnName = "Producto";
                    dt.Columns[1].ColumnName = "Cantidad";
                    dt.Columns[2].ColumnName = "Subtotal";
                    dt.Rows.Add(nom, pxp.cantidad, subtotal);


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

    //public bool validarDescripcion()
    //{
    //    txtDescripcion.MaxLength = 100;
    //    if (txtDescripcion.Text.Length < txtDescripcion.MaxLength)
    //        return true;
    //    else
    //        return false;
    //}


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
                        txtCantidad.BackColor = System.Drawing.Color.Red;
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

    public static void KeepSelection(GridView grid)
    {
        //
        // se obtienen los id de producto checkeados de la pagina actual
        //

        var checkedProd = from item in grid.Rows.Cast<GridViewRow>()
                          let check = (CheckBox)item.FindControl("Chek1")
                          let cantidad = (TextBox)item.FindControl("txtCantidad")
                          where (check.Checked && (!string.IsNullOrWhiteSpace(cantidad.Text)))
                          select new ProductInfo()
                          {
                              id_prod = Convert.ToInt32(grid.DataKeys[item.RowIndex].Value),
                              cant = Convert.ToInt32(cantidad.Text),
                              //id_tam=ProductoDAO.buscarIdTamaño(grid.Rows[item.RowIndex].Cells)
                          };

        //
        // se recupera de session la lista de seleccionados previamente
        //
        List<ProductInfo> prodInfo = HttpContext.Current.Session["ProdInfo"] as List<ProductInfo>;


        if (prodInfo == null)
            prodInfo = new List<ProductInfo>();
        //
        // se cruzan todos los ingresados en la pagina actual, con los previamente conservados 
        // en Session, devolviendo solo aquellos donde no hay coincidencia
        //
        prodInfo = (from item in prodInfo
                    join item2 in checkedProd
                       on item.id_prod equals item2.id_prod into g
                    where !g.Any()
                    select item).ToList();

        //
        // se agregan la actualizacion realizada por el usuario
        //
        prodInfo.AddRange(checkedProd);

        HttpContext.Current.Session["ProdInfo"] = prodInfo;

    }


    public static void RestoreProductInfo(GridView grid)
    {

        List<ProductInfo> prodInfo = HttpContext.Current.Session["ProdInfo"] as List<ProductInfo>;

        if (prodInfo == null)
            return;

        //
        // se comparan los registros de la pagina del grid con los recuperados de la Session
        // los coincidentes se devuelven para ser seleccionados
        //
        var result = (from item in grid.Rows.Cast<GridViewRow>()
                      join item2 in prodInfo
                          on Convert.ToInt32(grid.DataKeys[item.RowIndex].Value) equals item2.id_prod into g
                      where g.Any()
                      select new
                      {
                          gridrow = item,
                          prodonfo = g.First()
                      }).ToList();


        //
        // se recorre cada item para asignar la informacion 
        //
        result.ForEach(x =>
        {
            ((CheckBox)x.gridrow.FindControl("Chek1")).Checked = true;
            ((TextBox)x.gridrow.FindControl("txtCantidad")).Text = Convert.ToString(x.prodonfo.cant);

        });
    }
    internal class ProductInfo
    {
        public int id_prod { get; set; }
        public int cant { get; set; }
        public int id_tam { get; set; }
    }


    //private void dataGridView1_CellContentClick(object sender, System.Windows.Forms.DataGridViewCellEventArgs e)
    //{
    //    if (gvProductos.Columns[e.ColumnIndex].Name == "IsSelected" && gvProductos.CurrentCell is DataGridViewCheckBoxCell)
    //    {
    //        bool isChecked = (bool)gvProductos[e.ColumnIndex, e.RowIndex].EditedFormattedValue;
    //        if (isChecked == false)
    //        {
    //            gvProductos.Rows[e.RowIndex].Cells["Status"].Value = "";
    //        }
    //        gvProductos.EndEdit();
    //    }
    //}
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

}
