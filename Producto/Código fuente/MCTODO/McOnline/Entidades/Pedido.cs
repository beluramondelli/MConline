using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Entidades
{
    public class Pedido
    {
        public int? id_pedido { get; set; }
        public DateTime fecha { get; set; }
        public int montoTotal { get; set; }
        public int id_estado { get; set; }
        public DateTime horaPedido { get; set; }
        public DateTime horaEntrega { get; set; }
        public int usuario { get; set; }
        public string descrip { get; set; }

        public Pedido()
        {
        }

        public Pedido(int id, DateTime fecha, int monto, int id_estado, DateTime horaPedido, DateTime horaEntrega)
        {
            this.id_pedido = id;
            this.fecha = fecha;
            this.montoTotal = monto;
            this.id_estado = id_estado;
            this.horaPedido = horaPedido;
            this.horaEntrega = horaEntrega;
        }
    }
}
