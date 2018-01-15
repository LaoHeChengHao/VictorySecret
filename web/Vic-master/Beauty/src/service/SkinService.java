package service;

import java.util.List;

import entity.Rouge;
import entity.Skin;

/**
 * service层
 * 护肤品
 * @author 施余缘
 *
 */
public interface SkinService {
	//显示所有护肤的信息
	List<Skin> showAllSkin();
	
	//显示最新上市的八种护肤信息
	List<Skin> showEightSkin();
	
	//显示单个护肤品信息
	Skin showOneSkin(Skin skin);
	
	//查找数据库中是否包含指定id的商品
	boolean findSkinById(int sId);
	
	//查找出指定id的商品
	Skin findSById(int sId);
}
