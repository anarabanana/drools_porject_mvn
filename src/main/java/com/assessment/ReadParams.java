package com.assessment;
//package drools_project.src.main.java;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.assessment.UserInfo.Category;
import com.assessment.UserInfo.Degree;



/*import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;*/


/**
 * Servlet implementation class ReadParams
 */
@WebServlet("/ReadParams")
public class ReadParams extends HttpServlet {
	EngineInit init;
	HttpSession session;
	String[] paramValues;
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReadParams() {

		super();
		// TODO Auto-generated constructor stub
	}
	public void init() throws ServletException {
		  // Initialization code...
		init = new EngineInit();
		init.initializeDrools();
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		doPost(request, response);
	}

	// Method to handle POST method request.
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Enumeration paramNames = request.getParameterNames();
		PrintWriter out = response.getWriter();
		/*while (paramNames.hasMoreElements()) {
			String paramName = (String) paramNames.nextElement();
			paramValues = request.getParameterValues(paramName);
			String paramValue = paramValues[0];
		}*/

		List<String> myList = new ArrayList<String>();
		myList.add(request.getParameter("v1"));
		myList.add(request.getParameter("v2"));
		myList.add(request.getParameter("v3"));
		myList.add(request.getParameter("v4"));
		myList.add(request.getParameter("v5"));
		
			// Read single valued data
	//		if (paramValues.length == 1)

				//out.println(paramValue);
		Double ob_res = 0.0;
		Double ob_res2 = 0.0;
		Double ob_res3 = 0.0;
		Double ob_res4 = 0.0;
		Double ob_res5 = 0.0;
		//,ob_res2,ob_res3,ob_res4,ob_res5 = 0.0;
		if (myList.get(0).toString().equalsIgnoreCase("high")){
			UserInfo ob = new UserInfo(Category.var_1, Degree.high);
			ob = init.runRules(ob);
			ob_res = ob.calculateResult();	
		} else if (myList.get(0).toString().equalsIgnoreCase("medium")) {
			UserInfo ob = new UserInfo(Category.var_1, Degree.medium);
			ob = init.runRules(ob);
			ob_res = ob.calculateResult();
		} else if (myList.get(0).toString().equalsIgnoreCase("low")) {
			UserInfo ob = new UserInfo(Category.var_1, Degree.low);
			ob = init.runRules(ob);
			ob_res = ob.calculateResult();
		}
		
		if (myList.get(1).toString().equalsIgnoreCase("high")){
			UserInfo ob2 = new UserInfo(Category.var_2, Degree.high);
			ob2 = init.runRules(ob2);
			ob_res2 = ob2.calculateResult();
		} else if (myList.get(1).toString().equalsIgnoreCase("medium")) {
			UserInfo ob2 = new UserInfo(Category.var_2, Degree.medium);
			ob2 = init.runRules(ob2);
			ob_res2 = ob2.calculateResult();
		} else if (myList.get(1).toString().equalsIgnoreCase("low")) {
			UserInfo ob2 = new UserInfo(Category.var_2, Degree.low);
			ob2 = init.runRules(ob2);
			ob_res2 = ob2.calculateResult();
		}
		
		if (myList.get(2).toString().equalsIgnoreCase("high")){
			UserInfo ob3 = new UserInfo(Category.var_3, Degree.high);
			ob3 = init.runRules(ob3);
			ob_res3 = ob3.calculateResult();
		} else if (myList.get(2).toString().equalsIgnoreCase("medium")) {
			UserInfo ob3 = new UserInfo(Category.var_3, Degree.medium);
			ob3 = init.runRules(ob3);
			ob_res3 = ob3.calculateResult();
		} else if (myList.get(2).toString().equalsIgnoreCase("low")) {
			UserInfo ob3 = new UserInfo(Category.var_3, Degree.low);
			ob3 = init.runRules(ob3);
			ob_res3 = ob3.calculateResult();
		}
		
		if (myList.get(3).toString().equalsIgnoreCase("high")){
			UserInfo ob4 = new UserInfo(Category.var_4, Degree.high);
			ob4 = init.runRules(ob4);
			ob_res4 = ob4.calculateResult();
		} else if (myList.get(3).toString().equalsIgnoreCase("medium")) {
			UserInfo ob4 = new UserInfo(Category.var_4, Degree.medium);
			ob4 = init.runRules(ob4);
			ob_res4 = ob4.calculateResult();
		} else if (myList.get(3).toString().equalsIgnoreCase("low")) {
			UserInfo ob4 = new UserInfo(Category.var_4, Degree.low);
			ob4 = init.runRules(ob4);
			ob_res4 = ob4.calculateResult();
		}
		
		if (myList.get(4).toString().equalsIgnoreCase("high")){
			UserInfo ob5 = new UserInfo(Category.var_5, Degree.high);
			ob5 = init.runRules(ob5);
			ob_res5 = ob5.calculateResult();
		} else if (myList.get(4).toString().equalsIgnoreCase("medium")) {
			UserInfo ob5 = new UserInfo(Category.var_5, Degree.medium);
			ob5 = init.runRules(ob5);
			ob_res5 = ob5.calculateResult();
		} else if (myList.get(4).toString().equalsIgnoreCase("low")) {
			UserInfo ob5 = new UserInfo(Category.var_5, Degree.low);
			ob5 = init.runRules(ob5);
			ob_res5 = ob5.calculateResult();
		}
			
/*		

		UserInfo ob2 = new UserInfo(Category.var_2, Degree.high);
		ob2 = init.runRules(ob2);
		UserInfo ob3 = new UserInfo(Category.var_3, Degree.high);
		ob3 = init.runRules(ob3);
		UserInfo ob4 = new UserInfo(Category.var_4, Degree.high);
		ob4 = init.runRules(ob4);
		UserInfo ob5 = new UserInfo(Category.var_5, Degree.high);
		ob5 = init.runRules(ob5);*/
		
		Double res = (ob_res+ob_res2+ob_res3+ob_res4+ob_res5)/5;

		System.out.println("Total ER index is " + res);
		session = request.getSession();
		session.setAttribute("object", res);
		session.setAttribute("ob", ob_res);
		session.setAttribute("ob2", ob_res2);
		session.setAttribute("ob3", ob_res3);
		session.setAttribute("ob4", ob_res4);
		session.setAttribute("ob5", ob_res5);
		
		
		  
		String nextJSP = "/Results.jsp";
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request,response);
	}

}
