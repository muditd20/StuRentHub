<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
       
<% 
String userId=request.getParameter("uId");
String password=request.getParameter("pwd");
String fullName=request.getParameter("fNm");
String mailId=request.getParameter("mailid");
String contact=request.getParameter("cont");
String dOB=request.getParameter("dob");
String gender=request.getParameter("gen");
String address=request.getParameter("addr");
String city=request.getParameter("city");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","DAga8989");
PreparedStatement st=connection.prepareStatement("insert into sturent values(?,?,?,?,?,?,?,?,?)");
st.setString(1,userId);
st.setString(2,password);
st.setString(3,fullName);
st.setString(4,mailId);
st.setString(5,contact);
st.setString(6,dOB);
st.setString(7,gender);
st.setString(8,address);
st.setString(9,city);
st.executeUpdate();
connection.close();
response.sendRedirect("login.jsp");
%>