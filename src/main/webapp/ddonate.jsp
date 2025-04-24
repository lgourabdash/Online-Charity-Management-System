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
                           <!--<a class="d-block" href="index.html" rel="home"><img class="d-block" src="images/logo.png" alt="logo"></a>-->
                        </div>
						<%@include file="dheader.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="swiper-container hero-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide hero-content-wrap" style="width: 867px;background-color: #007bff73;">
			
			<!--<center>
			<h1 style="margin-top: 30px;margin-bottom: 30px;"><a href="donatemoney.jsp">Money</a></h1>
			<h1 style="margin-top: 30px;margin-bottom: 30px;"><a href="donatefood.jsp">Food</a></h1>
			<h1 style="margin-top: 30px;margin-bottom: 30px;"><a href="donateclothes.jsp">Clothes</a></h1>
			<h1 style="margin-top: 30px;margin-bottom: 30px;"><a href="donatetoys.jsp">Toys</a></h1>
			</center>-->
			
			<center style="margin-top: 50px;margin-bottom: 50px;">
			<table>
			<tr>
			<td><a href="donatemoney.jsp"><img src="images/donmoney.jpg" style="width: 300px;height: 200px;margin-left: 50px;margin-bottom: 50px;"></a></td>
			<td><a href="donatefood.jsp"><img src="images/donfood.jpg" style="width: 300px;height: 200px;margin-left: 50px;margin-bottom: 50px;"></a></td>
			</tr>
			<tr>
			<td><a href="donateclothes.jsp"><img src="images/doncloth.jpg" style="width: 300px;height: 200px;margin-left: 50px;margin-bottom: 50px;"></a></td>
			<td><a href="donatetoys.jsp"><img src="images/dontoy.jpg" style="width: 300px;height: 200px;margin-left: 50px;margin-bottom: 50px;"></a></td>
			</tr>
			</table>
			</center>
			
            </div>
		</div>
	</div>

<%@include file="footer.jsp"%>