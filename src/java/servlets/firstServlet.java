package servlets;

import bean.dBoysLocal;
import bean.orgLocal;
import entity.DBoys;
import entity.OrgDetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "firstServlet", urlPatterns = {"/firstServlet"})
public class firstServlet extends HttpServlet {
    
    dBoysLocal dBoys = lookupdBoysLocal();
    orgLocal org = lookuporgLocal();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        System.out.println("a");
        List<OrgDetails> hotelList = org.hotels();
        System.out.println("b");
        List<OrgDetails> shelterList = org.shelters();
        System.out.println("c");
        List<DBoys> boysList = dBoys.returnBoys();
        System.out.println("d");
        HttpSession session = request.getSession();
        session.setAttribute("hotelList", hotelList);
        session.setAttribute("shelterList", shelterList);
        session.setAttribute("boysList", boysList);
        
        RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private orgLocal lookuporgLocal() {
        try {
            Context c = new InitialContext();
            return (orgLocal) c.lookup("java:global/ZeroHunger/ZeroHunger-ejb/org!bean.orgLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private dBoysLocal lookupdBoysLocal() {
        try {
            Context c = new InitialContext();
            return (dBoysLocal) c.lookup("java:global/ZeroHunger/ZeroHunger-ejb/dBoys!bean.dBoysLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

}
