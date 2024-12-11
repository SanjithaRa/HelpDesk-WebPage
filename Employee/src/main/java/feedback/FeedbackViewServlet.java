package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FeedbackViewServlet")
public class FeedbackViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//get the payment details to display it 
			List<Feedback> feedbackDetails= feedbackDButil.getFeedbackDetails();
			request.setAttribute("feedbackDetails",feedbackDetails);

		}catch (Exception e) {
			e.printStackTrace();
		}
		//redirecting from the servlet to
		RequestDispatcher dis= request.getRequestDispatcher("feedbackDetails.jsp");
		dis.forward(request, response);
	}

}
