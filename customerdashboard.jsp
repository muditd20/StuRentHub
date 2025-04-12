<%@include file="security.jsp" %>
<html>
    <style>
        .tabtheme{
            background-color:orange;
            font-family:arial;
            font-weight: bold;
            height:50px;
            border-radius: 10px;
            box-shadow: 5px 5px 5px black;
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
            background-repeat: no repeat;
            box-shadow: 5px 5px 5px black;
        }
    </style>
    <body>
        <%@include file="customerheader.jsp"%>
             welcome<%= session.getAttribute("MAN_SE")%>
    </body>
</html>