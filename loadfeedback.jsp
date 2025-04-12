<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>   
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","DAga8989");
PreparedStatement st=connection.prepareStatement("select * from feedbacktab");
ResultSet rs=st.executeQuery();
ArrayList list1=new ArrayList();
ArrayList list2=new ArrayList();
ArrayList list3=new ArrayList();
ArrayList list4=new ArrayList();
ArrayList list5=new ArrayList();
while(rs.next())
{
list1.add(rs.getInt(1));
list2.add(rs.getString(2));
list3.add(rs.getString(3));
list4.add(rs.getString(4));
list5.add(rs.getString(5));
}
%>
<html>
    
    <style>
        .tabtheme{
    background-color:rgba(255,255,255,0.6);
            font-family:arial;
            font-weight: bold;
            height:45px;
            border-radius: 10px;
            box-shadow: 5px 5px 5px black;
        }
        body{
            background-color: buttonhighlight;
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
            width: 200px;
        }
        .formtheme{
            margin:200px auto;
            height: 400px;
            width: 300px;
            background-image: url('Images/social_network__3_.gif');
            background-size: 100%;
            background-repeat: no-repeat;
            box-shadow: 5px 5px 5px black;
        }
        
        .texttheme{
            
            width: 200px;
        }
    </style>
    <body>
        <%@include file="adminheader.jsp"%>  
            <%
                String button=request.getParameter("btn1");
                String records[]=request.getParameterValues("cb");
                if(button!=null &&button.equalsIgnoreCase("Delete specific"))
                {
                for(int i=0;i<records.length;i++)
                {
                PreparedStatement st3=connection.prepareStatement("delete from feedbacktab where feedbackid="+records[i]);
                st3.executeUpdate();
            }
            response.sendRedirect("loadfeedback.jsp");
            }
             %>
                <form action="">
                 <table width="90%" align="center" style="height:40px;">
                     <tr style="text-align: center;background-color:black;color: white;font-family: arial;font-size: 13px">
                <td>FEEDBACK ID</td>
                <td>USER ID</td>
                <td>RATING</td>
                <td>FEEDBACK</td>
                <td>DATE OF FEEDBACK</td>
                    </tr>
                     <%
             for(int i=0;i<list1.size();i++)
             {
            %>
             <tr align="center">
                 <td><%=list1.get(i)%></td>
                <td><%=list2.get(i)%></td>
                <td><%=list3.get(i)%></td>
                <td><%=list4.get(i)%></td>
                <td><%=list5.get(i)%></td>
                <td><input type="checkbox" value="<%=list1.get(i)%>" name="cb"></td>
            </tr>
              <% } %>
              
              <%
                  if(!list1.isEmpty()){
              %>
              <tr align="right">
                  <td colspan="7"><input type="submit" value="DELETE SPECIFIC" name="btn1"></td>                
              </tr>
              <%}%>
                </table>
                    </form>

                
                 <h2 align="center">DELETE FEEDBACK SECTION</h2>
        <%
            String button1=request.getParameter("b1");
            String button2=request.getParameter("b2");
            String id=request.getParameter("combo");
            if(button2!=null && button2.equalsIgnoreCase("Delete all"))
            {
            PreparedStatement st1=connection.prepareStatement("delete from feedbacktab");
            st1.executeUpdate();
            response.sendRedirect("loadfeedback.jsp");
        }
        if(button1!=null && button1.equalsIgnoreCase("Delete"))
            {
            PreparedStatement st2=connection.prepareStatement("delete from feedbacktab where feedbackid=?");
            st2.setInt(1,Integer.parseInt(id));
            st2.executeUpdate(); 
            response.sendRedirect("loadfeedback.jsp");
        }
        %>
        <form action="">
        <table align="center">
            <tr align="center">
                <td><select class="texttheme" name="combo">
            <option>SELECT FEEDBACK ID TO DELETE THE RECORD</option>
            <% for(int i=0;i<list1.size();i++){ %>
            <option><%=list1.get(i)%></option>
            <%}%>
                </select></td>
        <td><input type="submit" value="DELETE" name="b1">
            <input type="submit" value="DELETE ALL" name="b2"></td>
            </tr>
        </table>
          </form>
                
                <h2 align="center">SEARCH FEEDBACK SECTION</h2>
                <%
                    String userId="";
                    String rating="";
                    String feedback="";
                    String dateoffeedback="";
                    int RECORD_NOT_FOUND=0;
                    String button11=request.getParameter("btn2");
                    String idValue=request.getParameter("id");
                    if(button11!=null && button11.equalsIgnoreCase("Search"))
                    {
                        PreparedStatement st4=connection.prepareStatement("select * from feedback where feedbackid=?");
                        st4.setInt(1, Integer.parseInt(idValue));
                        ResultSet rs1=st4.executeQuery();
                        if(rs1.next())
                        {
                        RECORD_NOT_FOUND=1;
                        
                        userId=rs1.getString(2);
                        rating  =rs1.getString(3);
                        feedback=rs1.getString(4);
                        dateoffeedback=rs1.getString(5);
                    }
                    }

                %>
                <form action="">
                    <table align="center" class="tabtheme">
                        <tr>
                            <td><input type="text" class="texttheme" name="id"></td>
                            <td><input type="submit" value="SEARCH" name="btn2"></td>
                        </tr>              
                    </table>
                </form>
                <%
                    if(button11!=null && button11.equalsIgnoreCase("Search")&& RECORD_NOT_FOUND==1)
                    {
                %>
                <table width="60%" cellspacing="10px" align="center">
                    <tr align="center">
                        <td>FeedbackId</td>
                        <td><%=idValue%></td>
                    </tr>
                    <tr align="center">
                        <td>userId</td>
                        <td><%=userId%></td>
                    </tr>
                    <tr align="center">
                        <td>Rating</td>
                        <td><%=rating%></td>
                    </tr>
                    <tr align="center">
                        <td>Feedback</td>
                        <td><%=feedback%></td>
                    </tr>
                    <tr align="center">
                        <td>DateOfFeedback</td>
                        <td><%=dateoffeedback%></td>
                    </tr>
                </table>
                <%}%>
    </body>
</html>