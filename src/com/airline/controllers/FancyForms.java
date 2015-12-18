package com.airline.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/airlineforms")
public class FancyForms extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FancyForms() {	super();    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	RequestDispatcher view = request.getRequestDispatcher("WEB-INF/jsp/home.jsp");
	RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/fancy_forms.jsp");
//	RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/fancy_forms2.jsp");
	view.forward(request, response);
	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
