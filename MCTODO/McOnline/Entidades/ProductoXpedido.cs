using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class ProductoXpedido
    {
        public int id_producto { get; set; }
        public int id_pedido { get; set; }
        public int id_tamaño { get; set; }
        public int cantidad { get; set; }
        public string descripcion { get; set; }
        public int precio { get; set; }


        public ProductoXpedido()
        { }

        public ProductoXpedido(int id_producto, int id_pedido, int id_tamaño, int cantidad, string descripcion, int precio)
        {
            this.id_producto = id_producto;
            this.id_pedido = id_pedido;
            this.id_tamaño = id_tamaño;
            this.cantidad = cantidad;
            this.descripcion = descripcion;
            this.precio = precio;
        }

        internal class ProductInfo
        {
            public int id_producto { get; set; }
            public int cantidad { get; set; }
            public string descripcion { get; set; }

        }
    }
}
