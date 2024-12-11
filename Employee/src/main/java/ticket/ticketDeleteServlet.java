package ticket;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ticketDeleteServlet")
public class ticketDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String TicketID= request.getParameter("tid");
		
		boolean issuccess=TicketDButil.deleteTicket(TicketID);
		
		//if the data was passed to the database successfully 
		if(issuccess==true) 
		{	//redirecting from the servlet to
			RequestDispatcher dis1= request.getRequestDispatcher("Displayticket.jsp");
			dis1.forward(request, response);
		}
		//if the data wasn't passed to the database successfully 
		else 
		{	//redirecting from the servlet to
			RequestDispatcher dis2= request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
	}

}
