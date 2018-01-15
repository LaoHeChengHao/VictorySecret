package service;

import java.util.List;

import entity.Perfume;
import entity.Rouge;

/**
 * service层
 * 口红功能接口
 * @author 施余缘
 *
 */
public interface RougeService {
			//显示所有口红的信息
			List<Rouge> showAllRouge();
			
			//显示最新上市的八种口红信息
			List<Rouge> showEightRouge();
			
			//显示单个口红信息
			Rouge showOneRouge(Rouge rouge);
			
			//查找数据库中是否包含指定id的商品
			boolean findRougeById(int rId);
			
			//查找出指定id的商品
			Rouge findRById(int rId);
}
