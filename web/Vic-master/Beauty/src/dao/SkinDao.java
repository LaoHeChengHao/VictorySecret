package dao;

import java.util.List;

import entity.Skin;

/**
 * dao层
 * 护肤的dao层接口
 * @author 施余缘
 *
 */
public interface SkinDao {
			//显示所有护肤的信息
			List<Skin> getAllSkin();
			
			//显示最新上市的八种护肤信息
			List<Skin> getEightSkin();
			
			//显示单个香水信息
			Skin getOneSkin(Skin skin);
}
