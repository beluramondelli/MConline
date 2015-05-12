using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entidades;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace McDAO
{
    public class PedidoDAO
    {
        public static string con = @"workstation id=MCDonalds.mssql.somee.com;packet size=4096;user id=valran_SQLLogin_1;pwd=7gq2o1hqh1;data source=MCDonalds.mssql.somee.com;persist security info=False;initial catalog=MCDonalds";

        public static void insertarPedido(Pedido ped, List<ProductoXpedido> listProdXped)
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

                sql = "insert into pedido(fecha, montoTotal, id_estado, horaPedido, horaEntrega, id_usuario,descripcion) values (@fech, @montoTot, @estado, @hsPed, @hsEnt, @usuario,@descrip); select @@Identity;";

                cmd.Parameters.AddWithValue("@usuario", ped.usuario);
                cmd.Parameters.AddWithValue("@fech", ped.fecha);
                cmd.Parameters.AddWithValue("@montoTot", ped.montoTotal);
                cmd.Parameters.AddWithValue("@estado", ped.id_estado);
                cmd.Parameters.AddWithValue("@hsPed", ped.horaPedido);
                cmd.Parameters.AddWithValue("@hsEnt", ped.horaEntrega);
                cmd.Parameters.AddWithValue("@descrip", ped.descrip);
                cmd.CommandText = sql;
                ped.id_pedido = int.Parse(cmd.ExecuteScalar().ToString());


                sql = "insert into productoXpedido(id_producto, id_pedido, id_tamaño, cantidad, precio) values (@id_Prod, @id_Ped, @id_tam, @cant, @precio)";
                foreach (ProductoXpedido item in listProdXped)
                {
                    SqlCommand cmd2 = new SqlCommand(sql, cn);
                    cmd2.Transaction = tran;
                    cmd2.Connection = cn;

                    cmd2.Parameters.AddWithValue("@id_prod", item.id_producto);
                    cmd2.Parameters.AddWithValue("@id_ped", ped.id_pedido);
                    cmd2.Parameters.AddWithValue("@id_tam", item.id_tamaño);
                    cmd2.Parameters.AddWithValue("@cant", item.cantidad);
                    //cmd2.Parameters.AddWithValue("@descrip", item.descripcion);
                    cmd2.Parameters.AddWithValue("@precio", item.precio);

                    cmd2.CommandText = sql;
                    cmd2.ExecuteNonQuery();

                }

                tran.Commit();
                cn.Close();
            }
            catch (SqlException ex)
            {
                if (cn.State == ConnectionState.Open)
                {
                    tran.Rollback();
                    cn.Close();
                }
                throw new ApplicationException("Error al insertar Pedido");
            }
        }


    }

}


