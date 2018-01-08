package entity;

import java.util.List;

/**
 * 商品实体类
 * 主要用于
 * @author 施余缘
 *
 */
public class Good {
	private List<Perfume> perfume;
	private List<Rouge> rouge;
	private List<Skin> skin;
	public List<Perfume> getPerfume() {
		return perfume;
	}
	public void setPerfume(List<Perfume> perfume) {
		this.perfume = perfume;
	}
	public List<Rouge> getRouge() {
		return rouge;
	}
	public void setRouge(List<Rouge> rouge) {
		this.rouge = rouge;
	}
	public List<Skin> getSkin() {
		return skin;
	}
	public void setSkin(List<Skin> skin) {
		this.skin = skin;
	}
	public Good(List<Perfume> perfume, List<Rouge> rouge, List<Skin> skin) {
		super();
		this.perfume = perfume;
		this.rouge = rouge;
		this.skin = skin;
	}
	@Override
	public String toString() {
		return "Good [perfume=" + perfume + ", rouge=" + rouge + ", skin=" + skin + "]";
	}
	public Good() {
		super();
	}
	

}
