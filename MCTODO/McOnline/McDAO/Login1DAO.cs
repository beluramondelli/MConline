using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Entidades;
namespace McDAO
{
    public class Login1DAO
    {
        public static string con = @"workstation id=MCDonalds.mssql.somee.com;packet size=4096;user id=valran_SQLLogin_1;pwd=7gq2o1hqh1;data source=MCDonalds.mssql.somee.com;persist security info=False;initial catalog=MCDonalds";

        public static bool verificarExistencia(Usuario usu)
        {
            string sql = " select * from usuario where nombreUsuario=@user and password=@pass";
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = con;
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@user", usu.username);
                cmd.Parameters.AddWithValue("@pass", usu.password);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
            }
            return false;
        }

        public static bool verificarUsuario(string usu)
        {
            string sql = " select * from usuario where nombreUsuario=@user";
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = con;
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@user", usu);
           
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
            }
            return false;
        }
        public static bool verificarPasswd(string pass)
        {
            string sql = " select * from usuario where password=@pass";
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = con;
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
          
                cmd.Parameters.AddWithValue("@pass", pass);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
            }
            return false;
        }
    }
}
