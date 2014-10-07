package pl.adamborowski.kaskjee;

import pl.adamborowski.kaskjee.bean.AuthUser;
import pl.adamborowski.kaskjee.bean.Flashes;
import pl.adamborowski.kaskjee.bean.UserList;

import java.io.IOException;
import java.util.Date;
import java.util.ResourceBundle;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UserServlet", urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {

    public static final String LOGIN_FIELD = "username";
    public static final String PASSWORD_FIELD = "password";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException    if a servlet-specific error occurs
     * @throws java.io.IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        HttpSession session = request.getSession();
        AuthUser user = (AuthUser) session.getAttribute(AuthUser.BEAN_NAME);
        Flashes flashes = (Flashes) session.getAttribute("flashes");
        if (user.isLogged()) {
            user.setLogged(false);
            user.setUsername(null);
            //unregister
            UserList users = (UserList) getServletContext().getAttribute(UserList.BEAN_NAME);
            users.removeUser(user);
            flashes.addFlash("message.logout_success");
            response.sendRedirect("index.jsp");
            return;
        }

        if (request.getMethod().equals("POST")) {
            boolean valid = false;
            String[] loginText = request.getParameterMap().get(LOGIN_FIELD);
            String[] passwordText = request.getParameterMap().get(PASSWORD_FIELD);
            String username = null;
            if (loginText != null && loginText.length > 0) {
                username = loginText[0];
            }

            String password = null;
            if (passwordText != null && passwordText.length > 0) {
                password = passwordText[0];
            }

            ResourceBundle r = ResourceBundle.getBundle("kaskjee");

            if (username != null && password != null) {
                if (password.equals(r.getString("fake_password"))) {
                    valid = true;
                }
            }
            if (valid) {
                user.setUsername(username);
                user.setLogged(true);
                user.setLastLogin(new Date());
//                session.setAttribute(AuthUser.BEAN_NAME, user);
                //dodanie do listy użytkonwików
                UserList users = (UserList) getServletContext().getAttribute(UserList.BEAN_NAME);
                users.addUser(user);
                //przekierowanie na stronę główną
                flashes.addFlash("message.login_success");
                response.sendRedirect("index.jsp");
            } else {
                // przekierowanie z wiadomością
                flashes.addFlash("message.login_fail");
                response.sendRedirect("login.jsp");
            }
        } else {
            response.setStatus(500);
        }
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
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
        return "Handles user login and logout";
    }
}