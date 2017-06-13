<%-- 
    Document   : dashboard
    Created on : 29 mai 2017, 10:54:40
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

        <title>StarBuds Ganja</title>
    </head>
    <body>

        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        Starbuds Ganja
                    </a>
                    <img alt="logo" src="images/logo-mini.png" style="width:6%; padding-top: 5px;"/>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <div class="navbar-brand" style="font-size:14px;">
                            Bonjour <%= session.getAttribute("prenom")%>
                        </div>
                        <li class="dropdown ">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                Mon compte
                                <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-header">SETTINGS</li>
                                <li class=""><a href="#">Other Link</a></li>
                                <li class=""><a href="#">Other Link</a></li>
                                <li class=""><a href="#">Other Link</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container-fluid main-container">
            <div class="col-md-2 sidebar">
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="index.jsp">Accueil</a></li>
                    <li><a href="commande">Commande</a></li>
                    <li><a href="facture.jsp">Facture</a></li>
                    <li><a href="serveur">Serveur</a></li>
                </ul>
            </div>
            <div class="col-md-10 content">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Tableau de bord
                    </div>
                    <div class="panel-body">
                        <div style="text-align: center;">
                            <img src="images/starbuds_logo.jpg"/>
                            <br/>
                            <hr />
                            <br/>
                            Bienvenue sur le Tableau de bord de Starbuds Ganja.
                        </div>
                    </div>
                </div>
            </div>
            <footer class="pull-left footer">
                <p class="col-md-12">
                <hr class="divider">
                Copyright &COPY; 2017 Starbuds Ganja || Xavier & Mikaël
                </p>
            </footer>
        </div>

    </body>
</html>
