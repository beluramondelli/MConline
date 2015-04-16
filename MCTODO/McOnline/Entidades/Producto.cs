using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class Producto
    {
        public int? id { get; set; }
        public String nombre { get; set; }

        public Producto()
        {
        }

        public Producto(int? id, String nombre)
        {
            this.id = id;
            this.nombre = nombre;

        }


    }


}
