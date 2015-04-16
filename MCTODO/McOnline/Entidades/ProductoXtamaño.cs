using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
   public class ProductoXtamaño
    {
        public int id_producto { get; set; }
        public int id_tamaño { get; set; }
        public float precio { get; set; }

        public ProductoXtamaño()
        {
    }
        public ProductoXtamaño(int id_producto, int id_tamaño, float precio)
        {
            this.id_producto = id_producto;
            this.id_tamaño = id_tamaño;
            this.precio = precio;
        }


    }
}
