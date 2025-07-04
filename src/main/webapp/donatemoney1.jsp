<%@include file="dbcon.jsp"%>
<%
Statement st = con.createStatement();
int x;
ResultSet rs;

String donor = (String) session.getAttribute("cemail");
String cardname = request.getParameter("cardname");
String bankname = request.getParameter("bankname");
String oname = request.getParameter("oname");
String expiry = request.getParameter("expiry");
String cvv = request.getParameter("cvv");
String amount = request.getParameter("amount");
String tname = request.getParameter("tname");

x = st.executeUpdate(" insert into money (donor,cardname,bankname,oname,expiry,cvv,amount,tname) values ('"+donor+"','"+cardname+"','"+bankname+"','"+oname+"','"+expiry+"','"+cvv+"','"+amount+"','"+tname+"') ");
if(x!=0){
	response.sendRedirect("customerhome.jsp?Payment_Success");
}else{
	response.sendRedirect("donatemoney.jsp?Payment_Failed");
}
%>