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
				<form action="donatemoney1.jsp" method="post">
				<br><br>
				<h1>Donate Money</h1>
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
				<tr><td style="margin-bottom: 30px;"><h4>Select Card Type</h4></td></tr>
				<tr><td><select name="cardname" required style="margin-bottom: 30px;">
				<option value="MasterCard">Master Card</option>
				<option value="Mastero">Mastero</option>
				<option value="VISA">VISA</option>
				<option value="Rupay">Rupay</option>
				</select></td></tr>
				<tr><td style="margin-bottom: 30px;"><h4>Select Bank</h4></td></tr>
				<tr><td><select name="bankname" required style="margin-bottom: 30px;">
				<option value="SBI">SBI</option>
				<option value="ICICI">ICICI</option>
				<option value="HDFC">HDFC</option>
				<option value="Axis">Axis</option>
				<option value="IDBI">IDBI</option>
				<option value="BOI">BOI</option>
				</select></td></tr>
				<tr><td><input type="text" name="oname" placeholder="Enter Card Holder Name" required style="margin-bottom: 30px;"></td></tr>
				<tr><td><input type="text" name="expiry" placeholder="Enter Expiry (MM/YY)" required style="margin-bottom: 30px;"></td></tr>				
				<tr><td><input type="number" name="cvv" placeholder="Enter CVV" required style="margin-bottom: 30px;"></td></tr>				
				<tr><td><input type="number" name="amount" placeholder="Enter Amount" required style="margin-bottom: 30px;"></td></tr>				
				</table>
				<tr><td><input type="submit" value="Pay" style="margin-bottom: 30px;"></td></tr>
				<br><br><br>
				</form>
				</center></div>
            </div>
		</div>
	</div>

<%@include file="footer.jsp"%>