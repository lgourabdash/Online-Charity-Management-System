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
						<%@include file="aheader.jsp"%>
						<%@include file="dbcon.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="swiper-container hero-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide hero-content-wrap" style="width: 867px;background-color: #007bff73;">
			
			<center style="margin-top: 100px;margin-bottom: 318px;">
			<h1>Trust Details</h1>
			<table border="2">
			<tr>
			<th><center style="width: 150px;">Name</center></th>
			<th><center style="width: 150px;">Email ID</center></th>
			<th><center style="width: 150px;">Phone Number</center></th>
			<th><center style="width: 150px;">Address</center></th>
			<th><center style="width: 150px;">YOE</center></th>
			</tr>
			<%
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(" select * from trust ");
			while(rs.next()){%>
				<tr>
				<td><center style="width: 150px;"><%=rs.getString(2)%></center></td>
				<td><center style="width: 150px;"><%=rs.getString(3)%></center></td>
				<td><center style="width: 150px;"><%=rs.getString(5)%></center></td>
				<td><center style="width: 150px;"><%=rs.getString(6)%></center></td>
				<td><center style="width: 150px;"><%=rs.getString(7)%></center></td>
				</tr>
			<%}%>
			</table></center>
			
            </div>
		</div>
	</div>

<%@include file="footer.jsp"%>