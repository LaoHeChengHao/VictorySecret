package service;

import java.util.List;

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
}
