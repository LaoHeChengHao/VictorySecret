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

/**
 * 公共的应用类
 * 进行数据库的增删改查
 * 可面向多个对象进行增删改查,所以需用到泛型T
 * --带泛型的实体类
 * 保证不同的实体类继承该类可以进行不同的数据增删改查
 * 
 * @author 施余缘
 * 2017/12/28
 */
public class BaseDao<T> {
	//DBUtil中的核心类
	QueryRunner runn=new QueryRunner();
	
	
	//实体类的类型
	private Class<T> type;
	
	/**
	 * 注意:该T将继承BaseDao,属于其子类
	 * 而子类将会调用父类的无参构造
	 * 所以创建如下无参构造,在被调用时赋值
	 * 实现实体类类型type的鉴定
	 */
	//无参构造
	@SuppressWarnings("unchecked")
	public BaseDao(){
		/**
		 * 首先要获取到继承BaseDao的实体类
		 * 再获取带泛型里面具体的类
		 */
		//如UserDao extend BaseDao<User>
		//1.获取当前实体类(UserDao)的带泛型的父类(BaseDao)
		//Type tp = this.getClass().getGenericSuperclass();
		/**
		 * Type为一个接口
		 * 其下有多个实现类,其中有个ParameteriedType为带泛型的类
		 * 可以实现T的要求,可以将Type换成ParameterizedType
		 * 此处需要强转(Type为ParameterizedType的上级,大转小强转)
		 */
		//此处pt为获取到BaseDao
		ParameterizedType pt=(ParameterizedType) this.getClass().getGenericSuperclass();
		
		/**
		 * 获取带泛型里面具体的类
		 * 返回一个数组
		 * 我们需要的是带泛型的类里面的对象,为一个
		 * 而该数组其实只是包含一个数据的数组,只能取到第一个
		 * 
		 */
		Type[] types = pt.getActualTypeArguments();
		//获取一个对象就可以
		this.type=(Class<T>) types[0];		
	}
	

	/**
	 * 通用的增删改操作
	 * 使用DBUtil的query()方法
	 */
	public int update(String sql,Object...args){
		int count=0;
		//连接数据库--直接调用连接数据库的方法
		Connection conn=JDBCUtil.getConnection();
		
		//调用核心类的update方法
		try {
			//该方法返回值类型为int
			count=runn.update(conn, sql, args);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeConnection(null, null, conn);
		}
		return count;
		
	}
	
	/**
	 * 通用的查询一条数据的操作
	 * 将数据放入一个对象中
	 * 该对象多面向,使用T
	 * 使用DBUtil的update方法
	 */
	public T getBean(String sql,Object...args){
		T t=null;
		Connection conn=JDBCUtil.getConnection();

		try {
			//使用DBUtil的方法
			/**
			 * 其中new BeanHandler<T>(type)
			 * T代表不同的实体类,type为实体类的类型
			 * eg.new BeanHandler<User>(User.class)
			 * 此处用到反射和泛型
			 */
			t=runn.query(conn, sql, new BeanHandler<T>(type), args);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeConnection(null, null, conn);
		}
		return t;
		
	}
	
	/**
	 * 通用的查询多条数据的操作
	 * 返回一个List集合
	 * 使用DBUtil的update()方法
	 */
	public List<T> getListBean(String sql,Object...args){
		List<T> list=new ArrayList<T>();
		//连接数据库
		Connection conn=JDBCUtil.getConnection();
		
		//使用DBUtil中的方法
		try {
			/**
			 * new BeanListHandler<T>(type)
			 * 用于查询数据库多条信息的结果集存储
			 */
			list=runn.query(conn, sql, new BeanListHandler<T>(type), args);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCUtil.closeConnection(null, null, conn);
		}
		return list;
		
	}
	
}
