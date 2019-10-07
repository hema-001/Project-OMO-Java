package com.OMO.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OMO.JavaBeans.FetchMainCourseInfo;
import com.OMO.JavaBeans.FetchUserInfo;
import com.OMO.JavaBeans.Meals;
import com.OMO.JavaBeans.ShoppingCart;
import com.OMO.JavaBeans.Users;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		String id = request.getParameter("id");
		HttpSession session = request.getSession();
		
		if(action.equals("add")) {
		Meals meal = new Meals();
		FetchMainCourseInfo fmci = new FetchMainCourseInfo();
		
		meal.setId(Integer.parseInt(id));
		fmci.FetchMainCourse(meal);	
		session.setAttribute("Cartinfo", meal);
		
		response.sendRedirect("index.jsp");
		
		}else if(action.equals("remove")) {
			session.removeAttribute("Cartinfo");
			response.sendRedirect("cart.jsp");
		}else if(action.equals("checkout")) {
			String name = request.getParameter("checkout_user");
			
			Users user = new Users();
			FetchUserInfo fui = new FetchUserInfo();
			
			user.setName(name);
			fui.FetchUser(user);
			
			session.setAttribute("checkout_user", user);
			
			response.sendRedirect("checkout.jsp");
		}
		
		
	}

}
