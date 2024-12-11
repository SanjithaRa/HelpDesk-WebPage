package appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AppViewServlet")
public class AppViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//get the appointment details to display it 
			List<Appointment> appdetails= AppointmentDButil.getAppointmentDetails();
			request.setAttribute("appdetails",appdetails);

		}catch (Exception e) {
			e.printStackTrace();
		}
		//redirecting from the servlet to
		RequestDispatcher dis= request.getRequestDispatcher("Appdetails.jsp");
		dis.forward(request, response);
	}

}
