package ticket;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TicketViewServlet")
public class TicketViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//get the ticket details to display it 
			List<Ticket> ticketdetails= TicketDButil.getTicketDetails();
			request.setAttribute("ticketdetails", ticketdetails);

		}catch (Exception e) {
			e.printStackTrace();
		}
		//redirecting from the servlet to
		RequestDispatcher dis= request.getRequestDispatcher("Ticketdetails.jsp");
		dis.forward(request,response);
	}

}
