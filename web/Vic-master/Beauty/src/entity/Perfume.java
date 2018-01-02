package entity;

import java.util.Date;

/**
 * 实体类
 * 3.香水
 * @author 施余缘
 *
 */
public class Perfume {
	private Integer pId ;//1产品编号
	private String pName;//2商品名
	private String styleName; //3商品款型
	private String  colour;//4商品颜色
	private Integer  inventory;//5商品库存
	private Integer  sale;//6销售量
	private Integer  price; //7价钱
	private String picture;//8图片路径
	private Date time;//9上架时间
	//无参构造
	public Perfume() {
		super();
		// TODO Auto-generated constructor stub
	}
	//有参构造
	public Perfume(Integer pId, String pName, String styleName, String colour, Integer inventory, Integer sale,
			Integer price, String picture, Date time) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.styleName = styleName;
		this.colour = colour;
		this.inventory = inventory;
		this.sale = sale;
		this.price = price;
		this.picture = picture;
		this.time = time;
	}
	//get和set方法
	public Integer getpId() {
		return pId;
	}
	public void setpId(Integer pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
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
	//显示
	@Override
	public String toString() {
		return "Perfume [pId=" + pId + ", pName=" + pName + ", styleName=" + styleName + ", colour=" + colour
				+ ", inventory=" + inventory + ", sale=" + sale + ", price=" + price + ", picture=" + picture
				+ ", time=" + time + "]";
	}
	
	
}
