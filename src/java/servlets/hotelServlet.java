package servlets;

import bean.orgLocal;
import entity.OrgDetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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

@WebServlet(name = "hotelServlet", urlPatterns = {"/hotelServlet"})
public class hotelServlet extends HttpServlet {
    
    orgLocal org = lookuporgLocal();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html");
            HttpSession session = request.getSession();
            
        String hotel = request.getParameter("h_name");
        String city = request.getParameter("city");
        String pincode = request.getParameter("pincode");
        String area = request.getParameter("area");
        String phone = request.getParameter("phone");
        String role = request.getParameter("role");
        String email = request.getParameter("email");
        String checkbox = "";
        if(request.getParameterValues("agree") != null)
        {
            checkbox = "agree";
        }
        if(!"".equals(hotel) && !"".equals(city) && !"".equals(pincode) && !"".equals(area) && !"".equals(phone) && !"".equals(role) && !"".equals(checkbox) && !"".equals(email)){
            OrgDetails details = new OrgDetails();
            details.setOrgName(hotel);
            details.setpName(role);
            details.setCity(city);
            details.setPhone(phone);
            details.setPincode(pincode);
            details.setArea(area);
            details.setEmail(email);
            details.setCapacity("0");
            details.setOrganisation("Hotel");
            details.setDbAlloted(0);
            org.addOrg(details);
            List<OrgDetails> list = org.hotels();
            session.setAttribute("hotelList", list);
            SendMailSSL mail = new SendMailSSL();
            mail.send(email);
            RequestDispatcher rd = request.getRequestDispatcher("Thank.jsp");
            rd.forward(request, response);
        }
        else{
            if("".equals(checkbox)){
                request.setAttribute("check", "Please agree to the Terms & Conditions");
            }
            if("".equals(hotel) || "".equals(city) || "".equals(pincode) || "".equals(area) || "".equals(phone) || "".equals(role) || "".equals(email))
            {
                request.setAttribute("errorMessage", "Please Enter all Mandatory fields!!!");
            }

            request.setAttribute("hotel", hotel);
            request.setAttribute("city", city);
            request.setAttribute("pincode", pincode);
            request.setAttribute("area", area);
            request.setAttribute("phone", phone);
            request.setAttribute("role", role);
            request.setAttribute("email", email);
            RequestDispatcher rd = request.getRequestDispatcher("hotelRegistration.jsp");
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
