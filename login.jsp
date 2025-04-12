<html>
    <style>
        .tabtheme{
            background-color:rgba(255,255,255,0.6);
            color:grey;
            font-family: arial;
            font-weight: bold;
            height:50px;
            border-radius: 10px;
            box-shadow: 5px 5px 5px black;
            width:80%;
        }
        body{
            background-image: url('Images/home.jpg');
            background-size: 100%;
            background-repeat: no-repeat;
        }
        a{
            color: black;
            text-decoration: none;
        }
        .btntheme{
            background-color: black;
            color: white;
        }
        .texttheme{
            width: 300px;
            margin-left: 100px;
        }
        .formtheme{
            
           height: 150px;
            width: 1196px;
            /*background-image: url('Images/social_network__3_.gif');*/
            background-color:white;
            background-size: 100%;
            background-repeat: no-repeat;
/*            box-shadow: 5px 5px 5px black;*/
            margin-top:475px;
            margin-left:162px;
        }
    </style>
     <body>
        
        <%
        Cookie ck1[]=request.getCookies();
        String value="";
        if(ck1!=null)
        {
            for(int i=0;i<ck1.length;i++)
            {
                if(ck1[i].getName().equals("StuRent"))
                    value=ck1[i].getValue();
            }
        }
        
        %>
        
        
        
        
       
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>


<%
    String button=request.getParameter("btn");
    int RESULT=0;
    if(button!=null && button.equalsIgnoreCase("signin"))
    {
 
    String userId=request.getParameter("uId");
    String password=request.getParameter("pwd");
                           
    if(userId.equals(""))
    {
        RESULT=1;
    }
    else if(password.equals(""))
    {
        RESULT=2;
    }
    else
    {
    
Class.forName("com.mysql.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","DAga8989");
PreparedStatement  st=connection.prepareStatement(
        "select * from sturent where id=?  and password=?");
st.setString(1,userId);
st.setString(2,password);
ResultSet rs=st.executeQuery();
if(rs.next())
{
   
    session.setAttribute("MAN_SE",userId);//session name,value  
    Cookie ck=new  Cookie("StuRent",userId);
    ck.setMaxAge(1000000);//seconds
    response.addCookie(ck);
    
    
    response.sendRedirect("customerdashboard.jsp");
}
else
{
                RESULT=3;
}    

    }}
%>
        
                    <%@include file="header.jsp" %>
                    <form action=""  method="post">
                    <table  class="formtheme"  cellspacing="10px" >
                        
                        
                        
                        <%
                             if(RESULT==3)
                        {
                        %>
                        <tr>
                            <td>invalid id/password</td>
                        </tr>
                         <%}%>   
                            
                        <tr>
                            <td>Id</td>
                            </tr>
                            <%
                        if(RESULT==1)
                        {
                        %>
                        <tr>
                            <td>id is required</td>
                        </tr>
                         <%}%>   
                            <tr>
                                <td>
<input type="text"  value="<%=value%>"  class="texttheme"  name="uId"></td>
                            </tr>
                            
                            <tr>
                            <td>Password</td>
                            </tr>
                            <%
                             if(RESULT==2)
                        {
                        %>
                        <tr>
                            <td>password  is required</td>
                        </tr>
                         <%}%>   
                            <tr>
                            <td><input type="password"  class="texttheme"  name="pwd"></td>
                        </tr>
                        <tr align="center">
                            <td  colspan="4"> 
<input type="submit"  value="signin"  name="btn"></td>
                        </tr>
                    </table>
                    
                    </form>
                    
                    
    </body>
</html>