using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using McDAO;
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
            Response.Redirect("pedido2.aspx");
        }

    }
}