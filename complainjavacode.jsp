<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.util.Date,java.text.DateFormat" %>       
<% 
    Date date=new Date();
    DateFormat df=DateFormat.getDateInstance(DateFormat.FULL);
    String category=request.getParameter("compcat");
    String complain=request.getParameter("complain");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","DAga8989");
PreparedStatement st=connection.prepareStatement("insert into complaintab(userId,category,complain,dateofcomplain,status)values(?,?,?,?,?)");
st.setString(1,(String)session.getAttribute("MAN_SE"));
st.setString(2,category);
st.setString(3,complain);
st.setString(4,df.format(date));
st.setString(5,"under process");
st.executeUpdate();
connection.close();
response.sendRedirect("complain.jsp");
%>