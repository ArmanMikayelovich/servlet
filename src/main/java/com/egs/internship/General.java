package com.egs.internship;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class General extends HttpServlet {
    //User list
    public static Map<String, String> userMap = new ConcurrentHashMap<>();

    {
        userMap.put("root", "root");
        userMap.put("admin", "admin");
        userMap.put("manager", "manager");
        userMap.put("valodik", "valodik");

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Set hello message
        req.setAttribute("name", "Vunderkinds");
        //Dispatch request to login.jsp with HttpRequest and HttpResponse
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login"); // get login parameter from html form
        String pwd = req.getParameter("pwd"); // get password parameter from html form
        //if login + pwd is OK
        if (userMap.containsKey(login) && userMap.get(login).equals(pwd)) {
            HttpSession session = req.getSession();
            if (session.getAttribute("name") == null ) {
                session.setAttribute("name", login);
            }

            resp.sendRedirect("welcome.jsp");
        } else {
            req.setAttribute("name", "Vunderkinds");
            req.setAttribute("error", "true");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
