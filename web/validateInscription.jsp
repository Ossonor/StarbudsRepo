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
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/starbuds?" + "user=root&password=root");
        PreparedStatement pst = conn.prepareStatement("INSERT INTO `serveur` (`id`, `nom`, `prenom`, `login`, `mdp`, `en_activite`) VALUES (NULL, ?, ?, ?, ?, '1'); ");
        pst.setString(1, nom);
        pst.setString(2, prenom);
        pst.setString(3, (nom + prenom).toLowerCase());
        pst.setString(4, password);
        out.println(pst);
        //ResultSet rs = pst.executeQuery();                        
        pst.executeUpdate();

        out.println("Valid register credentials");
        String redirectURL = "index.jsp";
        response.sendRedirect(redirectURL);
    } catch (Exception e) {
        out.println("Something went wrong !! Please try again");
        out.println(e);
    }
%>