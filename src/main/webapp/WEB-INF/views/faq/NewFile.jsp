<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:import url="./template/bootstrap.jsp"></c:import>
<!-- meta Data -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">


<title>Magnet - Minimal Portfolio Template</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Main css -->
<link rel="stylesheet" href="./resources/css/style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<!-- <link
	href="https://fonts.googleapis.com/css2?family=Orelega+One&display=swap"
	rel="stylesheet"> -->

<c:import url="./template/header.jsp"></c:import>

</head>
<body>

<!-- PRE LOADER -->

<div class="preloader">
     <div class="sk-spinner sk-spinner-wordpress">
          <span class="sk-inner-circle"></span>
     </div>
</div>

<!-- Navigation section  -->

<div class="navbar navbar-default navbar-static-top" role="navigation">
     <div class="container">

          <div class="navbar-header">
               <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
                    <span class="icon icon-bar"></span>
               </button>
               <a href="index.html" class="navbar-brand"><i class="fa fa-magnet"></i></a>
          </div>
          <div class="collapse navbar-collapse">
               <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.html">Projects</a></li>
                    <li><a href="about.html">Our Studio</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li class="active"><a href="contact.html">Contact</a></li>
               </ul>
          </div>

  </div>
</div>


<!-- Contact Section -->

<section id="contact">
     <div class="container">
          <div class="row">

               <div class="col-md-offset-1 col-md-10 col-sm-12">
                    <div class="section-title">
                         <h3>get in touch</h3>
                         <h2>The creative web & mobile studio and focused on brand identity, web development and social marketing.</h2>
                    </div>

                    <form action="#" method="post">
                         <div class="col-md-6 col-sm-6">
                              <input type="text" class="form-control" placeholder="Name">
                         </div>
                         <div class="col-md-6 col-sm-6">
                              <input type="email" class="form-control" placeholder="Email">
                         </div>
                         <div class="col-md-6 col-sm-6">
                              <input type="telephone" class="form-control" placeholder="Phone Number">
                         </div>
                         <div class="col-md-6 col-sm-6">
                              <select class="form-control">
                                   <option>Budget Select</option>
                                   <option>$1200 to $1600</option>
                                   <option>$2200 to $2400</option>
                                   <option>$2500 to $3800</option>
                              </select>
                         </div>
                         <div class="col-md-12 col-sm-12"> 
                              <textarea class="form-control" rows="5" placeholder="Project Details"></textarea>
                         </div>
                         <div class="col-md-3 col-sm-4">
                              <input type="submit" class="form-control" value="Send Message">
                         </div>
                    </form>
               </div>

          </div>
     </div>
</section>
<c:import url="./template/footer.jsp"></c:import>

</body>
</html>