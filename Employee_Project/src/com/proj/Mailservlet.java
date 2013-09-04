package com.proj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Mailservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mailservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
              System.out.println("Start");
              SendMail.go((String)request.getAttribute("hodname"),(String)request.getAttribute("firstname"),(String)request.getAttribute("lastname"),(String)request.getAttribute("startdate"),(String)request.getAttribute("username"),(String)request.getAttribute("password1"),(String)request.getAttribute("hodemail"));
              System.out.println("Done successfully");
              RequestDispatcher rd=request.getRequestDispatcher("Mail.jsp");
      		  rd.forward(request,response);
	}

}
