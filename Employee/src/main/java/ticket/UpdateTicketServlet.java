package ticket;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateTicketServlet")
public class UpdateTicketServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Retrieve parameters from the request
        String tidStr = request.getParameter("tid");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("date");
        String concern = request.getParameter("concern");

        // Print out the values
        System.out.println("Ticket ID: " + tidStr);
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Phone Number: " + phone);
        System.out.println("Submitted Date: " + date);
        System.out.println("Concern: " + concern);

        boolean isSuccess;
        
        // Convert tid from String to int
        int tid = 0;
        try {
            tid = Integer.parseInt(tidStr);  // Convert to int
        } catch (NumberFormatException e) {
            System.out.println("Invalid Ticket ID format: " + tidStr);
            RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
            dis.forward(request, response);
            return; // Exit the method early
        }

        // Call the update method
        isSuccess = TicketDButil.updateTicket(tid, name, email, phone, date, concern);

        if (isSuccess) {
            RequestDispatcher dis = request.getRequestDispatcher("Displayticket.jsp");
            dis.forward(request, response);
        } else {
            // Debugging: Log failure
            System.out.println("Ticket update failed in the database.");
            RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
            dis.forward(request, response);
        }
    }
}
