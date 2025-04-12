<html>
    <style>
        .tabtheme{
            background-color:lightblue;
            color:grey;
            font-family: arial;
            font-weight: bold;
            height:50px;
            border-radius: 10px;
            box-shadow: 5px 5px 5px black;
        }
        body{
            background-image: url('Images/Flat design.gif');
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
            margin-top: 100px;
            height: 200px;
            width: 300px;
            margin-left: 400px;
            background-size: 100%;
            background-repeat: no repeat;
            box-shadow: 5px 5px 5px black;
        }
    </style>
    <body>
        <%@include file="customerheader.jsp" %>
        <form action="deletejavacode.jsp" method="post">
        <table class="formtheme" cellspacing="10px">
            <tr>
                <td>Id</td>
            </tr>
            <tr>
                <td><input type="text" name="uId" class="texttheme" value=<%= session.getAttribute("MAN_SE")%>   ></td>
            </tr>
            <tr>
                <td>Password</td>
            </tr>
            <tr>
                <td><input type="password" name="pwd"  class="texttheme"></td>                
            </tr>
            <tr align="center">
                <td colspan="4"><input type="submit" value="Delete"></td>
            </tr>
        </table>
            </form>
    </body>
</html>