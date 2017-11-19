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

public class ConnectionManager extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String databaseURL = "jdbc:postgresql://";
			databaseURL += System.getenv("POSTGRESQL_SERVICE_HOST");
			databaseURL += "/" + System.getenv("POSTGRESQL_DATABASE");

			String username = System.getenv("POSTGRESQL_USER");
			String password = System.getenv("PGPASSWORD");
			connection = DriverManager.getConnection(databaseURL, username, password);

			if (connection != null) {
				System.out.println("connection " + connection);

			} else {
				System.out.println("else conn ");
			}

		} catch (Exception ex) {
			response.sendRedirect("EnvSetup.jsp");
			ex.printStackTrace();
			System.out.println("Exception:  " + ex + ex.getMessage());
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
			}
			;
			try {
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
			}
			;
			try {
				if (connection != null)
					connection.close();
			} catch (Exception e) {
			}
			;
		}

	}

}
