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
//import com.google.api.client.json.jackson2.JacksonFactory;
//import com.google.api.services.translate.Translate;
//import com.google.api.services.translate.Translate.Translations;
//import com.google.api.services.translate.model.TranslationsListResponse;
//import com.google.api.services.translate.model.TranslationsResource;


public class ConnectionManager  extends HttpServlet {
	
		private static final long serialVersionUID = 1L;
		

	 
		protected void doGet(HttpServletRequest request, 
				HttpServletResponse response) throws ServletException, IOException {

			
			HttpSession session=request.getSession();
			
			
				// Grab the variables from the form.
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String email = request.getParameter("email") ;
				
				System.out.println("email is "+email);
				System.out.println("username"+username);
				System.out.println("password"+password);
				
				response.sendRedirect("WelcomeTanuSarthak.html");

			 			
		}



}
