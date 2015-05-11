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
public partial class confirmarPedido : System.Web.UI.Page
{
    public string descrip;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dataTable"] != null)
        {
            DataTable dt = (DataTable)Session["dataTable"];
            txtTotal.Text = Session["total"].ToString();
            cargarGrilla(dgvCompra, dt);
            
        }
    }

    private void cargarGrilla(GridView gv, DataTable dt)
    {
        gv.DataSource = dt;
        gv.DataBind();
    }


    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pedido2.aspx");
    }
    protected void btnAceptar_Click(object sender, EventArgs e)
    {
        if (Session["lista"] != null && Session["usuario"] != null)
        {
            List<ProductoXpedido> listaProdPed = new List<ProductoXpedido>();
            listaProdPed = (List<ProductoXpedido>)Session["lista"];

            Pedido ped = new Pedido();

            ped.usuario = UsuarioDAO.buscarIdUsuario(Session["usuario"].ToString());
            ped.fecha = DateTime.Now;
            ped.montoTotal = int.Parse(txtTotal.Text);
            ped.id_pedido = 0;
            ped.horaPedido = DateTime.Now;
            ped.horaEntrega = DateTime.Now;
            if (!string.IsNullOrWhiteSpace(txtPreferencias.Text))
        {
            if (validarDescripcion() == true)
            {
                Label4.Text = "";
                ped.descrip = txtPreferencias.Text;
                 McDAO.PedidoDAO.insertarPedido(ped, listaProdPed);
                 DialogResult result;
                 result = MessageBox.Show("Ha realizado su pedido con éxito" + " " + Session["usuario"].ToString(), "Confimación", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1, MessageBoxOptions.ServiceNotification);
                 if (result == DialogResult.OK)
                 {

                     Response.Redirect("~/pedido2.aspx");
                 }
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "*Ha superado la cantidad máxima de caracteres";
                
            }
        }
        else
        {
            ped.descrip = "";
            McDAO.PedidoDAO.insertarPedido(ped, listaProdPed);
            DialogResult result;
            result = MessageBox.Show("Ha realizado su pedido con éxito" + " " + Session["usuario"].ToString(), "Confimación", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1, MessageBoxOptions.ServiceNotification);
            if (result == DialogResult.OK)
            {

                Response.Redirect("~/pedido2.aspx");
            }
        }
    
            
         
           
            //ESTO SIRVE PARA CUANDO AGREGUEMOS UN CAMPO DESCRIP POR CADA ARTICULO
            //foreach (ProductoXpedido item in listaProdPed)
            //{
            //    foreach (GridViewRow row in dgvCompra.Rows)
            //    {
            //        if (item.id_producto.Equals(ProductoDAO.buscarIdProducto(row.Cells[0].Text)))
            //        {
            //            TextBox txtDescrip = row.FindControl("txtDescrip") as TextBox;

            //            item.descripcion = Convert.ToString(txtDescrip.Text);
                        
            //        }
            //    }
            //}

        
        }

    }

    public bool validarDescripcion()
    {
        txtPreferencias.MaxLength = 100;
        if (txtPreferencias.Text.Length < txtPreferencias.MaxLength)
            return true;
        else
            return false;
    }


    protected void dgvCompra_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    //Esto es para cuando agreguemos el campo preferencias

    //protected void dgvCompra_RowCreated(object sender, GridViewRowEventArgs e)
    //{
       
    //    GridViewRow row = e.Row;
    //    List<TableCell> columns = new List<TableCell>();
    //    foreach (DataControlField column in dgvCompra.Columns)
    //    {
    //        TableCell cell = row.Cells[0];
    //        row.Cells.Remove(cell);
    //        columns.Add(cell);
    //    }
    //    row.Cells.AddRange(columns.ToArray());
        
    //}
    protected void txtPreferencias_TextChanged(object sender, EventArgs e)
    {
    }
}