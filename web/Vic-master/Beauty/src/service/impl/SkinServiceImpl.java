package service.impl;

import java.util.List;

import dao.SkinDao;
import dao.impl.SkinDaoImpl;
import entity.Skin;
import service.SkinService;

/**
 * service层
 * 护肤品实现功能
 * @author 施余缘
 *
 */
public class SkinServiceImpl implements SkinService {
	SkinDao sdi=new SkinDaoImpl();
	/**
	 * 显示所有护肤品信息
	 */
	@Override
	public List<Skin> showAllSkin() {
		return sdi.getAllSkin();
	}

	/**
	 * 显示最新护肤品的信息
	 */
	@Override
	public List<Skin> showEightSkin() {
		return sdi.getEightSkin();
	}

	/**
	 * 显示指定护肤品信息
	 */
	@Override
	public Skin showOneSkin(Skin skin) {
		return sdi.getOneSkin(skin);
	}

}
