<%-- 
    Document   : index
    Created on : Jul 25, 2015, 2:40:34 PM
    Author     : nhuongnm
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=utf8" pageEncoding="utf8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page trimDirectiveWhitespaces="true" %>

<h2>HOME</h2>

<style type="text/css">
    div#map_container{
        width:100%;
        height:350px;
    }
</style>
<script type="text/javascript"
src="http://maps.googleapis.com/maps/api/js?key=${gmap_api_key}&callback=initMap"></script>

<script type="text/javascript">
    function loadMap() {
        var markerLat, markerLong;
        markerLat = [21.0301486, 105, 21.0266565, 21.0316599];
        markerLong = [105.7888569, 105.7880259, 105.786673];
        var latlng = new google.maps.LatLng(markerLat[0], markerLong[0]);
        var myOptions = {
            zoom: 14,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_container"), myOptions);


        //   var marker = new google.maps.Marker({
        //     position: latlng,
        //   map: map,
        //  title:"My COMPANY!"
        // });
        var infowindow = new google.maps.InfoWindow({
            content: ''
        });
        var address = "abc";
        var marker, i;
        for (i = 0; i < markerLat.length; i++) {
            marker = new google.maps.Marker({
                position: new google.maps.LatLng(markerLat[i], markerLong[i]),
                map: map,
                title: "My COMPANY!",
                icon: 'http://maps.google.com/mapfiles/ms/icons/yellow.png',
                address: address,
                animation: google.maps.Animation.DROP
            });
            bindInfoWindow(marker, map, infowindow, "<p>" + "Locations[i].descr" + "</p>", "Locations[i].title");

        }

    }

    function bindInfoWindow(marker, map, infowindow, html, Ltitle) {
        google.maps.event.addListener(marker, 'mouseover', function () {
            infowindow.setContent(html);
            infowindow.open(map, marker);
        });
        google.maps.event.addListener(marker, 'mouseout', function () {
            infowindow.close();

        });
    }
</script>

<body onload="loadMap()">
    <div id="map_container"></div>
</body>
