package org.netsetos.command;

import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.*; 
import javax.sql.*;
import javax.naming.*;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.google.api.client.json.gson.*;

import javax.servlet.ServletException;
import javax.servlet.http.*;

//import com.google.api.client.json.JsonFactory;
////import com.google.api.client.json.jackson2.JacksonFactory;
//import com.google.api.services.translate.Translate;
//import com.google.api.services.translate.Translate.Translations;
//import com.google.api.services.translate.model.TranslationsListResponse;
//import com.google.api.services.translate.model.TranslationsResource;

public class ConnectionManager extends HttpServlet  {
	
	private static final long serialVersionUID = 1L;
	 
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Connection result = null;
		HttpSession session=request.getSession();
		ResultSet rs=null;
		ResultSet rsemail=null;  
		Statement stmt = null;
		Statement stmte = null; 
		try {
			// Grab the variables from the form.
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String email = request.getParameter("email") ;
			String emailpassword  = "fromemail";
			System.out.println("email is "+email);
			
			String postuser = System.getenv("POSTGRESQL_USER");
			
			String postpass = System.getenv("DATABASE_SERVICE_HOST");
			
		//	String postdata = System.getenv("${APPLICATION_NAME}");
			
		//	String postapp = System.getenv("APPLICATION_NAME");
			
			System.out.println("postuser-"+postuser);
			
			System.out.println("postpass --"+postpass);
			
		//	System.out.println("postdata-App-"+postdata);
			
		//	System.out.println("postdata-App-"+postapp);

		   Context initialContext = new InitialContext();
		    DataSource datasource = (DataSource)initialContext.lookup("java:jboss/datasources/PostgreSQLDS");
		    result = datasource.getConnection();
			response.sendRedirect("EnvSetup.jsp");
			    
		} catch (Exception ex) {
			response.sendRedirect("EnvSetup.jsp");
			ex.printStackTrace();
		    System.out.println("Exception:  " + ex + ex.getMessage());
		}
		finally{
		    try { if (rs != null) rs.close(); } catch (Exception e) {};
		    try { if (stmt != null) stmt.close(); } catch (Exception e) {};
		    try { if (result != null) result.close(); } catch (Exception e) {};
	}

		
	}

}
