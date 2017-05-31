/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package starbudsPackage.Controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import starbudsPackage.Commande;
import starbudsPackage.Serveur;

/**
 *
 * @author Mikaël
 */
public class ServeurController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Serveur serveur = new Serveur();

        List<Serveur> serveurList = serveur.getServeur();

        request.setAttribute("listeserveur", serveurList);
        request.getRequestDispatcher("/serveur.jsp").forward(request, response);
    }
}
