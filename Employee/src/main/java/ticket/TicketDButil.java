package ticket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TicketDButil {
	
	private static Connection con = null;
    private static ResultSet rs = null;
    private static boolean isSuccess;
    private static Statement stmt;
	
    // Insert ticket method
    public static boolean insertTicket(String name, String email, String phone, String date, String concern) {
        boolean isSuccess = false;
        String sql = "INSERT INTO ticket (name, email, phone, date, concern) VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DBConnector.getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql)) {

            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, phone);
            pstmt.setString(4, date);
            pstmt.setString(5, concern);

            isSuccess = pstmt.executeUpdate() > 0;

        } catch (SQLException e) {
            System.err.println("SQL Exception during insert: " + e.getMessage());
        }

        return isSuccess;
    }

    public static List<Ticket> getTicketDetails() {
        List<Ticket> ticketList = new ArrayList<>();
        String sql = "SELECT * FROM ticket";

        try (Connection con = DBConnector.getConnection();
             Statement state = con.createStatement();
             ResultSet rs = state.executeQuery(sql)) {

            while (rs.next()) {
                int tid = rs.getInt("id"); // Ensure this matches DB
                String name = rs.getString("name");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String date = rs.getString("date");
                String concern = rs.getString("concern");

                Ticket ticket = new Ticket(tid, name, email, phone, date, concern);
                ticketList.add(ticket);
            }

        } catch (SQLException e) {
            System.err.println("SQL Exception during retrieval: " + e.getMessage());
        }

        return ticketList;
    }

    public static boolean updateTicket(int id, String name, String email, String phone, String date, String concern) {
        boolean isSuccess = false;
        String sql = "UPDATE ticket SET name=?, email=?, phone=?, date=?, concern=? WHERE id=?";

        try (Connection con = DBConnector.getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql)) {

            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, phone);
            pstmt.setString(4, date);
            pstmt.setString(5, concern);
            pstmt.setInt(6, id);  // Use setInt for integer ID

            int result = pstmt.executeUpdate();
            isSuccess = result > 0;

        } catch (SQLException e) {
            System.err.println("SQL Exception during update: " + e.getMessage());
        }

        return isSuccess;
    }

    public static boolean deleteTicket(String ticketID) {
        boolean isSuccess = false;
        String sql = "DELETE FROM ticket WHERE id=?";

        try (Connection con = DBConnector.getConnection();
             PreparedStatement pstmt = con.prepareStatement(sql)) {

            pstmt.setString(1, ticketID); // Use setInt for integer ID

            int result = pstmt.executeUpdate();
            isSuccess = result > 0;

        } catch (SQLException e) {
            System.err.println("SQL Exception during delete: " + e.getMessage());
        }

        return isSuccess;
    }
}
