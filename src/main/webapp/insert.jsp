<%@include file="dbcon.jsp"%>
<%
Statement st = con.createStatement();
int x;
ResultSet rs;

String role = request.getParameter("role");
String name = request.getParameter("name");
String password = request.getParameter("password");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String yoe = request.getParameter("yoe");

if(role.equals("1")){
	x = st.executeUpdate("insert into customer (name,email,phone,password,address) values ('"+name+"','"+email+"','"+phone+"','"+password+"','"+address+"')");
	if(x!=0){
		response.sendRedirect("customer.jsp?Registration_Success");
	}else{
		response.sendRedirect("customerreg.jsp?Registration_Failed");
	}
}else if(role.equals("2")){
	x = st.executeUpdate(" insert into trust (name,email,password,phone,address,yoe) values ('"+name+"','"+email+"','"+password+"','"+phone+"','"+address+"','"+yoe+"') ");
	if(x!=0){
		response.sendRedirect("trust.jsp?Registration_Success");
	}else{
		response.sendRedirect("trustreg.jsp?Registration_Failed");
	}
}else if(role.equals("4")){
	if( name.equals("admin") && password.equals("admin") ){
		response.sendRedirect("adminhome.jsp?Login_Success");
	}else{
		response.sendRedirect("admin.jsp?Login_Failed");
	}
}else if(role.equals("5")){
	rs = st.executeQuery(" select * from trust where email='"+email+"' and password='"+password+"' ");
	if(rs.next()){
		session.setAttribute("temail", email);
		session.setAttribute("tname", rs.getString(2));
		response.sendRedirect("trusthome.jsp?Login_Success");
	}else{
		response.sendRedirect("trust.jsp?Login_Failed");
	}
}else if(role.equals("6")){
	rs = st.executeQuery(" select * from customer where email='"+email+"' and password='"+password+"' ");
	if(rs.next()){
		session.setAttribute("cemail", email);
		response.sendRedirect("customerhome.jsp?Login_Success");
	}else{
		response.sendRedirect("customer.jsp?Login_Failed");
	}
}
%>