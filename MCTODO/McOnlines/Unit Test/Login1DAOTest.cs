using McDAO;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace Unit_Test
{
    
    
    /// <summary>
    ///Se trata de una clase de prueba para Login1DAOTest y se pretende que
    ///contenga todas las pruebas unitarias Login1DAOTest.
    ///</summary>
    [TestClass()]
    public class Login1DAOTest
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
        ///Una prueba de verificarUsuario
        ///</summary>
        [TestMethod()]
        public void verificarUsuarioTest()
        {
            string usu = "valentinaAndrea"; // TODO: Inicializar en un valor adecuado
            bool expected = true; // TODO: Inicializar en un valor adecuado
            bool actual;
            actual = Login1DAO.verificarUsuario(usu);
            Assert.AreEqual(expected, actual);
            //Assert.Inconclusive("Compruebe la exactitud de este método de prueba.");
        }

        /// <summary>
        ///Una prueba de verificarPasswd
        ///</summary>
        [TestMethod()]
        public void verificarPasswdTest()
        {
            string pass =  "157359"; // TODO: Inicializar en un valor adecuado
            bool expected = true; // TODO: Inicializar en un valor adecuado
            bool actual;
            actual = Login1DAO.verificarPasswd(pass);
            Assert.AreEqual(expected, actual);
            //Assert.Inconclusive("Compruebe la exactitud de este método de prueba.");
        }
    }
}
