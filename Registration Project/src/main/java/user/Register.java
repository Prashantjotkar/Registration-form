package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out=resp.getWriter();  
		String Name=req.getParameter("user_name");
		String password=req.getParameter("user_pass");
		String email=req.getParameter("user_email");
		
		try {
			Thread.sleep(2000);
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","1002");
			String p="insert into user(Name,password,email)values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(p);
			ps.setString(1,Name);
			ps.setString(2,password);
			ps.setString(3,email);
			ps.executeUpdate();
			out.println("Done");

		}
		catch(Exception e) {
			e.printStackTrace();
			out.println("Error");

		}


		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
