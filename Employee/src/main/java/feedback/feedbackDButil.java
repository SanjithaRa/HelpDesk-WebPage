package feedback;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class feedbackDButil {
    private static boolean isSuccess;
    private static Statement stmt;
	private static Connection con = null;
	private static Statement state = null;
    private static ResultSet rs = null;
    
    // Insert payment method
    public static boolean insertFeedback(String id, String nm, String dt, String em, String fm) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "INSERT INTO feedback (name, date, email, feedbackmessage) VALUES (?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,nm);
            pstmt.setString(2,dt);
            pstmt.setString(3,em);
            pstmt.setString(4,fm);
  

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }
    public static List<Feedback> getFeedbackDetails() {
        ArrayList<Feedback> payList = new ArrayList<>();

        try {
            con = DBConnector.getConnection();
            String sql = "SELECT * FROM feedback";
            state = con.createStatement();
            rs = state.executeQuery(sql);

            while (rs.next()) {
            	
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String date= rs.getString(3);
                String email = rs.getString(4);
                String 	Feedback = rs.getString(5);
               

               Feedback p1 = new Feedback(id,name,date,email,Feedback);
                payList.add(p1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (state != null) state.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return payList;
    }
    
    public static boolean updateFeedback(String id, String  name, String date , String email, String feedbackmessage) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "UPDATE feedback SET name=?, date=?, email=?, feedbackmessage=? WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, date);
            pstmt.setString(3, email);
            pstmt.setString(4, feedbackmessage);
            pstmt.setString(5, id);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }
    
    public static boolean deleteFeedback(String feedbackID) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "DELETE FROM feedback WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,feedbackID );

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }
}