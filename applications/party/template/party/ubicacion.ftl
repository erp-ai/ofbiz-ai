<!-- <div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3770.1993201135147!2d-98.28901218455063!3d19.098909887074864!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85cfc5e001252c5b%3A0xac5529ef9b0084bb!2sCuautlancingo%2C%20Pue.!5e0!3m2!1ses!2smx!4v1611874521892!5m2!1ses!2smx" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
</div> -->

<html>
  <head>
    <meta charset="utf-8">
  </head>

  <body>   
    <script>
        if (navigator.geolocation){
            navigator.geolocation.getCurrentPosition(maps);
        }
        else{
            alert("Error");
        }

        function maps(geolocationPosition){

            let coords = geolocationPosition.coords;
            //var coords = geolocationPosition.coords;
            //document.getElementById("mymaps").innerHTML = coords.latitude + coords.longitude;
            //console.log(geolocationPosition);
            //document.getElementById("mymaps").innerHTML = "https://www.google.com/maps/@"+coords.latitude+","+coords.longitude+",20z"; 
            
            
            //var lmapa = toString(coords.latitude+","+coords.longitude+",18z");

            //document.getElementById("id").href="https://www.google.com/maps/@"+lmapa;
            document.getElementById("id").href="https://www.google.com/maps/@"+coords.latitude+","+coords.longitude+",18z";
            document.getElementById("id").target = "_blank";
            /*
            document.getElementById("id").innerHTML=`
            <a href="https://www.google.com/maps/@${coords.latitude},${coords.longitude},18z">Abrir</a>
            `;*/
           }                 
    </script>
    
    <a id="id" href="https://www.google.com">Maps</a>
  </body>
</html>