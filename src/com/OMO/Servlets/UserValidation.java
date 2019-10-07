package com.OMO.Servlets;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OMO.JavaBeans.CreateAccount;
import com.OMO.JavaBeans.FetchUserInfo;
import com.OMO.JavaBeans.Login;
import com.OMO.JavaBeans.Users;

/**
 * Servlet implementation class UserValidation
 */
@WebServlet("/UserValidation")
public class UserValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserValidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		
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
		if(action.equals("login")) {
		String login_name = request.getParameter("log_name");
		String login_pass = request.getParameter("log_password");
		
		Users user = new Users();
		FetchUserInfo fui = new FetchUserInfo();
		
		
		user.setName(login_name);
		user.setPassword(login_pass);
		
		fui.FetchUser(user);
		
		session.setAttribute("name", login_name);
		
		Login log = new Login();
		
		if(log.IsAccount(user)&&!log.isAdmin(user.getRole())) {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else if(log.IsAccount(user)&&log.isAdmin(user.getRole())){
			session.setAttribute("name", login_name);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else {
			String alert = "username or password invalid!";
			request.setAttribute("alert", alert);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
			}else if(action.equals("create")) {
			String c_name = request.getParameter("c_name");
			String c_password = request.getParameter("c_password");
			String c_check_password = request.getParameter("c_check_password");
			String c_address = request.getParameter("c_address");
			String c_phone = request.getParameter("c_phone");
			String c_email = request.getParameter("c_email");
			
			Users c_user = new Users();
			CreateAccount CA = new CreateAccount();

			if(c_password.equals(c_check_password)) {
				
				c_user.setName(c_name);
				c_user.setPassword(c_password);
				c_user.setAddress(c_address);
				c_user.setPhone(c_phone);
				c_user.setEmail(c_email);
				
				if(CA.CreateUser(c_user)) {
					
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}else {
					String c_alert = "account creation failed!\n"+"Please try again.";
					request.setAttribute("c_alert", c_alert);
					request.getRequestDispatcher("createAccount.jsp").forward(request, response);
				}
			}else if(!c_password.equals(c_check_password)) {
				String PasswordFailed = "password mismatch!";
				request.setAttribute("passfailed", PasswordFailed);
				request.getRequestDispatcher("createAccount.jsp").forward(request, response);
			}
		}else if(action.equals("logout")) {
			session.invalidate();
			request.getRequestDispatcher("Location.jsp").forward(request, response);
		}else if(action.equals("account")) {
			String accName = (String)session.getAttribute("name");
			
			Users user = new Users();
			FetchUserInfo fui = new FetchUserInfo();
			
			user.setName(accName);
			
			fui.FetchUser(user);
			
			
			session.setAttribute("accInfo", user);
			
			response.sendRedirect("account.jsp");
			
			
		}else if(action.equals("location_form")) {
			String location = request.getParameter("location");
			session.setAttribute("location", location);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}

}
