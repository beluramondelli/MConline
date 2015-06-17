using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Principal : System.Web.UI.Page
{
 protected void Page_Load(object sender, EventArgs e)
        {
          
            setImage1();
            setImage2();
            setImage3();
        }
        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            setImage1();


        }

        private void setImage1()
        {
            if (ViewState["Image displayed1"] == null)
            {
                Image1.ImageUrl = "~/imagenes/1.jpg";
                ViewState["Image displayed1"] = 1;


            }
            else
            {


                int i = (int)ViewState["Image displayed1"];
                if (i == 13)
                {
                    Image1.ImageUrl = "~/imagenes/1.jpg";
                    ViewState["Image displayed1"] = 1;



                }
                else
                {
                    i = i + 1;
                    Image1.ImageUrl = "~/imagenes/" + i.ToString() + ".jpg";
                    ViewState["Image displayed1"] = i;

                }
            }
        }
        protected void Timer2_Tick(object sender, EventArgs e)
        {
            setImage2();
        }
        private void setImage2()
        {
            if (ViewState["Image displayed2"] == null)
            {
                Image2.ImageUrl = "~/imagenes/14.jpg";
                ViewState["Image displayed2"] = 14;

            }
            else
            {


                int j = (int)ViewState["Image displayed2"];
                if (j == 17)
                {
                    Image2.ImageUrl = "~/imagenes/14.jpg";
                    ViewState["Image displayed2"] = 14;

                }
                else
                {
                    j = j + 1;
                    Image2.ImageUrl = "~/imagenes/" + j.ToString() + ".jpg";
                    ViewState["Image displayed2"] = j;


                }
            }
        }

        protected void Timer3_Tick1(object sender, EventArgs e)
        {
            setImage3();
        }
        private void setImage3()
        {
            if (ViewState["Image displayed3"] == null)
            {
                Image3.ImageUrl = "~/imagenes/18.jpg";
                ViewState["Image displayed3"] = 18;

            }
            else
            {


                int k = (int)ViewState["Image displayed3"];
                if (k == 19)
                {
                    Image3.ImageUrl = "~/imagenes/18.jpg";
                    ViewState["Image displayed3"] = 18;

                }
                else
                {
                    k = k + 1;
                    Image3.ImageUrl = "~/imagenes/" + k.ToString() + ".jpg";
                    ViewState["Image displayed3"] = k;


                }
            }
        }
    }


    
