
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    List<String> CommandeList = new ArrayList<String>();

    try {

        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/starbuds?" + "user=root&password=root");
        PreparedStatement pst = conn.prepareStatement("Select * from commande");
        ResultSet rs = pst.executeQuery();
        while (rs.next()) {

            CommandeList.add(rs.getString(1));
            CommandeList.add(rs.getString(2));
            CommandeList.add(rs.getString(3));
            CommandeList.add(rs.getString(4));
            CommandeList.add(rs.getString(5));
            
            request.getSession().setAttribute("commande", CommandeList);

            /*
            for (String object : CommandeList) {
                out.println(object);
            }*/
        }
    } catch (Exception e) {
        out.println("Something went wrong !! Please try again");
    }

%>