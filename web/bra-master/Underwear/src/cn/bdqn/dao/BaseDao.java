package cn.bdqn.dao;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;


import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.bdqn.util.JDBCUtils;

/**
 * web 工程的业务层
 * 数据的增删改查
 * 带泛型的实体类
 * 谁需要操作增删改查谁就继承BaseDao,写法： T extends BaseDao<T>
 * @author asus
 *
 * @param <T>
 */

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

		Connection conn=JDBCUtils.getConnection();
		

		try {

			count=runn.update(conn, sql, args);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.close(null, null, conn);
		}
		return count;
		
	}
	
	
	public T getBean(String sql,Object...args){
		T t=null;
		Connection conn=JDBCUtils.getConnection();

		try {
			
			t=runn.query(conn, sql, new BeanHandler<T>(type), args);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.close(null, null, conn);
		}
		return t;
		
	}
	
	
	public List<T> getListBean(String sql,Object...args){
		List<T> list=new ArrayList<T>();
		//连接数据库
		Connection conn=JDBCUtils.getConnection();
		
		
		try {
			
			list=runn.query(conn, sql, new BeanListHandler<T>(type), args);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtils.close(null, null, conn);
		}
		return list;
		
	}
	
}

