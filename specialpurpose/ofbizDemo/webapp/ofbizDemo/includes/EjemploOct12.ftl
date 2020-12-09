<html>
  <head>
        <title>
          AguaInmaculada
        </title>

        <style type="text/css"> 
          .encabezado{
                width: 100%;
                height: 100px;
                background-color: #FA58F4;       
          }

          .contenido{
                width: 50%;
                height: 780px;
                background: #FAFAFA;
                margin-left: 25%;
                margin-right: 25%;
                margin-top: 30px;
                margin-bottom: 0;
          }
        </style>
  </head>

  <body>
   <#if security.hasEntityPermission("ORDERMGR", "_CREATE", session) || security.hasEntityPermission("ORDERMGR", "_PURCHASE_CREATE", session)>
    <div class="encabezado">
         <img align="left" src="https://i.pinimg.com/originals/9a/c2/df/9ac2dfd58e4ab3e0a5425a7749b7a808.png" width="200px" height="80px" >           
         <h3 align="right" ><a href="<@ofbizUrl>main</@ofbizUrl>">  &nbsp; Main  &nbsp;  </a></h3>
         <h1 align="center" style="color:#FFFFFF;">Registro de prospectos</h1>        
        </div>
 
        <div class="contenido">
        <form method="post" action="<@ofbizUrl>createPostalAddress</@ofbizUrl>" name="checkoutsetupform">
                    <p aling="center">   
                      <br>
                      <span class="label">Nombre:</span>
                      <input type="text" size="30" maxlength="60" name="toName" value="${toName!}"/>
                    
                      <br>
                      <span class="label">Apellido:</span>
                      <input type="text" size="30" maxlength="60" name="attnName" value="${parameters.attnName!}"/>
            
                      <br>
                      <span class="label">Direccion:</span>
                      <input type="text" size="30" maxlength="30" name="address2" value="${parameters.address2!}"/>
                    
                      <br>
                      <span class="label">Pais:</span>
                      <select name="countryGeoId">
                        ${screens.render("component://common/widget/CommonScreens.xml#countries")}
                      </select>
                   
                      <br>
                      <span class="label">Estado:</span>
                      <select name="stateProvinceGeoId">
                        <option value=""></option>
                        ${screens.render("component://common/widget/CommonScreens.xml#states")}
                      </select>
                      
                      <br>
                      <span class="label">Ciudad:</span>
                      <input type="text" size="30" maxlength="30" name="city" value="${parameters.city!}"/>
                   
                      <br>
                      <span class="label">Codigo postal:</span>
                      <input type="text" size="12" maxlength="10" name="postalCode" value="${parameters.postalCode!}"/>
                    
                      <br>
                 	  <input type="submit" value="Enviar" />    
                    </p>                                     

        </form>
      </div>
    <#else>
    <h3>${uiLabelMap.OrderViewPermissionError}</h3>
   </#if>
  </body>
</html>        