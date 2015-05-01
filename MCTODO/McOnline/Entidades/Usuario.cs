﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class Usuario
    {
        public int id_usuario {get;set;}
        public string nombre{get;set;}
        public string username { get; set; }
        public string apellido{get;set;}
        public string mail{get;set;}
        public string password{get;set;}
        public int telefono { get; set; }


        public Usuario()
        {
        }
        public Usuario(string nom, string ape, string correo, string pass)
        {
            this.nombre = nom;
            this.apellido = ape;
            this.mail = correo;
            this.password = pass;

        }
    }
  


}
