package context;
import java.sql.*;

public class DbContext {
    
    private static final String serverName = "MSI\\SHHANDSOME"; // Sử dụng tên instance SQL Server từ ảnh
    private static final String dbName = "HoaTuoiDB";
    private static final String portNumber = "1433";  
    private static final String userID = "sa";
    private static final String password = "sa";
    
    public static Connection getConnection()
    {
        Connection conn = null;
        try { 
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            // Định nghĩa chuỗi kết nối URL
            String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
            // Thiết lập kết nối
            conn = DriverManager.getConnection(url, userID, password);       
        } catch (Exception ex) {
            System.out.println("Error: " + ex.toString());
        }
        return conn;
    }
    
    public static void main(String[] args)
    {
        System.out.println("Kết quả kết nối: " + DbContext.getConnection());
    }
}
