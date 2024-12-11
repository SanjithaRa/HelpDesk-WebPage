package Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDButil {

	private static Connection con = null;
    private static Statement state = null;
    private static ResultSet rs = null;

    // Insert payment method
    public static boolean insertEmployee(String empid, String ename, String eage, String experience, String position, String email, String pnum) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "INSERT INTO employee (name, age, experience, position, email,pnum) VALUES (?, ?, ?, ?, ?,?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,ename );
            pstmt.setString(2, eage);
            pstmt.setString(3, experience );
            pstmt.setString(4,position );
            pstmt.setString(5, email);
            pstmt.setString(6, pnum);

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
    
    public static List<Employee> getEmployeeDetails() {
        ArrayList<Employee> payList = new ArrayList<>();

        try {
            con = DBConnector.getConnection();
            String sql = "SELECT * FROM employee";
            state = con.createStatement();
            rs = state.executeQuery(sql);

            while (rs.next()) {
            	
                int empid = rs.getInt(1);
                String name = rs.getString(2);
                String age= rs.getString(3);
                String experience = rs.getString(4);
                String position = rs.getString(5);
                String email = rs.getString(6);
                String pnum = rs.getString(7);

                Employee p1 = new Employee(empid,name ,age,experience ,position ,email,pnum );
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
    
    
    public static boolean updateEmployee(String empId, String  name, String age , String experience, String position, String email,String pnum) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "UPDATE employee SET name=?, age=?, experience=?, position=?, email=? ,pnum=?  WHERE empId=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, age);
            pstmt.setString(3, experience);
            pstmt.setString(4, position);
            pstmt.setString(5, email);
            pstmt.setString(6, pnum);
            pstmt.setString(7, empId);

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
    
    public static boolean deleteEmployee(String employeeId) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "DELETE FROM employee WHERE empId=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,employeeId );

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
