package entity;

import java.util.Date;

/**
 * 实体类
 * 1.护肤品
 * @author 施余缘
 *
 */
public class Skin {
	private Integer sId; //'产品编号',
	private String  sName;//'商品名称',
	private String  styleName;//'商品款型',
	private String  colour;// '商品颜色',
	private Integer  inventory;//'商品库存',
	private Integer  sale;//'销售量',
	private Integer  price;//'价钱',
	private String  picture;//图片路径',
	private Date  time ;//'上架时间'
	//无参构造，用于反射
	public Skin() {
		super();
	}
	//有参构造，用于复制
	public Skin(Integer sId, String sName, String styleName, String colour, Integer inventory, Integer sale,
			Integer price, String picture, Date time) {
		super();
		this.sId = sId;
		this.sName = sName;
		this.styleName = styleName;
		this.colour = colour;
		this.inventory = inventory;
		this.sale = sale;
		this.price = price;
		this.picture = picture;
		this.time = time;
	}
	public Integer getsId() {
		return sId;
	}
	public void setsId(Integer sId) {
		this.sId = sId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getStyleName() {
		return styleName;
	}
	public void setStyleName(String styleName) {
		this.styleName = styleName;
	}
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public Integer getInventory() {
		return inventory;
	}
	public void setInventory(Integer inventory) {
		this.inventory = inventory;
	}
	public Integer getSale() {
		return sale;
	}
	public void setSale(Integer sale) {
		this.sale = sale;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	/**
	 * 显示
	 */
	@Override
	public String toString() {
		return "Skin [sId=" + sId + ", sName=" + sName + ", styleName=" + styleName + ", colour=" + colour
				+ ", inventory=" + inventory + ", sale=" + sale + ", price=" + price + ", picture=" + picture
				+ ", time=" + time + "]";
	}
	
	
}
