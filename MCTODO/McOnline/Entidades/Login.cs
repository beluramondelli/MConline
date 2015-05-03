using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class Login
    {
        public string usuario { get; set; }
        public string contraseña { get; set; }

        public Login()
        { 
        }

        public Login(string usu, string contra)
        {
            this.usuario = usu;
            this.contraseña = contra;
        }
    }

}
