<%
response.addHeader("Pragma","no-Cache");//name,value
response.addHeader("Cache-Control","no-Store");//name,value
String value=(String)session.getAttribute("MAN_SE");
if(value==null)
{
    response.sendRedirect("home.jsp");
}
if(session==null)
{
    response.sendRedirect("home.jsp");
}
%>