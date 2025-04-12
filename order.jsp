<%@include file="security.jsp" %>
<html>
    <style>
        .tabtheme{
            background-color:orange;
            font-family:arial;
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
            margin:200px auto;
            height: 400px;
            width: 300px;
            background-image: url('Images/social_network__3_.gif');
            background-size: 100%;
            background-repeat: no-repeat;
            box-shadow: 5px 5px 5px black;
        }
        .textareatheme{
            width: 400px;
            height: 100px;
        }
        .innerformtheme{
            margin-left: 350px;
            margin-top: 100px;
        }
    </style>
    <body>
        
        <form action="orderjavacode.jsp" method="post">
        <%@include file="customerheader.jsp" %>
        <table class="innerformtheme">
            
            <tr>
                <td><select class="texttheme" style="width: 400px" name="cat">
                        <option>Select Product Category</option>
                        <option>A</option>
                        <option>B</option>
                        <option>C</option>
                </select></td>
            </tr>
            <tr>
                <td>Product Name</td>
            </tr>
            <tr>
                <td><textarea class="textareatheme" name="product"></textarea></td>
            </tr>
            <tr>
                <td>Description</td>
            </tr>
            <tr>
                <td><textarea class="textareatheme" name="des"></textarea></td>
            </tr>
            <tr>
                <td><select class="texttheme" style="width: 400px" name="day">
                        <option>Select Days</option>
                        <option>1 week</option>
                        <option>1 Month</option>
                        <option>2 Month</option>
                </select></td>
            </tr>
            <tr>
                <td colspan="4"><input type="submit" value="SUBMIT"></td>
            </tr>
        </table>
        </form>
    </body>
</html>