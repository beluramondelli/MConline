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
        GLatLng latlong = new GLatLng(-31.427911973080185, -64.19708881378175);
        GMapType.GTypes maptype = GMapType.GTypes.Normal;

        GLatLng latlongPE = new GLatLng(-31.428868653407015, -64.18533939719197);
           GMap2.setCenter(latlongPE, 13, maptype);

               GMarker marker = new GMarker(latlongPE);
               string strMarker = "<div style='width: 100px; height: 100px'><b>" +
                      "<span style='color:#ff7e00; fontsize: small'><br>" +
                      "  Chacabuco 1010,  <br /> Plaza España <br />" +
                      "Tel: 0351 4589754 <br /> </div>";
               GInfoWindow window = new GInfoWindow(marker, strMarker, true);
               GMap2.Add(window);
                //GMap2.addInfoWindow(window);

               GLatLng latlongGP = new GLatLng(-31.415886264053487, -64.18685752749444);
               GMap2.setCenter(latlongGP, 13, maptype);
               GMarker marker1 = new GMarker(latlongGP);
               string strMarker1 = "<div style='width: 100px; height: 100px'><b>" +
                      "<span style='color:#ff7e00; fontsize: small'><br>" +
                      "  General Paz 2345,  <br /> Zona Centro <br />" +
                      "Tel: 0351-4584563 <br /> </div>";
               GInfoWindow window1 = new GInfoWindow(marker1, strMarker1, true);
               GMap2.Add(window1);       
                //GMap2.addInfoWindow(window1);

               GLatLng latlong25M = new GLatLng(-31.415794703445368, -64.1808601081371);
               GMap2.setCenter(latlong25M, 13, maptype);
               GMarker marker2 = new GMarker(latlong25M);
               string strMarker2 = "<div style='width: 120px; height: 100px'><b>" +
                      "<span style='color:#ff7e00; FontSize:Small'><br>" +
                      "  25 de mayo 70,  <br /> Zona Centro, Peatonal <br />" +
                      "Tel: 0351-459783 <br /> </div>";
               GInfoWindow window2 = new GInfoWindow(marker2, strMarker2, true);
               GMap2.Add(window2);
                //GMap2.addInfoWindow(window2);

               GLatLng latlongN = new GLatLng(-31.37247652018589, -64.22956365942952);
               GMap2.setCenter(latlongN, 13, maptype);
               GMarker marker3 = new GMarker(latlongN);
               string strMarker3 = "<div style='width: 120px; height: 100px'><b>" +
                      "<span style='color:#ff7e00; fontsize: small'><br>" +
                      "  Av. Rafael Nuñez 3987,  <br /> Zona Cerro de las rosas <br />" +
                      "Tel: 0351-457834<br /> </div>";
               GInfoWindow window3 = new GInfoWindow(marker3, strMarker3, true);
               GMap2.Add(window3);
                //GMap2.addInfoWindow(window3);

               GLatLng latlongNu = new GLatLng(-31.36111204525011, -64.23795617818827);
               GMap2.setCenter(latlongN, 13, maptype);
               GMarker marker4 = new GMarker(latlongNu);
               string strMarker4 = "<div style='width: 120px; height: 100px'><b>" +
                      "<span style='color:#ff7e00; fontsize: small'><br>" +
                      "  Av. Rafael Nuñez 4987,  <br /> Zona Cerro de las rosas <br />" +
                      "Tel: 0351-678544<br /> </div>";
               GInfoWindow window4 = new GInfoWindow(marker4, strMarker4, true);
               GMap2.Add(window4);
            //GMap2.addInfoWindow(window4);

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