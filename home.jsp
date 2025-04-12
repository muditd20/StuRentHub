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
            width: 200px;
        }
        .formtheme{
            
           height: 150px;
            width: 1197px;
/*            background-image: url('Images/social_network__3_.gif');*/
            background-color:white;
            background-size: 100%;
            background-repeat: no-repeat;
/*            box-shadow: 5px 5px 5px black;*/
            margin-top:475px;
            margin-left:162px;
            
        }
    </style>
    <body>
        <%@include file="header.jsp" %>
        <form action="signupjavacode.jsp" method="post">
        <table class="formtheme"  cellspacing="2px">
            <tr  align="center">
                <td>Id</td>
                <td><input type="text" name="uId" placeholder="enter id here" class="texttheme"></td>
                <td>Password</td>
                <td><input type="password" name="pwd" placeholder="enter password here" class="texttheme"></td>                
                <td>Full Name</td>
                <td><input type="text" name="fNm" placeholder="enter full name here" class="texttheme"></td>
              </tr>
              <tr  align="center">
                <td>E-mail</td>
                <td><input type="mail" name="mailid" placeholder="enter mail id" class="texttheme"></td>                
                <td>Contact</td>
                <td><input type="number" name="cont" class="texttheme"></td>
                <td>DOB</td>
                <td><input type="date" name="dob" class="texttheme"></td>                
            </tr>
            <tr  align="center">
                <td>Gender</td>
                <td><select class="texttheme" name="gen" >
                      <option>Select Gender</option>
                      <option>male</option>
                      <option>female</option>
                      <option>other</option>
                        </select> </td>                
                <td>Address</td>
                <td><textarea class="texttheme" name="addr"></textarea></td>
                <td>City</td>
                  <td><select class="texttheme" name="city">
                          <option>Select City</option>
                      <option>Indore</option>
                      <option>Dewas</option>
                      <option>Ujjain</option>
                      <option>other</option>      
                        </select> </td> 
            </tr>
            <tr  align="center">
                <td colspan="7"><input type="submit" value="signup" class="btntheme"></td>
            </tr>
        </table>
            
    </body>
    <script src='https://cdn.jotfor.ms/s/umd/latest/for-embedded-agent.js'></script>
<script>
  window.addEventListener("DOMContentLoaded", function() {
    window.AgentInitializer.init({
      agentRenderURL: "https://agent.jotform.com/01957a3cd1137fba9b0076bf27817b1b78b4",
      rootId: "JotformAgent-01957a3cd1137fba9b0076bf27817b1b78b4",
      formID: "01957a3cd1137fba9b0076bf27817b1b78b4",
      queryParams: ["skipWelcome=1", "maximizable=1"],
      domain: "https://www.jotform.com",
      isDraggable: false,
      background: "linear-gradient(180deg, #6C73A8 0%, #6C73A8 100%)",
      buttonBackgroundColor: "#0066C3",
      buttonIconColor: "#FFFFFF",
      variant: false,
      customizations: {
        "greeting": "Yes",
        "greetingMessage": "Hi! How can I assist you?",
        "openByDefault": "No",
        "pulse": "Yes",
        "position": "right",
        "autoOpenChatIn": "0"
      },
      isVoice: undefined
    });
  });
</script>
</html>