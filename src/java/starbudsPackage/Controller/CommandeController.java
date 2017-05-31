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

/**
 *
 * @author Mikaël
 */
public class CommandeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Commande commande = new Commande();

        List<Commande> commandeList = commande.getCommande();

        request.setAttribute("listecommande", commandeList);
        request.getRequestDispatcher("/commande.jsp").forward(request, response);
    }
}
