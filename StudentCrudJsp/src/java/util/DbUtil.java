
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbUtil {
    
     private String driver = "com.mysql.cj.jdbc.Driver";

    private String url = "jdbc:mysql://localhost:3306/student-crud";
    private String username = "root";
    private String password = "";
    
    public Connection connection;
    
    public Connection getConnection(){
         try {
             Class.forName(driver);
             connection = DriverManager.getConnection(url, username, password);
         } catch (Exception e) {
             Logger.getLogger(DbUtil.class.getName()).log(Level.SEVERE, null, e);
         }
          return connection;
    }
     
    
}
