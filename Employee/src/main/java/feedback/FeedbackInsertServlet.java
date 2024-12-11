package feedback;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FeedbackInsertServlet")
public class FeedbackInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		String name =request.getParameter("nm");
		String date=request.getParameter("dt");
		String email=request.getParameter("em");
		String feedbackMessage =request.getParameter("fm");
	
		
		boolean istrue;//to catch the result got from the model class method
		
		istrue= feedbackDButil.insertFeedback(id,name, date, email, feedbackMessage);
		
		//if the data was passed to the database successfully 
		if(istrue==true) {
			//redirecting from the servlet to
			RequestDispatcher dis= request.getRequestDispatcher("DisplayFeed.jsp");
			dis.forward(request, response);
		}
		//if the data wasn't passed to the database successfully 
		else {
			//redirecting from the servlet to
			RequestDispatcher dis= request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}