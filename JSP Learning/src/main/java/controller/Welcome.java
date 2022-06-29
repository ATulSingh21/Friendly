package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Register;
import java.sql.*;
/**
 * Servlet implementation class Welcome
 */
@WebServlet("/Welcome")
public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Welcome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("views/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out= response.getWriter();
		Register obj=new Register();
		obj.setUsername(request.getParameter("UserName"));
		obj.setPassword(request.getParameter("Password"));
		out.println("<html><body>");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","Test@123$");
			Statement st=con.createStatement();
			int x=st.executeUpdate("insert into registeration(username,password) values('"+obj.getUsername()+"','"+obj.getPassword()+"')");
			ResultSet rs = st.executeQuery("select * from registeration");  
			out.println("<table border=1 width=50% height=50%>");
			out.println("<tr><th>UserName</th><th>Password</th><tr>");
			if(x!=0) {
				out.println("Data inserted succesfully");
				while(rs.next()) {
				String user=rs.getString("username");
				String pass=rs.getString("password");
				out.println("<tr><td>"+user+"</td><td>"+pass+"</td></tr>");
			}}
			else {
				out.println("Data not inserted succesfully");
			}
	}catch (Exception ex) {
		out.println(ex);
	}
		out.println("<html><body>");
	}	
}
