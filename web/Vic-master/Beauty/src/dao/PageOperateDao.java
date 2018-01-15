package dao;

import java.util.List;

import entity.PageOperate;

/**
 * 页面功能的增删查改
 * 
 * @author Administrator
 * 
 */

public interface PageOperateDao {

	/**
	 * 获取所有页面功能
	 * 
	 * @return
	 */
	List<PageOperate> getAllPageOperate();

	/**
	 * 增加页面功能
	 * 
	 * @param pageOperate
	 * @return
	 */
	Integer addPageOperate(PageOperate pageOperate);

	/**
	 * 修改页面功能
	 * 
	 * @param pageOperate
	 * @return
	 */
	Integer updatePageOperate(PageOperate pageOperate);

	/**
	 * 删除页面功能
	 * 
	 * @param pageOperateId
	 * @return
	 */
	Integer deletePageOperate(Integer pageOperateId);

}
