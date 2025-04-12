<html>
    <style>
        body{
            background-color: darkgray;
        }
    </style>
 
    <body>
        <form action="authjavacode.jsp" method="post">
        <table cellspacing="10px" align="center">
            <tr>
                <td>Id</td>
            </tr>
            <tr>
                <td><input type="text" name="uId" placeholder="enter id here" class="texttheme"></td>
            </tr>
            <tr>
                <td>Password</td>
            </tr>
            <tr>
                <td><input type="password" name="pwd" placeholder="enter password here" class="texttheme"></td>                
            </tr>
            <tr>
                <td><select class="texttheme" style="width:200px" name="post">
                        <option>select post</option>
                        <option>Admin</option>
                        <option>Manager</option>

                            </select></td>
            </tr>
            <tr align="center">
                <td colspan="4"><input type="submit" value="signup"></td>
            </tr>
        </table>
        </form>
    </body>
</html>
