using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using McDAO;
using System.Windows.Forms;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        Usuario usu = new Usuario(txtUsuario.Text.ToString(), txtPassword.Text.ToString());
        if (McDAO.Login1DAO.verificarExistencia(usu).Equals(true))
        {
            DialogResult result;
            result=MessageBox.Show("¡Bienvenido "+txtUsuario.Text.ToString()+"!", "Bienvenido", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1, MessageBoxOptions.ServiceNotification);
            if (result == DialogResult.OK)
            {
                Response.Redirect("pedido2.aspx");
            }
        }
        else
        {
            MessageBox.Show("Error en el nombre de usuario o password", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.ServiceNotification);
           
        }

    }
}