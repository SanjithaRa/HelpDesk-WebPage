package Employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EmployeeInsertServlet")
public class EmployeeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name =request.getParameter("ename");
		String empid=request.getParameter("empid");
		String eage=request.getParameter("eage");
		String exp=request.getParameter("exp");
		String position=request.getParameter("position");
		String email=request.getParameter("email");
		String num=request.getParameter("num");
		
		boolean istrue;
		
		istrue= EmployeeDButil.insertEmployee(empid, name, eage, exp, position, email, num);
		
		//if the data was passed to the database successfully 
		if(istrue==true) {
			
			RequestDispatcher dis= request.getRequestDispatcher("DisplayMsg.jsp");
			dis.forward(request, response);
		}
		//if data did not passed successfully
		else {
			
			RequestDispatcher dis= request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
