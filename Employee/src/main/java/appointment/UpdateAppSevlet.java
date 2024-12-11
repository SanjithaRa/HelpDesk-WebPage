package appointment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateAppSevlet")
public class UpdateAppSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String appid = request.getParameter("appid");
		String name =request.getParameter("name");
		String email=request.getParameter("email");
		String expertname =request.getParameter("expertname");
		String date=request.getParameter("date");
		String concern=request.getParameter("concern");

		// Debugging: Print out the values
		System.out.println("Appointment id : " + appid );
		System.out.println("Name " + name);
		System.out.println("Email: " + email);
		System.out.println("Expert name: " + expertname );
		System.out.println("Preferred date : " + date);
		System.out.println("Concern : " + concern);

		boolean istrue;
		istrue = AppointmentDButil.updateAppointment(appid, name, email, expertname, date, concern);

		if (istrue) {
			RequestDispatcher dis = request.getRequestDispatcher("DisplayMessage.jsp");
			dis.forward(request, response);
		} else {
			// Debugging: Log failure
			System.out.println("Payment update failed in database.");
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	
	
	
	
	}

}
