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
						<%@include file="dbcon.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="swiper-container hero-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide hero-content-wrap" style="width: 867px;background-color: #007bff73;">
			<div><center>
				<form action="donatetoys1.jsp" method="post" enctype="multipart/form-data">
				<br><br>
				<h1>Donate Toys</h1>
				<br>
				<table>
				<tr><td style="margin-bottom: 30px;"><h4>Select Trust</h4></td></tr>
				<tr><td><select name="tname" required style="margin-bottom: 30px;">
				<%
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(" select * from trust ");
				while(rs.next()){%>
				<option value="<%=rs.getString(2)%>"><%=rs.getString(2)%></option>
				<%}%>
				</select></td></tr>
				<tr><td><input type="text" name="quantity" placeholder="Enter No. of Toys" required style="margin-bottom: 30px;"></td></tr>
				<tr><td><input type="text" name="address" placeholder="Enter Address" required style="margin-bottom: 30px;"></td></tr>
				<tr><td style="margin-bottom: 30px;"><h4>Upload Image</h4></td></tr>
				<tr><td><input type="file" name="image" placeholder="Choose Image" required style="margin-bottom: 30px;"></td></tr>			
				</table>
				<tr><td><input type="submit" value="Donate" style="margin-bottom: 30px;"></td></tr>
				<br><br><br>
				</form>
				</center></div>
            </div>
		</div>
	</div>

<%@include file="footer.jsp"%>