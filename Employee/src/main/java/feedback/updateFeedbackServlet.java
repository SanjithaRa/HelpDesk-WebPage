package feedback;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateFeedbackServlet")
public class updateFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String name =request.getParameter("name");
		String date=request.getParameter("date");
		String email =request.getParameter("email");
		String feedback=request.getParameter("feedback");
		

		// Debugging: Print out the values
		System.out.println("FeedBack ID : " + id );
		System.out.println("Name : " + name);
		System.out.println("Date : " + date);
		System.out.println("email : " + email);
		System.out.println("FeedBack: " + feedback);

		boolean istrue;
		istrue = feedbackDButil.updateFeedback(id, name, date, email, feedback);

		if (istrue) {
			RequestDispatcher dis = request.getRequestDispatcher("DisplayFeed.jsp");
			dis.forward(request, response);
		} else {
			// Debugging: Log failure
			System.out.println("Payment update failed in database.");
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
