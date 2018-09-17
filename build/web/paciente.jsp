<%@page import="components.PacienteInfo"%>
<%@page language="java" session="true" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.*"%>
        <%
            String username=(String)session.getAttribute("uname");
            if(username == null)
            {
              response.sendRedirect("index.html");  
            }else{ 
        %>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:useBean id="elBean" scope="session" class="components.PacienteInfo" />
<jsp:setProperty property="nombre" name="elBean"/>
<jsp:setProperty property="apellidos" name="elBean"/>
<jsp:setProperty property="amai" name="elBean"/>
<jsp:setProperty property="afiliacion" name="elBean"/>
<jsp:setProperty property="autoreporte" name="elBean"/>
<jsp:setProperty property="barthel" name="elBean"/>
<jsp:setProperty property="katz" name="elBean"/>
<jsp:setProperty property="lawton" name="elBean"/>
<jsp:setProperty property="edad" name="elBean"/>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="Sistema de salud" />
<meta name="description" content="Sistema de salud" />
<meta name="author" content="Equipo Naranja" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>Persona</title>

<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico" />

<!-- font -->
<link  rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,500,500i,600,700,800,900|Poppins:200,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900">
 
<!-- Plugins -->
<link rel="stylesheet" type="text/css" href="css/plugins-css.css" />

<!-- Typography -->
<link rel="stylesheet" type="text/css" href="css/typography.css" />

<!-- Shortcodes -->
<link rel="stylesheet" type="text/css" href="css/shortcodes/shortcodes.css" />

<!-- Style -->
<link rel="stylesheet" type="text/css" href="css/style.css" />

<!-- Responsive -->
<link rel="stylesheet" type="text/css" href="css/responsive.css" /> 
  
</head>

<body>
 
<div class="wrapper vertical-header">

<!--=================================
 preloader -->
 
<div id="pre-loader">
    <img src="images/pre-loader/loader-01.svg" alt="">
</div>

<!--=================================
 preloader -->

<!--=================================
 header -->
 
<div class="menu-responsive"><a href="#"> <b>Webster</b></a> <a class="but" href="#"><span class="ti-menu"></span> </a></div>

<header id="left-header" class="header vertical-menu">
 
<!--=================================
 mega menu -->

 <div class="menu">  
  <!-- menu start -->
   <nav id="menu" class="mega-menu">
    <!-- menu list items container -->
    <section class="menu-list-items">
     <div class="container"> 
      <div class="row"> 
       <div class="col-lg-12 col-md-12"> 
        <!-- menu logo -->
        <ul class="menu-logo">
            <li>
                <a href="homeD.jsp"><img class="logo-big" src="images/logo.png" alt="logo"> </a>
            </li>
        </ul>
        <!-- menu links -->
        <div class="menu-bar">
         <ul class="menu-links">

            <li class="active"><a href="paciente.jsp">Evaluacion Funcional </a></li>
            <li><a href="/pNutri.java">Evaluacion Nutrimental </a></li>
            <li><a href="cognitive.jsp"> NEvaluacion Cognitiva </a></li>
            <li><a href="fragil.jsp">Evaluacion de Fragilidad </a></li>
              
        </ul>
          </div>
        </div>
       </div>
      </div>
    </section>
   </nav>
  <!-- menu end -->
 </div> 

</header>

<!--=================================
 header -->


<!--=================================
 law-video -->

 <section class="law-video white-bg"> 
  <div class="container">
   <div class="row">
     <div class="col-md-12">
        <div class="theme-bg">
           <div class="row">
             <div class="col-lg-4">
               <div class="popup-video">
                 <img class="img-fluid full-width" src="images/about/01.png" alt="">  
                </div>  
             </div>
             <div class="col-lg-4">
                 <h2 class="mb-20 text-white"><jsp:getProperty name="elBean" property="nombre" /></h2>
               <p class="text-white"><jsp:getProperty name="elBean" property="apellidos" /></p>
             </div>
             <div class="col-lg-2 col-sm-6">
               <ul class="list list-unstyled text-white">
                   <li> <i>-</i>Edad: <jsp:getProperty name="elBean" property="edad" /></li>
                   <li> <i>-</i>AMAI: <jsp:getProperty name="elBean" property="amai" /> </li>
                   <li> <i>-</i>Afiliacion: <jsp:getProperty name="elBean" property="afiliacion" /> </li>
                   <li> <i>-</i> Cohabitacion: <jsp:getProperty name="elBean" property="cohabitacion" /> </li>
               </ul> 
             </div>
           </div>
        </div>
     </div>          
   </div>
 </div>
</section> 

<!--=================================
law-video -->

<!--=================================
Schedule Of -->

<section class="page-section-pt">
    <div class="container">
     <div class="row">
         <div class="col-md-12">
           <div class="section-title line center text-center">
            <h2 class="title">Evaluacion funcional</h2>
          </div>
        </div>
     </div>
      <div class="row">
       <div class="col-lg-12">
        <div class="table-medical table-responsive">
            <table class="table table-bordered table-striped">
              <thead>
                  <tr>
                      <th>
                          Pruebas Aplicadas
                      </th>
                      <th>
                          Resultado
                      </th>
                  </tr>
              </thead>
              <tbody>
                <tr>
                    <td>
                        Katz
                    </td>
                    <td>
                        <jsp:getProperty name="elBean" property="katz" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Barthel
                    </td>
                    <td>
                        <jsp:getProperty name="elBean" property="barthel" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Lawton-Brody
                    </td>
                    <td>
                        <jsp:getProperty name="elBean" property="lawton" />
                    </td>
                </tr>
              </tbody>
            </table>
           </div>
          </div>
                    <div class="container">
                        <a class="button button-border green mt-20" href="regFuncional.jsp"> Nueva Evaluacion </a>
                    </div>
      </div>
    </div>
  </section>
  
   <!--=================================
  Schedule Of -->
 
</div>

  

<div id="back-to-top"><a class="top arrow" href="#top"><i class="fa fa-angle-up"></i> <span>TOP</span></a></div>
 
<!--=================================
 jquery -->

<!-- jquery -->
<script src="js/jquery-3.3.1.min.js"></script>

<!-- plugins-jquery -->
<script src="js/plugins-jquery.js"></script>

<!-- plugin_path -->
<script>var plugin_path = 'js/';</script>
 
<!-- custom -->
<script src="js/custom.js"></script>

 
 
</body>
</html>
<% } %>
