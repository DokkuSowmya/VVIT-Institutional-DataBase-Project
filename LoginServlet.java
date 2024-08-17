import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            // JDBC connection to your MySQL database
        	Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish connection to MySQL database
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/vvit", "root", "mysql");

            // Query to check if the user exists
            String sql = "SELECT * FROM logins WHERE username = ? AND password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // User exists, redirect to a success page
                response.sendRedirect("AdminDashboard.html");
            } else {
                // User does not exist or credentials are incorrect, redirect to an error page
                response.sendRedirect("loginerror.html");
            }

            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("Dashboard.jsp");
        }	
	}

}