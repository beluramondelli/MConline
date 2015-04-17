using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class Producto
    {
        public int? id_producto { get; set; }
        public string nombre { get; set; }

        public Producto()
        {
        }

        public Producto(int? id, string nombre)
        {
            this.id_producto =id;
            this.nombre = nombre;

        }


    }


}
