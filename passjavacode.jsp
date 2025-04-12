<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>       
<% 
String userId=request.getParameter("uId");
String oldPassword=request.getParameter("opwd");
String nPassword=request.getParameter("npwd");
String cNPassword=request.getParameter("cnpwd");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","DAga8989");
PreparedStatement st=connection.prepareStatement("select * from sturent where id=? and password=?");
st.setString(1,userId);
st.setString(2,oldPassword);
ResultSet rs=st.executeQuery();
if(rs.next())
{
    if(nPassword.equals(cNPassword))
    {
  PreparedStatement st1=connection.prepareStatement("update sturent set password=? whereid=?");
  st1.setString(1,nPassword);
  st1.setString(2,userId);
  st1.executeUpdate();
  response.sendRedirect("login.jsp");
    }
    else
    {
    System.out.println("new password and confirm new password doesnt match");
    }
}
    else{
    System.out.println("invalid id/old password");

}

%>