package Employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateEmpServlet")
public class UpdateEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empid = request.getParameter("empid");
		String name =request.getParameter("name");
		String age=request.getParameter("age");
		String experience =request.getParameter("experience");
		String position=request.getParameter("position");
		String email=request.getParameter("email");
		String pnum=request.getParameter("pnum");

		// Debugging: Print out the values
		System.out.println("Employee ID: " + empid );
		System.out.println("Employee Name: " + name);
		System.out.println("Employee age: " + age);
		System.out.println("Experience: " + experience );
		System.out.println("Desired position: " + position);
		System.out.println("Email: " + email);
		System.out.println("phone number: " + pnum);

		boolean istrue;
		istrue = EmployeeDButil.updateEmployee(empid, name, age, experience, position, email, pnum);

		if (istrue) {
			RequestDispatcher dis = request.getRequestDispatcher("DisplayMsg.jsp");
			dis.forward(request, response);
		} else {
			// Debugging: Log failure
			System.out.println("Payment update failed in database.");
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
