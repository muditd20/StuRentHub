<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>       
<% 
String userId=request.getParameter("uId");
String password=request.getParameter("pwd");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","DAga8989");
PreparedStatement st=connection.prepareStatement("select * from sturent where id=? and password=?");
st.setString(1,userId);
st.setString(2,password);
ResultSet rs=st.executeQuery();
if(rs.next())
{
Cookie ck=new Cookie("StuRent",userId);
ck.setMaxAge(1000000);
response.addCookie(ck);
session.setAttribute("MAN_SE",userId);
response.sendRedirect("customerdashboard.jsp");
}
else
{
response.sendRedirect("login.jsp");
}
%>