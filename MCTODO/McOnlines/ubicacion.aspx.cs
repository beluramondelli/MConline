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
               GInfoWindowOptions windowOptions = new GInfoWindowOptions();
               GInfoWindow commonInfoWindow = new GInfoWindow(marker, "MC", windowOptions);
               GMap2.Add(commonInfoWindow);

        GMap2.Add(new GControl(GControl.extraBuilt.TextualCoordinatesControl));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    //protected string GMap2_Click(object s, GAjaxServerEventArgs e)
    //{

    //}
}