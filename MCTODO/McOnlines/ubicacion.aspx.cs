using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;

public partial class ubicacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GLatLng latlong = new GLatLng(-31.396656575398424, -64.18853659033772);
        GMapType.GTypes maptype = GMapType.GTypes.Normal;

        GLatLng latlon = new GLatLng(-31.428868653407015, -64.18533939719197);
        GMap2.setCenter(latlong, 13, maptype);
        GMarker icono = new GMarker(latlon);
        GInfoWindow window = new GInfoWindow(icono,"<div  style='color:red'><b> <b>MC DONALD'S</b> <br /> Chacabuco 1010, Plaza España <br />  Tel: 0351 4589754 <br /> </div>", false, GListener.Event.mouseover);
        GMap2.Add(window);



        GLatLng latlongGP = new GLatLng(-31.415886264053487, -64.18685752749444);
        GMap2.setCenter(latlong, 13, maptype);
        GMarker marker1 = new GMarker(latlongGP);
        GInfoWindow window1 = new GInfoWindow(marker1, "<div  style='color:red'><b> <b>MC DONALD'S</b> <br /> General Paz 2345, Zona Centro <br />  Tel: 0351 4589736 <br /> </div>", false, GListener.Event.mouseover);
        GMap2.Add(window1);


        GLatLng latlong25M = new GLatLng(-31.415794703445368, -64.1808601081371);
        GMap2.setCenter(latlong, 13, maptype);
        GMarker marker2 = new GMarker(latlong25M);
        GInfoWindow window2 = new GInfoWindow(marker2, "<div  style='color:red'><b> <b>MC DONALD'S</b> <br />25 de mayo 70, Zona Centro <br />  Tel: 0351 6089736 <br /> </div>", false, GListener.Event.mouseover);
        GMap2.Add(window2);


        GLatLng latlongN = new GLatLng(-31.37247652018589, -64.22956365942952);
        GMap2.setCenter(latlong, 13, maptype);
        GMarker marker3 = new GMarker(latlongN);
        GInfoWindow window3 = new GInfoWindow(marker3, "<div  style='color:red'><b> <b>MC DONALD'S</b> <br />  Av. Rafael Nuñez 3987,  Cerro de las rosas <br />  Tel: 0351 5678736 <br /> </div>", false, GListener.Event.mouseover);
        GMap2.Add(window3);


        GLatLng latlongNu = new GLatLng(-31.36111204525011, -64.23795617818827);
        GMap2.setCenter(latlong, 13, maptype);
        GMarker marker4 = new GMarker(latlongNu);
        GInfoWindow window4 = new GInfoWindow(marker4, "<div  style='color:red'><b> <b>MC DONALD'S</b> <br />  Av. Rafael Nuñez 4987,  Cerro de las rosas <br />  Tel: 0351 5678734 <br /> </div>", false, GListener.Event.mouseover);
        GMap2.Add(window4);

         GLatLng latlongNC = new GLatLng(-31.412677011411198, -64.20485783219334);
        GMap2.setCenter(latlong, 13, maptype);
        GMarker marker5 = new GMarker(latlongNC);
        GInfoWindow window5 = new GInfoWindow(marker5, "<div  style='color:red'><b> <b>MC DONALD'S</b> <br />  Duarte quiros 1549,  Nuevo Centro shopping <br />  Tel: 0351 565698 <br /> </div>", false, GListener.Event.mouseover);
        GMap2.Add(window5);

     

        GMarkerOptions markerOptions = new GMarkerOptions();
               markerOptions.clickable = true;
               
                
               

        GMap2.Add(new GControl(GControl.extraBuilt.TextualCoordinatesControl));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    //protected string GMap2_Click(object s, GAjaxServerEventArgs e)
    //{

    //}
}