<%@page language="java" session="true" contentType="text/html" pageEncoding="UTF-8"%>
        <%
            String username=(String)session.getAttribute("uname");
            if(username == null)
            {
              response.sendRedirect("index.html");  
            }else{ %>
            <!DOCTYPE html>
    <html lang="en">
    <head>
    <jsp:useBean id="elBean" scope="session" class="components.PacienteInfo" />
    <jsp:setProperty property="expediente" name="elBean"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="Sistema de salud" />
    <meta name="description" content="Sistema de salud" />
    <meta name="author" content="Equipo Naranja" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Inicio</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="images/favicon.ico" />

    <!-- font -->
    <link  rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,500,500i,600,700,800,900|Poppins:200,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Dosis:300,400,500,600,700,800">

    <!-- Plugins -->
    <link rel="stylesheet" type="text/css" href="css/plugins-css.css" />

    <!-- revoluation -->
    <link rel="stylesheet" type="text/css" href="revolution/css/settings.css" media="screen" />

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

        <div class="wrapper"><!-- wrapper start -->

        <!--=================================
         preloader -->

        <div id="pre-loader">
            <img src="images/pre-loader/loader-01.svg" alt="">
        </div>

        <!--=================================
         preloader -->


        <!--=================================
         header -->

         <header id="header" class="header default">

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
                          <a href="index.html"><img class="logo-big" src="images/logo.png" alt="logo"> </a>
                      </li>
                  </ul>
                  <!-- menu links -->
                  <div class="menu-bar">
                   <ul class="menu-links">

                      <li class="active"><a href="homeD.jsp">Inicio </a></li>
                      <li class="active"><%= session.getAttribute( "uname" ) %></li>
                      <li><a href="logout.jsp"> Cerrar Sesion </a></li>

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
 Register-->

<section class="white-bg page-section-ptb o-hidden">
  <div class="container">
    <div class="row"> 
       <div class="col-lg-12 col-md-12">
         <div class="section-title text-center">
            <h2 class="title-effect">Ingrese nueva evaluacion Funcional</h2>
          </div>
      </div>
    </div>
    <div class="row justify-content-center">
      <div class="col-lg-8 col-md-10">
        <div id="register-form" class="register-form">
            <form action="addFuncional.jsp" method="post">
           <div class="row">
           <div class="section-field col-md-6">
               <input type="hidden" name="expediente" value="<jsp:getProperty name="elBean" property="expediente" />">
             <label>Escala de Katz</label>
              <div class="field-widget">
                <input type="number" class="form-control" placeholder="Katz" name="katz">
              </div>  
            </div> 
            <div class="section-field col-md-6">
             <label>Barthel</label>
             <div class="field-widget">
              <input type="number" class="form-control" placeholder="Barthel" name="bartel">
              </div>
             </div>
            </div>
           <div class="section-field">
             <label>Lawton-Brody</label>
              <div class="field-widget">
               <input class="form-control" type="number" placeholder="Lawton" name="lawton">
              </div> 
            </div>
                <input class="button" type="submit" value="Registrar">
                 </form>
         </div>
      </div>
    </div>
</section>

<!--=================================
 Register-->
  </div><!-- wrapper End -->


        <div id="back-to-top"><a class="top arrow" href="#top"><i class="fa fa-angle-up"></i> <span>TOP</span></a></div>

        <!--=================================
         javascripts -->

        <!-- jquery -->
        <script src="js/jquery-3.3.1.min.js"></script>

        <!-- All plugins -->
        <script src="js/plugins-jquery.js"></script>

        <!-- Plugins path -->
        <script>var plugin_path = 'js/';</script>

        <!-- REVOLUTION JS FILES -->
        <script src="revolution/js/jquery.themepunch.tools.min.js"></script>
        <script src="revolution/js/jquery.themepunch.revolution.min.js"></script>

        <!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
        <script src="revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script src="revolution/js/extensions/revolution.extension.video.min.js"></script>

        <!-- revolution custom --> 
        <script src="revolution/js/revolution-custom.js"></script> 

        <!-- custom -->
        <script src="js/custom.js"></script>

        </body>
    </html>
    <% } %>
