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

		List<String> myList = new ArrayList<String>();

		List<String> myListV1 = new ArrayList<String>();
		myListV1.add(request.getParameter("v1_1"));
		myListV1.add(request.getParameter("v1_2"));
		myListV1.add(request.getParameter("v1_3"));
		myListV1.add(request.getParameter("v1_4"));

		int v1_av = 0;

		if (myListV1.get(0).toString().equalsIgnoreCase("high")) {
			v1_av += 25;
		} else if (myListV1.get(0).toString().equalsIgnoreCase("medium")) {
			v1_av += 12.25;
		} else if (myListV1.get(0).toString().equalsIgnoreCase("low")) {
			v1_av += 0;
		}

		if (myListV1.get(1).toString().equalsIgnoreCase("high")) {
			v1_av += 25;
		} else {
			v1_av = v1_av + 1;
		}

		if (myListV1.get(2).toString().equalsIgnoreCase("high")) {
			v1_av += 25;
		} else if (myListV1.get(2).toString().equalsIgnoreCase("medium")) {
			v1_av += 12.25;
		} else if (myListV1.get(2).toString().equalsIgnoreCase("low")) {
			v1_av += 0;
		}
		if (myListV1.get(3).toString().equalsIgnoreCase("high")) {
			v1_av += 25;
		} else if (myListV1.get(3).toString().equalsIgnoreCase("medium")) {
			v1_av += 12.25;
		} else if (myListV1.get(3).toString().equalsIgnoreCase("low")) {
			v1_av += 0;
		}

		if (v1_av >= 66) {
			myList.add("high");
		} else if (v1_av < 66 && v1_av >= 33) {
			myList.add("medium");
		} else {
			myList.add("low");
		}

		List<String> myListV2 = new ArrayList<String>();
		myListV2.add(request.getParameter("v2_1"));
		myListV2.add(request.getParameter("v2_2"));
		myListV2.add(request.getParameter("v2_3"));
		myListV2.add(request.getParameter("v2_4"));
		myListV2.add(request.getParameter("v2_5"));

		int v2_av = 0;

		if (myListV2.get(0).toString().equalsIgnoreCase("high")) {
			v2_av += 20;
		} else if (myListV2.get(0).toString().equalsIgnoreCase("low")) {
			v2_av += 0;
		}

		if (myListV2.get(1).toString().equalsIgnoreCase("high")) {
			v2_av += 20;
		} else if (myListV2.get(1).toString().equalsIgnoreCase("medium")) {
			v2_av += 10;
		} else {
			v2_av = v2_av + 1;
		}

		if (myListV2.get(2).toString().equalsIgnoreCase("high")) {
			v2_av += 20;
		} else if (myListV2.get(2).toString().equalsIgnoreCase("low")) {
			v2_av += 0;
		}
		if (myListV2.get(3).toString().equalsIgnoreCase("high")) {
			v2_av += 20;
		} else if (myListV2.get(3).toString().equalsIgnoreCase("medium")) {
			v2_av += 10;
		} else if (myListV2.get(3).toString().equalsIgnoreCase("low")) {
			v2_av += 1;
		}

		if (myListV2.get(4).toString().equalsIgnoreCase("high")) {
			v2_av += 20;
		} else if (myListV2.get(4).toString().equalsIgnoreCase("low")) {
			v2_av += 0;
		}

		if (v1_av >= 66) {
			myList.add("high");
		} else if (v2_av < 66 && v2_av >= 33) {
			myList.add("medium");
		} else {
			myList.add("low");
		}

		List<String> myListV3 = new ArrayList<String>();
		myListV3.add(request.getParameter("v3_1"));
		myListV3.add(request.getParameter("v3_2"));
		myListV3.add(request.getParameter("v3_3"));

		int v3_av = 0;

		if (myListV3.get(0).toString().equalsIgnoreCase("high")) {
			v3_av += 33;
		} else if (myListV3.get(0).toString().equalsIgnoreCase("medium")) {
			v3_av += 16;
		} else {
			v3_av = v3_av + 1;
		}
		if (myListV3.get(1).toString().equalsIgnoreCase("high")) {
			v3_av += 33;
		} else if (myListV3.get(1).toString().equalsIgnoreCase("medium")) {
			v3_av += 16;
		} else {
			v3_av = v3_av + 1;
		}
		if (myListV3.get(2).toString().equalsIgnoreCase("high")) {
			v3_av += 33;
		} else if (myListV3.get(2).toString().equalsIgnoreCase("medium")) {
			v3_av += 16;
		} else {
			v3_av = v3_av + 1;
		}

		if (v3_av >= 66) {
			myList.add("high");
		} else if (v3_av < 66 && v3_av >= 33) {
			myList.add("medium");
		} else {
			myList.add("low");
		}

		List<String> myListV4 = new ArrayList<String>();
		myListV4.add(request.getParameter("v4_1"));
		myListV4.add(request.getParameter("v4_2"));
		myListV4.add(request.getParameter("v4_3"));

		int v4_av = 0;

		if (myListV4.get(0).toString().equalsIgnoreCase("high")) {
			v4_av += 33;
		} else {
			v4_av = v4_av + 1;
		}
		if (myListV4.get(1).toString().equalsIgnoreCase("high")) {
			v4_av += 33;
		} else {
			v4_av = v4_av + 1;
		}
		if (myListV4.get(2).toString().equalsIgnoreCase("high")) {
			v4_av += 33;
		} else {
			v4_av = v4_av + 1;
		}

		if (v4_av >= 66) {
			myList.add("high");
		} else if (v4_av < 66 && v4_av >= 33) {
			myList.add("medium");
		} else {
			myList.add("low");
		}

		List<String> myListV5 = new ArrayList<String>();
		myListV5.add(request.getParameter("v5_1"));
		myListV5.add(request.getParameter("v5_2"));

		int v5_av = 0;

		if (myListV5.get(0).toString().equalsIgnoreCase("high")) {
			v5_av += 50;
		} else if (myListV5.get(0).toString().equalsIgnoreCase("medium")) {
			v5_av += 25;
		} else {
			v4_av = v4_av + 1;
		}

		if (myListV5.get(1).toString().equalsIgnoreCase("high")) {
			v5_av += 50;
		} else {
			v5_av = v5_av + 1;
		}

		if (v5_av >= 66) {
			myList.add("high");
		} else if (v5_av < 66 && v5_av >= 33) {
			myList.add("medium");
		} else {
			myList.add("low");
		}

		Double ob_res = 0.0;
		Double ob_res2 = 0.0;
		Double ob_res3 = 0.0;
		Double ob_res4 = 0.0;
		Double ob_res5 = 0.0;
		// ,ob_res2,ob_res3,ob_res4,ob_res5 = 0.0;
		if (myList.get(0).toString().equalsIgnoreCase("high")) {
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

		if (myList.get(1).toString().equalsIgnoreCase("high")) {
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

		if (myList.get(2).toString().equalsIgnoreCase("high")) {
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

		if (myList.get(3).toString().equalsIgnoreCase("high")) {
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

		if (myList.get(4).toString().equalsIgnoreCase("high")) {
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
		 * 
		 * UserInfo ob2 = new UserInfo(Category.var_2, Degree.high); ob2 =
		 * init.runRules(ob2); UserInfo ob3 = new UserInfo(Category.var_3,
		 * Degree.high); ob3 = init.runRules(ob3); UserInfo ob4 = new
		 * UserInfo(Category.var_4, Degree.high); ob4 = init.runRules(ob4);
		 * UserInfo ob5 = new UserInfo(Category.var_5, Degree.high); ob5 =
		 * init.runRules(ob5);
		 */

		Double res = (ob_res + ob_res2 + ob_res3 + ob_res4 + ob_res5) / 5;

		System.out.println("Total ER index is " + res);
		session = request.getSession();
		session.setAttribute("object", res);
		session.setAttribute("ob", ob_res);
		session.setAttribute("ob2", ob_res2);
		session.setAttribute("ob3", ob_res3);
		session.setAttribute("ob4", ob_res4);
		session.setAttribute("ob5", ob_res5);

		List<String> myListActivities = new ArrayList<String>();
		myListActivities.add("false");
		myListActivities.add("true");
		myListActivities.add("false");
		session.setAttribute("flag_activities", myListActivities);

		String nextJSP = "/Results.jsp";
		RequestDispatcher dispatcher = getServletContext()
				.getRequestDispatcher(nextJSP);
		dispatcher.forward(request, response);
	}

}
