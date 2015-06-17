using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
   public class ProductoXtamaño
    {
        public int id_producto { get; set; }
        //public int id_tamaño { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public int precio { get; set; }
        public int tipo { get; set; }

        public ProductoXtamaño()
        {
        }
        public ProductoXtamaño(int id_producto, int precio, string descrip, string nom, int tipo)
        {
            this.id_producto = id_producto;
            this.nombre = nom;
            this.precio = precio;
            this.descripcion = descrip;
            this.tipo = tipo;
        }



    }
}
