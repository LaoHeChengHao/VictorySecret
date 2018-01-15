package cn.bdqn.test;

import java.sql.Connection;

import org.junit.Test;

import cn.bdqn.util.JDBCUtils;

/**
 * 测试数据库的连接
 * @author asus
 *
 */
public class TestConn {
	@Test
	public void testConnection(){
		Connection conn=JDBCUtils.getConnection();
		System.out.println(conn);
	}

}
