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

        public static List<ProductoXtamaño> ObtenerTodo()
        {
            List<ProductoXtamaño> listProductos = new List<ProductoXtamaño>();
            string sql = " select prod.id_producto, prod.nombre, prodtam.descripcion, prodtam.precio from producto prod, productoXtamaño prodtam where prodtam.id_producto=prod.id_producto  ";
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = con;
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    ProductoXtamaño prod = new ProductoXtamaño();

                    prod.id_producto = (int)dr["id_producto"];
                    prod.nombre = dr["nombre"].ToString();
                    prod.descripcion = dr["descripcion"].ToString();
                    prod.precio = (int)dr["precio"];
                    
                    listProductos.Add(prod);
                }
                dr.Close();
                cn.Close();


            }
            catch (SqlException ex)
            {
                if (cn.State == ConnectionState.Open)
                    cn.Close();
                throw new ApplicationException("Error al buscar los prdocutos");
            }
            return listProductos;
            
        }





        public static string ObtenerProductoPorId(int id)
        {
            string nom = "";
            string sql = "select nombre from Producto where id_producto = @id";
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
                    nom = dr["nombre"].ToString();
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
            return nom;

        }


    }
}
