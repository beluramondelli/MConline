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
        if (Session["lista"] != null && Session["usuario"]!= null)
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

            McDAO.PedidoDAO.insertarPedido(ped, listaProdPed);
            DialogResult result;
            result = MessageBox.Show("Ha realizado su pedido con éxito" + " "+ Session["usuario"].ToString(), "Confimación", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1, MessageBoxOptions.ServiceNotification);
            if (result == DialogResult.OK)
            {
                Response.Redirect("~/pedido2.aspx");
            }
        }

    }


    protected void dgvCompra_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void dgvCompra_RowCreated(object sender, GridViewRowEventArgs e)
    {
       
        GridViewRow row = e.Row;
        List<TableCell> columns = new List<TableCell>();
        foreach (DataControlField column in dgvCompra.Columns)
        {
            TableCell cell = row.Cells[0];
            row.Cells.Remove(cell);
            columns.Add(cell);
        }
        row.Cells.AddRange(columns.ToArray());
        
    }
}