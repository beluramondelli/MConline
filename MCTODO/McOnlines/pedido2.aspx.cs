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
            }

            else
            {
                lblsession.Text="Bienvenido " + Session["usuario"].ToString();
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
                    txtCantidad.Enabled = false;
                    txtDescripcion.Enabled = false;
                    btnAgregarCarrito.Enabled = true;
                    btnConfirmar.Enabled = false;
                    txtTotal.Enabled = false;
                    lblCant.Visible = false;
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
        protected void gvProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbl.Text = "Ha seleccionado ALGO";
            //txtCantidad.Text = "1";
            //txtDescripcion.Text = "";
            //txtCantidad.Enabled = true;
            //txtDescripcion.Enabled = true;
            //btnAgregarCarrito.Enabled = true;
         }

        protected void btnAgregarCarrito_Click(object sender, EventArgs e)
        {

            foreach (GridViewRow dgi in gvProductos.Rows)
            {

                CheckBox myCheckBox = dgi.Cells[0].Controls[1] as CheckBox;
                if (myCheckBox.Checked == true)
                {
                    TextBox txtCantidad = dgi.Cells[1].Controls[1] as TextBox;
                    if(!string.IsNullOrWhiteSpace(txtCantidad.Text))
                    {
                        if (int.Parse(txtCantidad.Text) > 0 && int.Parse(txtCantidad.Text) < 101)
                        {
                            int id_producto = (int.Parse(dgi.Cells[2].Text));
                            //if (listProdXped.Count() != 0)
                            //    {
                                //    foreach (var item in listProdXped)
                                //    {
                                //        if (id_producto == item.id_producto)
                                //        {
                                //            string nom = ProductoDAO.ObtenerProductoPorId(id_producto);
                                //            item.cantidad += (int.Parse(txtCantidad.Text.ToString()));
                                //            int precio = ProductoDAO.obtenerPrecioProducto(id_producto);
                                //            item.precio = (precio * item.cantidad);

                                //            for (int i = 0; i < dt.Rows.Count; i++)
                                //            {
                                //                if (dt.Rows[i]["Nombre"].ToString() == nom)
                                //                {
                                //                    dt.Rows[i].Delete();
                                //                    dt.Rows.Add(nom, item.cantidad, item.descripcion, item.precio);
                                //                }
                                //            }
                                //        }
                                //        else
                                //        {
                                //            ProductoXpedido pxp = new ProductoXpedido();
                                //            pxp.descripcion = txtDescripcion.Text;
                                //            pxp.cantidad = int.Parse(txtCantidad.Text);


                                //            string nom = ProductoDAO.ObtenerProductoPorId(id_producto);
                                //            int precio = ProductoDAO.obtenerPrecioProducto(id_producto);
                                //            int cantidad = (int.Parse(txtCantidad.Text.ToString()));
                                //            int subtotal = (precio * cantidad);

                                //            pxp.precio = subtotal;
                                //            pxp.id_producto = id_producto;
                                //            pxp.id_tamaño = 3;

                                //            listProdXped.Add(pxp);

                                //            dt.Rows.Add(nom, pxp.cantidad, pxp.descripcion, subtotal);

                                //        }
                                //    }
                                //}
                                //else
                                //{
                                    ProductoXpedido pxp = new ProductoXpedido();
                                    pxp.descripcion = txtDescripcion.Text;
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

                                //}

                                cargarGrilla(dgvCarrito, dt);
                                CalcularTotal();
                                lblCant.Visible = false;
                                btnConfirmar.Enabled = true;
                                txtCantidad.Text = "";
                                txtCantidad.Enabled = false;
                                txtDescripcion.Text = "";
                                txtDescripcion.Enabled = false;
                                btnAgregarCarrito.Enabled = true;
                            }
                      
                            else
                            {
                                lblCant.Text = "La descripcion supera el maximo de caracteres permitidos";
                                lblCant.Visible = true;
                            }

                        }
                        else
                        {
                            lblCant.Text = "La cantidad ingresada debe ser un valor entre 1 y 100";
                            lblCant.Visible = true;
                        }
                    }
                   

                        }
                    }
                
            
                
                //    if (txtCantidad.Text != "")
                //    {
                //        if (int.Parse(txtCantidad.Text) > 0 && int.Parse(txtCantidad.Text) < 101)
                //        {
                //            bool ban = validarDescripcion();
                //            if (ban == true)
                //            {
                //                int id_producto = (int.Parse(gvProductos.SelectedDataKey.Value.ToString()));
                //                if (listProdXped.Count() != 0)
                //                {
                //                    foreach (var item in listProdXped)
                //                    {
                //                        if (id_producto == item.id_producto)
                //                        {
                //                            string nom = ProductoDAO.ObtenerProductoPorId(id_producto);
                //                            item.cantidad += (int.Parse(txtCantidad.Text.ToString()));
                //                            int precio = ProductoDAO.obtenerPrecioProducto(id_producto);
                //                            item.precio = (precio * item.cantidad);
                //                            item.descripcion = string.Concat(item.descripcion, txtDescripcion.Text);

                //                            for (int i = 0; i < dt.Rows.Count; i++)
                //                            {
                //                                if (dt.Rows[i]["Nombre"].ToString() == nom)
                //                                {
                //                                    dt.Rows[i].Delete();
                //                                    dt.Rows.Add(nom, item.cantidad, item.descripcion, item.precio);
                //                                }
                //                            }
                //                        }
                //                        else
                //                        {
                //                            ProductoXpedido pxp = new ProductoXpedido();
                //                            pxp.descripcion = txtDescripcion.Text;
                //                            pxp.cantidad = int.Parse(txtCantidad.Text);


                //                            string nom = ProductoDAO.ObtenerProductoPorId(id_producto);
                //                            int precio = ProductoDAO.obtenerPrecioProducto(id_producto);
                //                            int cantidad = (int.Parse(txtCantidad.Text.ToString()));
                //                            int subtotal = (precio * cantidad);

                //                            pxp.precio = subtotal;
                //                            pxp.id_producto = id_producto;
                //                            pxp.id_tamaño = 3;

                //                            listProdXped.Add(pxp);

                //                            dt.Rows.Add(nom, pxp.cantidad, pxp.descripcion, subtotal);

                //                        }
                //                    }
                //                }
                //                else
                //                {
                //                    ProductoXpedido pxp = new ProductoXpedido();
                //                    pxp.descripcion = txtDescripcion.Text;
                //                    pxp.cantidad = int.Parse(txtCantidad.Text);


                //                    string nom = ProductoDAO.ObtenerProductoPorId(id_producto);
                //                    int precio = ProductoDAO.obtenerPrecioProducto(id_producto);
                //                    int cantidad = (int.Parse(txtCantidad.Text.ToString()));
                //                    int subtotal = (precio * cantidad);

                //                    pxp.precio = subtotal;
                //                    pxp.id_producto = id_producto;
                //                    pxp.id_tamaño = 3;

                //                    listProdXped.Add(pxp);

                //                    dt.Rows.Add(nom, pxp.cantidad, pxp.descripcion, subtotal);

                //                }

                //                cargarGrilla(dgvCarrito, dt);
                //                CalcularTotal();
                //                lblCant.Visible = false;
                //                btnConfirmar.Enabled = true;
                //                txtCantidad.Text = "";
                //                txtCantidad.Enabled = false;
                //                txtDescripcion.Text = "";
                //                txtDescripcion.Enabled = false;
                //                btnAgregarCarrito.Enabled = false;
                //            }

                //            else
                //            {
                //                lblCant.Text = "La descripcion supera el maximo de caracteres permitidos";
                //                lblCant.Visible = true;
                //            }

                //        }
                //        else
                //        {
                //            lblCant.Text = "La cantidad ingresada debe ser un valor entre 1 y 100";
                //            lblCant.Visible = true;
                //        }
                //    }
                //    else
                //    {
                //        lblCant.Text = "Debe ingresar una cantidad";
                //        lblCant.Visible = true;
                //    }
            
        

    


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
            Session["dataTable"]= dt;
            Session["lista"] = listProdXped;
            Session["total"] = txtTotal.Text;
            Response.Redirect("~/confirmarPedido.aspx");
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

        public bool validarDescripcion()
        {
            txtDescripcion.MaxLength = 100;
            if (txtDescripcion.Text.Length < txtDescripcion.MaxLength)
                return true;
            else
                return false;
        }


        protected void chek1_CheckedChanged(object sender, EventArgs e)
        {
           
            
           
        }
}