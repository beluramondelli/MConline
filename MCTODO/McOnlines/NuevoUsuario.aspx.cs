using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using McDAO;
using Entidades;
using System.Windows.Forms;
public partial class inicioSesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCrear_Click(object sender, EventArgs e)
    {
        if ((McDAO.UsuarioDAO.verificarMail(txtMail.Text.ToString()).Equals(false)) && (McDAO.UsuarioDAO.VerificarNombreUsuario(txtUsuario.Text.ToString()).Equals(false)))
        {
            Usuario usu = new Usuario();
            usu.nombre = txtNombre.Text.ToString();
            usu.username = txtUsuario.Text.ToString();
            usu.apellido = txtApe.Text.ToString();
            usu.mail = txtMail.Text.ToString();
            usu.password = txtPasswd.Text.ToString();
            usu.telefono = Convert.ToInt64(txtTel.Text.ToString());
            McDAO.UsuarioDAO.insertarUsuario(usu);
            DialogResult result;

           result= MessageBox.Show("Se ha creado su usuario con éxito, ingrese para realizar un pedido", "Confirmación", MessageBoxButtons.OK, MessageBoxIcon.Information , MessageBoxDefaultButton.Button1, MessageBoxOptions.ServiceNotification);
           if (result == DialogResult.OK)
           {
               Response.Redirect("Login.aspx");
           }
            txtApe.Text = "";
            txtMail.Text = "";
            txtNombre.Text = "";
            txtTel.Text = "";
            txtUsuario.Text = "";

        }
        else
        {
            if (McDAO.UsuarioDAO.verificarMail(txtMail.Text.ToString()).Equals(true))
            {
                MessageBox.Show("Ya existe un usuario con esta dirección de mail", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.ServiceNotification);
                
            }
            if(McDAO.UsuarioDAO.VerificarNombreUsuario(txtUsuario.Text.ToString()).Equals(true))
            {
                MessageBox.Show("Ya existe un usuario con este nombre de usuario", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.ServiceNotification);
                
            }
        }
              
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
   {
    //    string text = txtPasswd.Text;
    //    if (CheckBox1.Checked)
    //    {
    //        txtPasswd.UseSystemPasswordChar = false;
    //        PasswordtextBox.Text = text;
            
    //    }
    //    else
    //    {
    //        PasswordtextBox.UseSystemPasswordChar = true;
    //        PasswordtextBox.Text = text;
    //    }
    }
    protected void txtMail_TextChanged(object sender, EventArgs e)
    {

    }
}