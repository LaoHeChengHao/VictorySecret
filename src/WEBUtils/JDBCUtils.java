package WEBUtils;

import java.sql.*;

public class JDBCUtils {
    
    
    public static Connection getConnection(){
        Connection conn=null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/victoria","root","root");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return  conn;
    }


    public static void close(ResultSet rs, PreparedStatement ps,Connection conn){

        if (rs!=null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (ps!=null){
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if (conn!=null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }
    
}
