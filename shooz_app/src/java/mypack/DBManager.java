
package mypack;

import java.sql.*;
import java.text.SimpleDateFormat;

public class DBManager {

    public DBManager() throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
    }

    /* this method is use to get connection  */
    public Connection getCon() {
        try {
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/shoes", "root", "mysql");
        } catch (Exception e) {
            return null;
        }
    }

    /* this method is use to insert,update and delete record in database */
    public boolean executeNonQuery(String sql) {
        try {
            PreparedStatement ps = getCon().prepareStatement(sql);
            int n = ps.executeUpdate();
            return (n > 0) ? true : false;

        } catch (Exception e) {
            return false;

        }
    }
    /* this method is use to select record from database */

    public ResultSet getRecord(String sql) {
        try {
            PreparedStatement ps = getCon().prepareStatement(sql);
            return ps.executeQuery();
        } catch (Exception e) {
            return null;
        }
    }
    /* this method is use to get current date */

    public String getCurrentDate() {
        java.util.Date d = new java.util.Date();
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

        return sdf.format(d);
    }
    
    public String getAlert(String message,String pagename)
    {
        String msg="<script>alert('"+message+"');window.location.href='"+pagename+"';</script>";
        return msg;
    }

}
