package com.OMO.Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OMO.JavaBeans.FetchAppetizersInfo;
import com.OMO.JavaBeans.FetchBeveragesInfo;
import com.OMO.JavaBeans.FetchMainCourseInfo;
import com.OMO.JavaBeans.FetchSweetsInfo;
import com.OMO.JavaBeans.FetchUserInfo;
import com.OMO.JavaBeans.Meals;
import com.OMO.JavaBeans.ShoppingCart;
import com.OMO.JavaBeans.Users;

/**
 * Servlet implementation class MealsServlet
 */
@WebServlet("/MealsServlet")
public class MealsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MealsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		
		HttpSession session = request.getSession();   
		
		if(action.equals("maincourse")) {
			
			String id = request.getParameter("id");
			
			Meals meal = new Meals();
			FetchMainCourseInfo fmci = new FetchMainCourseInfo();
		
			meal.setId(Integer.parseInt(id));
			fmci.FetchMainCourse(meal);
			
			session.setAttribute("mealinfo", meal);
			
			
		    response.sendRedirect("details.jsp");
			
		}else if(action.equals("appetizers")) {
			
			String id = request.getParameter("id");
			
			Meals appetizer = new Meals();
			FetchAppetizersInfo fai = new FetchAppetizersInfo();
		
			appetizer.setId(Integer.parseInt(id));
			fai.FetchAppetizer(appetizer);
			
			session.setAttribute("mealinfo", appetizer);
			
			
		    response.sendRedirect("details.jsp");
			
		}else if(action.equals("sweets")) {
			
			String id = request.getParameter("id");
			
			Meals sweets = new Meals();
			FetchSweetsInfo fsi = new FetchSweetsInfo();
		
			sweets.setId(Integer.parseInt(id));
			fsi.FetchSweets(sweets);
			
			session.setAttribute("mealinfo", sweets);
			
			
		    response.sendRedirect("details.jsp");
			
		}else if(action.equals("beverages")) {
			
			String id = request.getParameter("id");
			
			Meals beverage = new Meals();
			FetchBeveragesInfo fbi = new FetchBeveragesInfo();
		
			beverage.setId(Integer.parseInt(id));
			fbi.FetchBeverage(beverage);
			
			session.setAttribute("mealinfo", beverage);
			
			
		    response.sendRedirect("details.jsp");
			
		}
		
	}

}
