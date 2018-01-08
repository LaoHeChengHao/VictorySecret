package dao;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import utils.JDBCUtil;


public class BaseDao<T> {

	QueryRunner runn=new QueryRunner();
	
	

	private Class<T> type;
	@SuppressWarnings("unchecked")
	
	public BaseDao(){

		ParameterizedType pt=(ParameterizedType) this.getClass().getGenericSuperclass();

		Type[] types = pt.getActualTypeArguments();

		this.type=(Class<T>) types[0];		
	}
	

 
	public int update(String sql,Object...args){
		int count=0;

		Connection conn=JDBCUtil.getConnection();
		

		try {

			count=runn.update(conn, sql, args);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeConnection(null, null, conn);
		}
		return count;
		
	}
	
	
	public T getBean(String sql,Object...args){
		T t=null;
		Connection conn=JDBCUtil.getConnection();

		try {
			
			t=runn.query(conn, sql, new BeanHandler<T>(type), args);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeConnection(null, null, conn);
		}
		return t;
		
	}
	
	
	public List<T> getListBean(String sql,Object...args){
		List<T> list=new ArrayList<T>();
		//连接数据库
		Connection conn=JDBCUtil.getConnection();
		
		
		try {
			
			list=runn.query(conn, sql, new BeanListHandler<T>(type), args);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeConnection(null, null, conn);
		}
		return list;
		
	}
	
}
