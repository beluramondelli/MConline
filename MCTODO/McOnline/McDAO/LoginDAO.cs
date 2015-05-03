using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entidades;
using McDAO;
using System.Data;
using System.Data.SqlClient;
namespace McDAO
{
   public  class LoginDAO
    {
       public static string con = @"workstation id=MCDonaldsBD.mssql.somee.com;packet size=4096;user id=belenramondelli_SQLLogin_1;pwd=co8hnc1axi;data source=MCDonaldsBD.mssql.somee.com;persist security info=False;initial catalog=MCDonaldsBD";

       public bool verificarExistencia(Usuario usu)
       {
           string sql = " select * from usuario where username= @user and password=@pass";
           
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
           
       }
    }
}
