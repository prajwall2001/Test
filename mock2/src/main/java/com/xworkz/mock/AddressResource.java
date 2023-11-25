package com.xworkz.mock;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/AttachAddress" ,loadOnStartup = 5)
public class AddressResource extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String siNo = req.getParameter("siNo");
    String firstName = req.getParameter("firstName");
    String lastName =req.getParameter("lastName");
    String middleName =  req.getParameter("middleName");
    String email = req.getParameter("email");
    String gender =req.getParameter("gender");
    String contactNo = req.getParameter("contactNo");
    String area = req.getParameter("area");
    String district =req.getParameter("district");
    String state = req.getParameter("state");
    String pincode = req.getParameter("pincode");

    req.setAttribute("siNo", siNo);
    req.setAttribute("firstName", firstName);
    req.setAttribute("lastName", lastName);
    req.setAttribute("middleName", middleName);
    req.setAttribute("email", email);
    req.setAttribute("gender", gender);
    req.setAttribute("contactNo", contactNo);
    req.setAttribute("area", area);
    req.setAttribute("district", district);
    req.setAttribute("state", state);
    req.setAttribute("pincode", pincode);
    

    RequestDispatcher dispatcher = req.getRequestDispatcher("success.jsp");
    dispatcher.forward(req, resp);
}
}

