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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/starbuds?" + "user=root&password=root");
        PreparedStatement pst = conn.prepareStatement("Select * from serveur where login=? and mdp=?");
        pst.setString(1, username);
        pst.setString(2, password);
        out.println(pst);
        ResultSet rs = pst.executeQuery();
        if (rs.next()) {
            out.println("Valid login");
            
            session.setAttribute("id", rs.getInt(1));
            session.setAttribute("nom", rs.getString(2));
            session.setAttribute("prenom", rs.getString(3));
            session.setAttribute("enActivite", rs.getString(6));

            String redirectURL = "index.jsp";
            response.sendRedirect(redirectURL);

        } else {
            out.println("Invalid login");
        }
    } catch (Exception e) {
        out.println("La connexion a échoué");
    }
%>