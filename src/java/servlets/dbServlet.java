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
import pojo.SendMailSSL;

@WebServlet(name = "dbServlet", urlPatterns = {"/dbServlet"})
public class dbServlet extends HttpServlet {
    orgLocal org = lookuporgLocal();
    dBoysLocal dBoys = lookupdBoysLocal();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
            
        String dbName = request.getParameter("d_name");
        String age = request.getParameter("age");
        String adhar = request.getParameter("adhar");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String orgName = "";
        if(!"Select Hotels".equals(request.getParameter("hotelName"))){
            orgName = request.getParameter("hotelName");
        }
        else if(!"Select Shelters".equals(request.getParameter("shelterName"))){
            orgName = request.getParameter("shelterName");
        }
        System.out.println(orgName);
        String shift = request.getParameter("shift");
        String checkbox ="";
        if(request.getParameterValues("agree") != null)
        {
            checkbox = "agree";
        }
        if(!"".equals(dbName) && !"".equals(age) && !"".equals(adhar) && !"".equals(phone) && !"".equals(checkbox) && !"".equals(shift) && !"".equals(orgName) && !"".equals(email)){
            DBoys boys = new DBoys();
            boys.setAdharno(adhar);
            boys.setAge(age);
            boys.setEmail(email);
            boys.setName(dbName);
            boys.setOrgname(orgName);
            boys.setPhone(phone);
            boys.setShift(shift);
            dBoys.addBoys(boys);
            
            List<DBoys> boysList = dBoys.returnBoys();
            session.setAttribute("boysList", boysList);
            org.updateOrg(orgName);
            List<OrgDetails> hlist = org.hotels();
            session.setAttribute("hotelList", hlist);
            List<OrgDetails> slist = org.shelters();
            session.setAttribute("shelterList", slist);
            SendMailSSL mail = new SendMailSSL();
            mail.send(email);
            RequestDispatcher rd = request.getRequestDispatcher("Thank.jsp");
            rd.forward(request, response);
        }
        else{
            if("".equals(checkbox)){
                request.setAttribute("check", "Please agree to the Terms & Conditions");
            }
            if("".equals(dbName) || "".equals(age) || "".equals(orgName) || "".equals(adhar) || "".equals(phone) || "".equals(shift) || "".equals(orgName) || "".equals(email))
            {
                request.setAttribute("errorMessage", "Please Enter all Mandatory fields!!!");
            }
            request.setAttribute("adhar", adhar);
            request.setAttribute("dbName", dbName);
            request.setAttribute("age", age);
            request.setAttribute("phone", phone);
            request.setAttribute("orgName", orgName);
            request.setAttribute("email", email);
            RequestDispatcher rd = request.getRequestDispatcher("dboysRegistration.jsp");
            rd.include(request, response);
        }
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

    private dBoysLocal lookupdBoysLocal() {
        try {
            Context c = new InitialContext();
            return (dBoysLocal) c.lookup("java:global/ZeroHunger/ZeroHunger-ejb/dBoys!bean.dBoysLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

    private orgLocal lookuporgLocal() {
        try {
            Context c = new InitialContext();
            return (orgLocal) c.lookup("java:global/ZeroHunger/ZeroHunger-ejb/org!bean.orgLocal");
        } catch (NamingException ne) {
            Logger.getLogger(getClass().getName()).log(Level.SEVERE, "exception caught", ne);
            throw new RuntimeException(ne);
        }
    }

}
