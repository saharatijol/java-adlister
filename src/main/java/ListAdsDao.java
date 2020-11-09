import java.util.ArrayList;
import java.util.List;

import java.sql.DriverManager;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;

public class ListAdsDao implements Ads {
    private Connection connection = null;
    private Config config = new Config();
    private List<Ad> ads;

    public ListAdsDao()  {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    // SELECTING
    public List<Ad> all() {
        Statement statement = null;
        List <Ad> ads = new ArrayList<>();
        try{
            statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("SELECT * FROM ads");
//            rs.next();
//            System.out.println("rs.getString(\"title\") = " + rs.getString("title"));
//            System.out.println("rs.getString(\"description\") = " + rs.getString("description"));
            while(rs.next()) {
                ads.add(new Ad(
                        rs.getLong("id"),
                        rs.getLong("user_id"),
                        rs.getString("title"),
                        rs.getString("description")
                ));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return ads;
    }

    // INSERTING
    public Long insert(Ad ad) {
        long newAdInsert = 0;
        String sql = String.format("INSERT INTO ads(user_id, title, description) VALUES(%d, '%s', '%s')",
                ad.getUserId(), ad.getTitle(), ad.getDescription());
        try{
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = statement.getGeneratedKeys();
            //rs.next();
            if (rs.next()) {
                newAdInsert =  rs.getLong(1);
            }

        } catch (SQLException throwables){
            throwables.printStackTrace();
        }
        return newAdInsert;
    }

}

