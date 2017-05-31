<%-- 
    Document   : validate
    Created on : 29 mai 2017, 13:12:54
    Author     : Mikaël
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    try {

        String serveur = request.getParameter("serveur");
        String activite = request.getParameter("activite");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/starbuds?" + "user=root&password=root");
        PreparedStatement pst = conn.prepareStatement("UPDATE serveur SET en_activite = " + activite + " WHERE serveur.id = ?");
        pst.setString(1, serveur);
        out.println(pst);
        pst.executeUpdate();

        out.println("Activité mise à jour");

        String redirectURL = "serveur";
        response.sendRedirect(redirectURL);

    } catch (Exception e) {
        out.println("La connexion a échoué");
    }
%>