using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class Tamaño
    {
        public int id_tamaño { get; set; }
        public string descripcion { get;set; }

        public Tamaño()
        { }

        public Tamaño(int id_tamaño, string descripcion)
        {
            this.id_tamaño = id_tamaño;
            this.descripcion = descripcion;
        }
    }
}
