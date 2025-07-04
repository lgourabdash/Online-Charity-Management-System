<%@include file="dbcon.jsp"%>
<%
Statement st = con.createStatement();
int x;
ResultSet rs;

String donor = (String) session.getAttribute("cemail");
MultipartRequest m=new MultipartRequest(request,"D:/Charity/src/main/webapp/images/");
String quantity = m.getParameter("quantity");
String address = m.getParameter("address");
String image = m.getFilesystemName("image");
String tname = m.getParameter("tname");

x = st.executeUpdate(" insert into toys (donor,quantity,address,image,tname) values ('"+donor+"','"+quantity+"','"+address+"','"+image+"','"+tname+"') ");
if(x!=0){
	response.sendRedirect("customerhome.jsp?Donation_Success");
}else{
	response.sendRedirect("donatetoys.jsp?Donation_Failed");
}
%>