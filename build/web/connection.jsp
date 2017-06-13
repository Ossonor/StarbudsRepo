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
        <div class="row">
            <div class="col-md-12">
                <div class="center" style="text-align: center;">
                    <br>
                    <h1>
                        <a href="#" data-toggle="modal" data-target="#login-modal">Se connecter</a>
                    </h1>

                    <a href="#" data-toggle="modal" data-target="#inscription-modal">Créer un compte Serveur</a>
                </div>
            </div>
        </div>


        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="loginmodal-container">

                    <h1>Se connecter</h1><br>
                    <form method="post" action="validate.jsp">
                        <input type="text" name="username" placeholder="Login" required>
                        <input type="password" name="password" placeholder="Mot de passe" required>
                        <input type="submit" name="submit" class="login loginmodal-submit" value="Login">
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade" id="inscription-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
            <div class="modal-dialog">
                <div class="loginmodal-container">
                    <h1>Créer un serveur</h1><br>
                    <form method="post" action="validateInscription.jsp">
                        <input type="text" name="nom" placeholder="Nom">
                        <input type="text" name="prenom" placeholder="Prenom">
                        <input type="password" name="password" placeholder="Mot de passe">
                        <input type="submit" name="submit" class="login loginmodal-submit" value="Créer">
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
<a href="index.jsp"></a>