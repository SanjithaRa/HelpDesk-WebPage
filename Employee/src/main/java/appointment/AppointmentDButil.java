package appointment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class AppointmentDButil {

	private static Connection con = null;
    private static Statement state = null;
    private static ResultSet rs = null;
    private static boolean isSuccess;
    private static Statement stmt;

    
    //to validate the logins
    public static boolean validate(String userName, String Password)
	{
		try
		{
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+userName+"' and password ='"+Password+"' ";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
	}

    
    
  //to get the customer details according to the username
  	public static List<Customer> getCustomer(String userName)
  	{
  		ArrayList <Customer> customer = new ArrayList<>(); // to obtain all customer's data into a array list
  		
  	
  		try {
  			con = DBConnector.getConnection();
  			stmt = con.createStatement();
  			String sql = "select * from customer where username ='"+userName+"'";
  			rs =stmt.executeQuery(sql);
  			
  			while(rs.next())
  			{
  				int id = rs.getInt(1);
  				String name = rs.getString(2);
  				String email = rs.getString(3);
  				String phoneNo = rs.getString(4);
  				String Uname = rs.getString(5);
  				String pass = rs.getString(6);
  				
  				Customer cus = new Customer(id,name,email,phoneNo,Uname,pass);
  				
  				customer.add(cus);
  			}
  		}
  		catch(Exception e)
  		{
  			
  		}
  		return customer;
  	}
    
   
    // Insert payment method
    public static boolean insertAppointment(String name, String appid, String email, String expert, String date, String concern) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "INSERT INTO appointment (name, email, expertname, date, concern) VALUES (?, ?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,name );
            pstmt.setString(2, email);
            pstmt.setString(3, expert );
            pstmt.setString(4, date);
            pstmt.setString(5, concern);

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
    
    
    //get all details
    
    public static List<Appointment> getAppointmentDetails() {
        ArrayList<Appointment> appList = new ArrayList<>();

        try {
            con = DBConnector.getConnection();
            String sql = "SELECT * FROM appointment";
            state = con.createStatement();
            rs = state.executeQuery(sql);

            while (rs.next()) {
            	
                int appid = rs.getInt(1);
                String name = rs.getString(2);
                String email= rs.getString(3);
                String expertname = rs.getString(4);
                String date = rs.getString(5);
                String concern = rs.getString(6);

                Appointment p1 = new Appointment(appid,name ,email,expertname ,date ,concern );
                appList.add(p1);
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

        return appList;
    }
    
    
    //to update the appointment
    public static boolean updateAppointment(String id, String  name, String email , String expertname, String date, String concern) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "UPDATE appointment SET name=?, email=?, expertname=?, date=?, concern=? WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, expertname);
            pstmt.setString(4, date);
            pstmt.setString(5, concern);
            pstmt.setString(6, id);

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
    
    //to delete the appointment
    public static boolean deleteAppointment(String appointmentID) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "DELETE FROM appointment WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,appointmentID );

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
