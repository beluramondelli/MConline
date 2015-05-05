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
        if (Session["lista"] != null)
        {
            List<ProductoXpedido> listaProdPed = new List<ProductoXpedido>();
            listaProdPed = (List<ProductoXpedido>)Session["lista"];

            Pedido ped = new Pedido();

            ped.fecha = DateTime.Now;
            ped.montoTotal = int.Parse(txtTotal.Text);
            ped.id_pedido = 0;
            ped.horaPedido = DateTime.Now;
            ped.horaEntrega = DateTime.Now;

            McDAO.PedidoDAO.insertarPedido(ped, listaProdPed);
            DialogResult result;
            result=MessageBox.Show("Ha realizado su pedido con éxito","Confimación",MessageBoxButtons.OK, MessageBoxIcon.Information,MessageBoxDefaultButton.Button1 ,MessageBoxOptions.ServiceNotification);
            if (result == DialogResult.OK)
            {
                Response.Redirect("~/pedido2.aspx");
            }
        }

    }

    
}