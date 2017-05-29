<%-- 
    Document   : index
    Created on : 25 avr. 2017, 16:54:32
    Author     : Mikaël
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="css/style.less">   

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <a href="#" data-toggle="modal" data-target="#login-modal">Login</a>

        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="loginmodal-container">
                    <h1>Login to Your Account</h1><br>
                    <form method="post" action="validate.jsp">
                        <input type="text" name="username" placeholder="Username" required>
                        <input type="password" name="password" placeholder="Password" required>
                        <input type="submit" name="submit" class="login loginmodal-submit" value="Login">
                    </form>

                    <div class="login-help">
                        <a href="#">Register</a>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
<a href="index.jsp"></a>