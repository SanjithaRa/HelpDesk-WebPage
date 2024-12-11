package Employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EmployeeView")
public class EmployeeView extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			//get the payment details to display it 
			List<Employee> empdetails= EmployeeDButil.getEmployeeDetails();
			request.setAttribute("empdetails",empdetails);

		}catch (Exception e) {
			e.printStackTrace();
		}
		//redirecting from the servlet to
		RequestDispatcher dis= request.getRequestDispatcher("EmpDetails.jsp");
		dis.forward(request, response);
	}

}
