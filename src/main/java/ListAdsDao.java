import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

public class ListAdsDao implements Ads {
    private Connection connection = null;
    private Config config = new Config();
    private List<Ad> ads;

    public ListAdsDao() {
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public List<Ad> all() {
        Statement statement = null;
        try{
            statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ads");
//            rs.next();
//            System.out.println("rs.getString(\"title\") = " + rs.getString("title"));
//            System.out.println("rs.getString(\"description\") = " + rs.getString("description"));
            ads.add(new Ad(
               rs.getLong("id"),
               rs.getLong("user_id"),
               rs.getString("title"),
               rs.getString("description")
            ));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return ads;
    }

    public Long insert(Ad ad) {
        return 0L;
    }

}

