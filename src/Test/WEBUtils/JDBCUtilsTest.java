package WEBUtils;

import org.testng.annotations.Test;

import java.sql.Connection;

import static org.testng.Assert.*;

public class JDBCUtilsTest {
    @Test
    public void testGetConnection() throws Exception {

        Connection connection = JDBCUtils.getConnection();
        System.out.println(connection);

    }

}