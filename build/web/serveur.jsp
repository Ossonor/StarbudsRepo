<%-- 
    Document   : facture
    Created on : 29 mai 2017, 15:56:04
    Author     : Mikaël
--%>


<%@page import="starbudsPackage.Serveur"%>
<%@page import="starbudsPackage.Commande"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

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
                                Account
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
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="commande">Commande</a></li>
                    <li><a href="facture.jsp">Facture</a></li>
                    <li class="active"><a href="serveur">Serveur</a></li>
                </ul>
            </div>
            <div class="col-md-10 content">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Commande
                    </div>

                    <div class="panel-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nom</th>
                                    <th>Prénom</th>
                                    <th>État</th>
                                </tr>
                            </thead>
                            <tbody>

                                <%
                                    List<Serveur> listeserveur = (List<Serveur>) request.getAttribute("listeserveur");
                                    String activite;

                                    for (int i = 0; i < listeserveur.size(); i++) {
                                        Serveur row = (Serveur) listeserveur.get(i);
                                        //Serveur serveur = new Serveur();
                                        //serveur = row.getServeur();

                                        out.println("<tr><td>" + row.getId() + "</td>");
                                        out.println("<td>" + row.getNom() + "</td>");
                                        out.println("<td>" + row.getPrenom() + "</td>");

                                        if (row.isEnActivite() == true) {
                                            out.println("<td>En activité</td>");
                                            activite = "1";
                                        } else {
                                            out.println("<td>En pause</td>");
                                            activite = "0";
                                        }

                                        int id = (Integer) session.getAttribute("id");
                                        //String activite = (String) session.getAttribute("enActivite");

                                        if (id == 1) {
                                            out.println("<td>");
                                %>
                            <form action="changeactivite.jsp" method="post">
                                <input type="hidden" name="activite" value="<% out.print(activite); %>" />
                                <input type="hidden" name="serveur" value="<% out.print(id); %>" />
                                <button class="btn btn-primary" type="submit" value="changeactivite" name="button">Changer d'état</button>
                            </form>

                                  <% out.println("</td>");
                                          }

                                          out.println("</tr>");
                                      }
                                  %>

                                  </tbody>
                        </table>
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
