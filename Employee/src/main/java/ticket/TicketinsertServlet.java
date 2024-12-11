package ticket;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TicketinsertServlet")
public class TicketinsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name =request.getParameter("tname");
		String tid =request.getParameter("tid");
		String email=request.getParameter("temail");
		String phone=request.getParameter("tphone");
		String date=request.getParameter("date");
		String concern=request.getParameter("concern");
		
		boolean istrue;//to catch the result got from the model class method
		
		istrue= TicketDButil.insertTicket(name, email, phone, date, concern);
		
		//if the data was passed to the database successfully 
		if(istrue==true) {
			//redirecting from the servlet to
			RequestDispatcher dis= request.getRequestDispatcher("Displayticket.jsp");
			dis.forward(request, response);
		}
		//if the data wasn't passed to the database successfully 
		else {
			//redirecting from the servlet to
			RequestDispatcher dis= request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request,response);
		}
	}

}
