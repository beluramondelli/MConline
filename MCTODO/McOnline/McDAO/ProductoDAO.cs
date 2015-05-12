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
        public static string con = @"workstation id=MCDonalds.mssql.somee.com;packet size=4096;user id=valran_SQLLogin_1;pwd=7gq2o1hqh1;data source=MCDonalds.mssql.somee.com;persist security info=False;initial catalog=MCDonalds";

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
            string sql = "select nombre from producto where id_producto = @id";
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



        public static int obtenerPrecioProducto(int id)
        {
            int preci = 0;
            string sql = "select precio from productoXtamaño where id_producto = @id";
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
                    preci = (int)dr["precio"];
                }
                dr.Close();
                cn.Close();
            }
            catch (SqlException ex)
            {
                if (cn.State == ConnectionState.Open)
                    cn.Close();
                throw new ApplicationException("Error al buscar el precio del producto");
            }
            return preci;
        }

        public static int buscarIdProducto(string prod)
        {
            string sql = " select * from producto where nombre=@prod";
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = con;
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@prod", prod);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    return (int)dr["id_producto"];
                }
                else
                {
                    return 0;
                }
            }
            catch
            {
            }
            return 0;
        }

        public static int buscarIdTamaño(string prod)
        {
            string sql = " select * from producto where nombre=@prod";
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = con;
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@prod", prod);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    return (int)dr["id_tamaño"];
                }
                else
                {
                    return 0;
                }
            }
            catch
            {
            }
            return 0;
        }
    }
}
