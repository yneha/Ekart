package com.niit.shop;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Productservlet
 */
@WebServlet("/Productservlet")
public class Productservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Productservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getParameter("param");
		
        
		if (action.equals("f_mono")){ 
			request.setAttribute("pdt",action);
			RequestDispatcher dispatch=request.getRequestDispatcher("pdtinfo.jsp");
			dispatch.forward(request,response);
		}

		else if (action.equals("s_bear")){ 
			request.setAttribute("pdt",action);
			RequestDispatcher dispatch=request.getRequestDispatcher("pdtinfo.jsp");
			dispatch.forward(request,response);
		}
		else if (action.equals("s_brown")){ 
			request.setAttribute("pdt",action);
			RequestDispatcher dispatch=request.getRequestDispatcher("pdtinfo.jsp");
			dispatch.forward(request,response);
		}
		else if (action.equals("s_bheem")){
			request.setAttribute("pdt",action);
			RequestDispatcher dispatch=request.getRequestDispatcher("pdtinfo.jsp");
			dispatch.forward(request,response);
		}
		else if (action.equals("l_lego")){ 
			request.setAttribute("pdt",action);
			RequestDispatcher dispatch=request.getRequestDispatcher("pdtinfo.jsp");
			dispatch.forward(request,response);
		}
		else if (action.equals("s_ele")){ 
			request.setAttribute("pdt",action);
			RequestDispatcher dispatch=request.getRequestDispatcher("pdtinfo.jsp");
			dispatch.forward(request,response);
		}
		
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
