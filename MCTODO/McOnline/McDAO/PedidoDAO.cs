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
        public static string con = @"workstation id=MCDonaldsBD.mssql.somee.com;packet size=4096;user id=belenramondelli_SQLLogin_1;pwd=co8hnc1axi;data source=MCDonaldsBD.mssql.somee.com;persist security info=False;initial catalog=MCDonaldsBD";

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

                sql = "insert into Pedido(fecha, montoTotal, id_estado, horaPedido, horaEntrega) values (@fech, @montoTot, @estado, @hsPed, @hsEnt); select @@Identity as id;";
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("@fech", ped.fecha);
                cmd.Parameters.AddWithValue("@montoTot", ped.montoTotal);
                cmd.Parameters.AddWithValue("@estado", ped.id_estado);
                cmd.Parameters.AddWithValue("@hsPed", ped.horaPedido);
                cmd.Parameters.AddWithValue("@hsPed", ped.horaEntrega);
                ped.id_pedido = Convert.ToInt32(cmd.ExecuteScalar());

                sql = "insert into productoXPedido(id_producto,id_pedido, id_tamaño, cantidad, descripcion,precio) values (@id_Prod, @id_Ped, @id_tam, @cant, @descr, @precio)";
                foreach (ProductoXpedido item in listProdXped)
                {

                    cmd.CommandText = sql;
                    cmd.Parameters.AddWithValue("@id_prod", item.id_producto);
                    cmd.Parameters.AddWithValue("@id_ped", ped.id_pedido);
                    cmd.Parameters.AddWithValue("@id_tam", item.id_tamaño);
                    cmd.Parameters.AddWithValue("@cant", item.cantidad);
                    cmd.Parameters.AddWithValue("@descr", item.descripcion);
                    cmd.Parameters.AddWithValue("@precio", item.precio);

                    SqlCommand cmd2 = new SqlCommand(sql, cn);
                    cmd2.Transaction = tran;
                    cmd2.Connection = cn;
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


