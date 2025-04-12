<%@include file="security.jsp" %>
<html>
    <style>
        .tabtheme{
            background-color:orange;
            font-family: arial;
            font-weight: bold;
            height:50px;
            border-radius: 10px;
            box-shadow: 5px,5px,5px black;
        }
        body{
            background-image: url('Images/1.jpg');
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
            margin-top: 35px;
            height: 200px;
            width: 300px;
            margin-left: 500px;
            background-size: 100%;
            background-repeat: no-repeat;
            box-shadow: 5px 5px 5px black;
        }
        .innerformtheme{
            font-family: arial;
            background-color: rgba(0,0,0,0.4);
            color: white;
            margin-left: 350px;
            margin-top: 100px;
            background-size: 100%;
            background-repeat: no repeat;
        }
    </style>
    <body>
        <%@include file="customerheader.jsp" %>
                <form action="passjavacode.jsp" method="post">
        <table class="innerformtheme" cellspacing="10px">
            <tr>
                <td>Id</td>
            </tr>
            <tr>
                <td><input type="text" class="texttheme" name="uId" ></td>
            </tr>
            <tr>
                <td>Old password</td>
            </tr>
            <tr>
                <td><input type="password" class="texttheme" name="opwd" ></td>
            </tr>
            <tr>    
                <td>New password</td>
            </tr>
            <tr>
                <td><input type="password" class="texttheme" name="npwd" ></td>
            </tr>
            <tr>
                <td>Confirm New password</td>
            </tr>
            <tr>
                <td><input type="password" class="texttheme" name="cnpwd" ></td>
            </tr
            <tr align="center">
                  <td  colspan="4"> <input type="submit"  value="change"></td>
            </tr>
        </table>
            </form>
    </body>
</html>