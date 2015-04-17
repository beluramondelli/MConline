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
    public class ProductoDAO
    {
        public static string con = @"workstation id=MCDonaldsBD.mssql.somee.com;packet size=4096;user id=belenramondelli_SQLLogin_1;pwd=co8hnc1axi;data source=MCDonaldsBD.mssql.somee.com;persist security info=False;initial catalog=MCDonaldsBD";

        public static List<Producto> ObtenerTodo()
        {
            List<Producto> listProductos = new List<Producto>();
            string sql = " select * from producto ";
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = con;

            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Producto prod = new Producto();

                    prod.id_producto = (int)dr["id_producto"];
                    prod.nombre = dr["nombre"].ToString();

                    listProductos.Add(prod);
                }
                dr.Close();
                cn.Close();


            }
            catch (SqlException ex)
            {
                if (cn.State == ConnectionState.Open)
                    cn.Close();
                throw new ApplicationException("Error al buscar las provincias");
            }
            return listProductos;
            
        }





        public static Producto ObtenerProductoPorId(int id)
        {
            Producto prod= new Producto();
            string sql = "select * from Producto where id_producto = @id";
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = con;
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@id", id);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    prod.id_producto = (int)dr["id_producto"];
                    prod.nombre = dr["nombre"].ToString();
                }
                dr.Close();
                cn.Close();
            }
            catch (SqlException ex)
            {
                if (cn.State == ConnectionState.Open)
                    cn.Close();
                throw new ApplicationException("Error al buscar el Producto");
            }
            return prod;

        }


    }
}
