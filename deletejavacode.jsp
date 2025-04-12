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
PreparedStatement st1=connection.prepareStatement("delete from sturent where id=? and password=?");
st1.setString(1,userId);
st1.setString(2,password);
st1.executeUpdate();
response.sendRedirect("home.jsp");

}
else
{
response.sendRedirect("deleteaccount.jsp");
}

%>