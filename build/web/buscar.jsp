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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="Sistema medico" />
<meta name="description" content="Sistema medico" />
<meta name="author" content="Equipo Naranja" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>Buscador</title>

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
 
<div class="wrapper">

<div class="bg-overlay-black-60 parallax" style="background-image: url(images/bg/03.png);">

<!--=================================
 preloader -->
 
<div id="pre-loader">
    <img src="images/pre-loader/loader-01.svg" alt="">
</div>

<!--=================================
 preloader -->

 
<!--=================================
 Signup-->

<section class="section-transparent page-section-pb">
  <div class="container">
     <div class="row justify-content-center">
       <div class="col-lg-6 col-md-8">
       <div class="logo text-center mb-30 mt-30">
           <a href="index-01.html"><img class="logo-small" id="logo_img" src="images/logo.png" alt="logo"> </a>
         </div>
        <div class="login-bg clearfix">
           <div class="login-title"> 
             <h2 class="text-white mb-0">Ingresa los datos</h2>
            </div>
             <div class="login-form">
               <div class="row">
                   <form action="pQuery" method="post">
                 <div class="section-field mb-10">
                   <label class="mb-10" for="name">Expediente</label>
                     <input id="expediente" class="web form-control" type="number" placeholder="Expediente" name="expediente">
                  </div>
                   <input class="button" type="submit" value="Buscar">
                   </form>
                </div>
             </div>
           </div>
        </div>
      </div>
  </div>
</section>

<!--=================================
 Signup-->

 </div>
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