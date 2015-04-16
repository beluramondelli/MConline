using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entidades;
using System.Data.SqlClient;
using System.Data;
using McDAO;

namespace McDAO
{
    class ProductoDAO
    {
        
        public static List<Producto> ObtenerTodo()
        {
            List<Producto> listProductos = new List<Producto>();
            String sql = " select nombre from producto ";
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "workstation id=MCDonaldsBD.mssql.somee.com;packet size=4096;user id=belenramondelli_SQLLogin_1;pwd=co8hnc1axi;data source=MCDonaldsBD.mssql.somee.com;persist security info=False;initial catalog=MCDonaldsBD";

            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Producto prod = new Producto()
                    {
                        id = (int)dr["id_producto"],
                        nombre= dr["nombre"].ToString()
                    };
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
    }
}
