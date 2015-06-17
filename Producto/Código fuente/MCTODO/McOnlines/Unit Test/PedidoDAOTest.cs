using McDAO;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Entidades;
using System.Collections.Generic;

namespace Unit_Test
{
    
    
    /// <summary>
    ///Se trata de una clase de prueba para PedidoDAOTest y se pretende que
    ///contenga todas las pruebas unitarias PedidoDAOTest.
    ///</summary>
    [TestClass()]
    public class PedidoDAOTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Obtiene o establece el contexto de la prueba que proporciona
        ///la información y funcionalidad para la ejecución de pruebas actual.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Atributos de prueba adicionales
        // 
        //Puede utilizar los siguientes atributos adicionales mientras escribe sus pruebas:
        //
        //Use ClassInitialize para ejecutar código antes de ejecutar la primera prueba en la clase 
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup para ejecutar código después de haber ejecutado todas las pruebas en una clase
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize para ejecutar código antes de ejecutar cada prueba
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup para ejecutar código después de que se hayan ejecutado todas las pruebas
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///Una prueba de insertarPedido
        ///</summary>
        [TestMethod()]
        public void insertarPedidoTest()
        {
            Pedido ped = new Pedido();// TODO: Inicializar en un valor adecuado
            ped.id_estado = 1;
            ped.id_pedido = 0;
            ped.montoTotal = 250;
            ped.usuario = 3;
            ped.fecha = DateTime.Now;
            ped.horaEntrega = DateTime.Now;
            ped.horaPedido = DateTime.Now;
            ped.descrip = "sin descrip";

            List<ProductoXpedido> listProdXped = new List<ProductoXpedido>(); // TODO: Inicializar en un valor adecuado
            ProductoXpedido pxp = new ProductoXpedido();
            pxp.cantidad = 1;
            //pxp.id_producto = 1;
            pxp.id_tamaño = 3;
            pxp.precio = 50;

            listProdXped.Add(pxp);

            PedidoDAO.insertarPedido(ped, listProdXped);
            //Assert.Inconclusive("Un método que no devuelve ningún valor no se puede comprobar.");
        }
    }
}
