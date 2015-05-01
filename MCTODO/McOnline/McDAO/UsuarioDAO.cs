using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Entidades;
namespace McDAO
{
    public class UsuarioDAO
    {
        public static string con = @"workstation id=MCDonaldsBD.mssql.somee.com;packet size=4096;user id=belenramondelli_SQLLogin_1;pwd=co8hnc1axi;data source=MCDonaldsBD.mssql.somee.com;persist security info=False;initial catalog=MCDonaldsBD";


        public static void insertarUsuario(Usuario usu)
        {
            
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = con;
            SqlTransaction tran = null;
            try
            {
                cn.Open();
                tran = cn.BeginTransaction();
                string sql = string.Empty;

                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Transaction = tran;
                cmd.Connection = cn;

                sql = "insert into usuario(nombreUsuario,password,nombre,apellido,mail,telefono)values(@usu, @pass,@nom,@ape,@mail,@tel); select @@Identity;";
                cmd.Parameters.AddWithValue("@usu",usu.username);
                cmd.Parameters.AddWithValue("@pass", usu.password);
                cmd.Parameters.AddWithValue("@nom", usu.nombre);
                cmd.Parameters.AddWithValue("@ape", usu.apellido);
                cmd.Parameters.AddWithValue("@mail", usu.mail);
                cmd.Parameters.AddWithValue("@tel", usu.telefono);

                usu.id_usuario = Convert.ToInt32(cmd.ExecuteScalar());
                cmd.ExecuteNonQuery();
                tran.Commit();
                cn.Close();

            }
            catch (SqlException ex)
            {
                if (cn.State == ConnectionState.Open)
                    tran.Rollback();
                cn.Close();
                throw new ApplicationException("Error al insertar un nuevo usuario");
            }
        }
    }
}
