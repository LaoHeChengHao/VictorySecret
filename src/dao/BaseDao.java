package dao;

import WEBUtils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import java.lang.reflect.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BaseDao<T> {

     QueryRunner runn=new QueryRunner();
         private Class<T> type=null;

         public BaseDao(){
             //获取当前类的带泛型的父类
             ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
             //获取泛型里面具体的类，返回一个数组，数组里面只有一个
             Type[] types = pt.getActualTypeArguments();
             //从数组中获取到第一个即可
             this.type= (Class) types[0];
         }

         //通用的增删改方法
         public int update(String sql,Object...args){
             int count=0;
             Connection conn = JDBCUtils.getConnection();
             try {
                 count= runn.update(conn,sql,args);
             } catch (SQLException e) {
                 e.printStackTrace();
             }finally {
                 JDBCUtils.close(null,null,conn);
             }

             return count;
         }

         //通用的查询一个的方法
         public T getBean(String sql,Object...args){
             T t=null;

             Connection conn=JDBCUtils.getConnection();
             try {
                 //调用工具类
                 t = runn.query(conn, sql,new BeanHandler<T>(type),args);
             } catch (SQLException e) {
                 e.printStackTrace();
             }finally {
                 JDBCUtils.close(null,null,conn);
             }
             return t;
         }

         //通用的查询所有的方法
         public List<T> getListBean(String sql, Object...args){

             List<T> list = new ArrayList<T>();

             Connection conn = JDBCUtils.getConnection();

             try {
                 list= runn.query(conn,sql,new BeanListHandler<T>(type),args);
             } catch (SQLException e) {
                 e.printStackTrace();
             }finally {
                 JDBCUtils.close(null,null,conn);
             }

             return list;


         }


         //查询一个值得方法
         public Object getSingleValue(String sql, Object...args){

             Object obj=null;
             //获取连接
             Connection conn = JDBCUtils.getConnection();
             //调用方法
             try {
                 //ScalarHandler()查询第一行第一列的值
                 obj= runn.query(conn, sql, new ScalarHandler(), args);
             } catch (SQLException e) {
                 e.printStackTrace();
             }finally {
                 JDBCUtils.close(null,null,conn);
             }

             return obj;

         }


}
