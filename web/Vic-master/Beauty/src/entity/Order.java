package entity;

import java.util.Date;

/**
 * 订单实体类
 * 对应数据库中三个订单表的格式
 * @author Administrator
 *
 */
public class Order {
	private Integer oId;//1订单编号
	private Integer uId;//2用户id
	private Integer gId;//3商品编号
	private Integer gCount;//4商品购买数量
	private Double totalPrice;//5总金额
	private String gPicture;//6商品主照片
	private Integer giftId;//7赠品id
	private Date time;//8订单生成时间
	
	public Integer getuId() {
		return uId;
	}
	public void setuId(Integer uId) {
		this.uId = uId;
	}
	public Integer getoId() {
		return oId;
	}
	public void setoId(Integer oId) {
		this.oId = oId;
	}
	public Integer getgId() {
		return gId;
	}
	public void setgId(Integer gId) {
		this.gId = gId;
	}
	public Integer getgCount() {
		return gCount;
	}
	public void setgCount(Integer gCount) {
		this.gCount = gCount;
	}
	public Double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getgPicture() {
		return gPicture;
	}
	public void setgPicture(String gPicture) {
		this.gPicture = gPicture;
	}
	public Integer getGiftId() {
		return giftId;
	}
	public void setGiftId(Integer giftId) {
		this.giftId = giftId;
	}
	//
	public Order(Integer uId, Integer gId, Integer gCount, Double totalPrice, String gPicture, Integer giftId) {
		super();
		this.uId = uId;
		this.gId = gId;
		this.gCount = gCount;
		this.totalPrice = totalPrice;
		this.gPicture = gPicture;
		this.giftId = giftId;
	}
	public Order() {
		super();
	}
	@Override
	public String toString() {
		return "Order [oId=" + oId + ", uId=" + uId + ", gId=" + gId + ", gCount=" + gCount + ", totalPrice="
				+ totalPrice + ", gPicture=" + gPicture + ", giftId=" + giftId + "]";
	}
}
