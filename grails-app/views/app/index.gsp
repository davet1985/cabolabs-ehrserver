<html>
  <head>
    <title>Desktop</title>
    <asset:link rel="stylesheet" href="main.css" type="text/css" />
    <style type="text/css">
      html,body{
        height:100%;
        background-color:#efefef;
        font-family: arial;
        background-image: -moz-linear-gradient(center top, #ddd, #efefef);
        background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #ddd), color-stop(1, #efefef));
        background-image: linear-gradient(top, #ddd, #efefef);
        filter: progid:DXImageTransform.Microsoft.gradient(startColorStr = '#dddddd', EndColorStr = '#efefef');
        background-repeat: no-repeat;
        height: 100%;
        /* change the box model to exclude the padding from the calculation of 100% height (IE8+) */
        -webkit-box-sizing: border-box;
           -moz-box-sizing: border-box;
                box-sizing: border-box;
        
        margin: 0;
        padding: 0;
        padding-bottom: 15px;
      }
      #wrapper{
        height:100%;
        width:100%;
        display:table;
        vertical-align:middle;
      }
      #outer {
        display:table-cell;
        vertical-align:middle;
      }
      #formwrap {
        position:relative;
        left:50%;
        float:left;
      }
      #inner {
        border: 2px solid #999;
        padding: 15px 0 5px 0;
        position: relative;
        text-align: center;
        left: -50%;
        background-color: #fff;
        -moz-box-shadow:    2px 3px 5px 1px #ccc;
        -webkit-box-shadow: 2px 3px 5px 1px #ccc;
        box-shadow:         2px 3px 5px 1px #ccc;
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        border-radius: 8px;
        
        width: 540px;
      }
      
      h1 {
        background-color: #ddd;
      }
      
      .error {
        /* TODO: meter icono de error ! */
        border: 1px solid #f00;
        background-color: #f99;
        padding: 2px;
        margin-bottom: 3px;
      }
      .error ul {
        list-style:none;
        margin:0;
        padding:0;
      }
      img {
        border: 0px;
      }
      

      /* Test mostrar icon */
      #index_menu a {
        background-repeat: no-repeat;
        background-position: 4px 4px;
        
        padding-left: 56px; /* ancho de la imagen de fondo + un margen */
        padding-right: 8px;
        padding-top: 4px;
        padding-bottom: 4px;
        
        margin: 0 20px 15px 20px;
        
        /*height: 48px; no funciona */
        line-height: 48px; /* deja el texto en el medio vertical del icono de fondo */
        
        /*float: left;*/
        display: inline-block;
        /*border: 1px solid #ddd;*/
      }
      
      .access:hover {
        background-color: #ddddff;
      }
      
      #panel {
        overflow: visible;
        /*width: 600px;*/
        display: inline-block;
      }
    </style>
    <!--[if lt IE 8]>
      <style type="text/css">
        #formwrap {top:50%}
        #inner {top:-50%;}
      </style>
     <![endif]-->
     <!--[if IE 7]>
       <style type="text/css">
        #wrapper{
         position:relative;
         overflow:hidden;
        }
      </style>
    <![endif]-->
    
    <g:javascript library="jquery" plugin="jquery"/>

    <script type="text/javascript">
    $(document).ready(function() {
      //$("#user").focus();
    });
    </script>
    
  </head>
  <body>
    <div id="wrapper">
      <div id="outer">
        <div id="formwrap">
          <div id="inner">
          
            <a href="http://cabolabs.com" target="_blank"><asset:image src="cabolabs_logo.png" /></a>
          
            <h1 align="center"><g:message code="desktop.app" /></h1>
            
            <g:if test="${flash.message}">
              <div class="error"><g:message code="${flash.message}" /></div>
            </g:if>

            <div id="index_menu">
              <g:link controller="person" action="list" class="access_icon"><g:message code="person.list.title" /></g:link>
              <g:link controller="ehr" action="list" class="ehr_icon"><g:message code="desktop.ehrs" /></g:link>
              <g:link controller="contribution" action="list" class="contributions_icon"><g:message code="desktop.contributions" /></g:link>
              <a href="#" class="directory_icon"><g:message code="desktop.directory" /></a>
              <g:link controller="query" action="list" class="query_icon"><g:message code="desktop.queries" /></g:link>
              <g:link controller="indexDefinition" action="list" class="indexes_icon"><g:message code="desktop.indexes" /></g:link>
            </div>
            <div style="clear: both"></div>
            
          </div>
        </div>
      </div>
    </div>
  </body>
</html>