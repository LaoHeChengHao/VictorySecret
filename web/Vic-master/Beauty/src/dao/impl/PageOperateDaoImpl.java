package dao.impl;

import java.util.List;

import org.apache.commons.dbutils.handlers.BeanListHandler;

import dao.BaseDao;
import dao.PageOperateDao;
import entity.PageOperate;

public class PageOperateDaoImpl extends BaseDao<PageOperate> implements PageOperateDao {

	@Override
	public List<PageOperate> getAllPageOperate() {
		String sql = "SELECT 	operateId, operateName FROM pageoperate ";
		return super.getListBean(sql);
	}

	@Override
	public Integer addPageOperate(PageOperate pageOperate) {
		String sql = "INSERT INTO pageoperate (operateName)VALUES(?);";
		Object[] params = { pageOperate.getOperateName() };
		return super.update(sql, params);
	}

	@Override
	public Integer updatePageOperate(PageOperate pageOperate) {
		String sql ="UPDATE pageoperate SET  operateName =?  WHERE operateId =? ;";
		Object[] params = {pageOperate.getOperateName(),pageOperate.getOperateId() };
		return super.update(sql, params);
	}

	@Override
	public Integer deletePageOperate(Integer pageOperateId) {
		String sql = "DELETE FROM pageoperate WHERE operateId = ? ;";
		return super.update(sql, pageOperateId);
	}

}
