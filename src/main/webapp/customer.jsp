<!DOCTYPE html>
<html lang="en">
<head>
    <title>Charity Online System</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- ElegantFonts CSS -->
    <link rel="stylesheet" href="css/elegant-fonts.css">

    <!-- themify-icons CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="site-header">
        <div class="nav-bar">
            <div class="container">
                <div class="row">
                    <div class="col-12 d-flex flex-wrap justify-content-between align-items-center">
                        <div class="site-branding d-flex align-items-center">
                           <a class="d-block" href="index.html" rel="home"><img class="d-block" src="images/logo.png" alt="logo"></a>
                        </div>
						<%@include file="header.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="swiper-container hero-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide hero-content-wrap">
                <div><center>
				<form action="insert.jsp" method="post" style="background-color:#FF8C00;">
				<br><br>
				<h1>Donor Login</h1>
				<br>
				<table>
				<input type="hidden" name="role" value="6">
				<tr><td><input type="email" name="email" placeholder="Enter user email" required style="margin-bottom: 30px;"></td></tr>
				<tr><td><input type="password" name="password" placeholder="Enter password" required style="margin-bottom: 30px;"></td></tr>				
				</table>
				<tr><td><input type="submit" value="Login" style="margin-bottom: 30px;"></td></tr>
				<h2>Register? <a href="customerreg.jsp">Click Here</a></h2>
				<br><br><br>
				</form>
				</center></div>
            </div>
		</div>
	</div>

<%@include file="footer.jsp"%>