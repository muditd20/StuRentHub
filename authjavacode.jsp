<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>       
<% 
    
String userId=request.getParameter("uId");
String password=request.getParameter("pwd");
String post=request.getParameter("post");   

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","DAga8989");
PreparedStatement st=connection.prepareStatement("select * from authlogintab where userid=? and password=? and post=?");
st.setString(1,userId);
st.setString(2,password);
st.setString(3,post);
ResultSet rs=st.executeQuery();
if(rs.next())
{
if(post.equalsIgnoreCase("admin"))
    {
response.sendRedirect("admindashboard.jsp");
    }
}
else
{
response.sendRedirect("auth.jsp");
}
%>