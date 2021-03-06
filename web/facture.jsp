<%-- 
    Document   : facture
    Created on : 29 mai 2017, 15:56:04
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
        <title>Facture</title>
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
                                <li><a href="#">Deconnexion</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container-fluid main-container">
            <div class="col-md-2 sidebar">
                <ul class="nav nav-pills nav-stacked">
                    <li><a href="index.jsp">Accueil</a></li>
                    <li><a href="commande">Commande</a></li>
                    <li class="active"><a href="facture.jsp">Facture</a></li>
                    <li><a href="serveur">Serveur</a></li>
                </ul>
            </div>
            <div class="col-md-10 content">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Facture
                    </div>
                    <div class="panel-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Commande</th>
                                    <th>Montant</th>
                                    <th>Statut</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>1</td>
                                    <td>5.00€</td>
                                    <td>Payée</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>2</td>
                                    <td>7.50€</td>
                                    <td>Payée</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>5</td>
                                    <td>22.50€</td>
                                    <td>Payée</td>
                                </tr>
                                <!--<tr>
                                    <th scope="row">2</th>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Larry</td>
                                    <td>the Bird</td>
                                    <td>@twitter</td>
                                </tr>!-->
                            </tbody>
                        </table>
                                            <%
                    int id = (Integer) session.getAttribute("id");
                    if (id == 1) {
                        
                                %>
                                <div>
                                <div class="row" style="padding-left: 10px;">
                                    <form action="changeactivite.jsp" method="post">
                                        <button class="btn btn-primary" type="submit" value="changeactivite" name="button">Nouvelle facture</button>
                                    </form>
                                </div>
                                </div>

                                  <% 
                                      }
                                  %>
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
