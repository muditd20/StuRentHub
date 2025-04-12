<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<% 
    String category=request.getParameter("cat");
    String productname=request.getParameter("product");
    String description=request.getParameter("des");
    String days=request.getParameter("day");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","DAga8989");
PreparedStatement st=connection.prepareStatement("insert into ordertab(userid,category,productName,description,days)values(?,?,?,?,?)");
st.setString(1,(String)session.getAttribute("MAN_SE"));
st.setString(2,category);
st.setString(3,productname);
st.setString(4,description);
st.setString(5,days);
st.executeUpdate();
connection.close();
response.sendRedirect("order.jsp");
%>