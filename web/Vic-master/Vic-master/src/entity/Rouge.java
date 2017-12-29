package entity;

import java.util.Date;

/**
 * 实体类
 * 2.口红
 * @author 施余缘
 *
 */
public class Rouge {
	private Integer rId; //'产品编号',
	private String  rName;//'商品名称',
	private String  styleName;//'商品款型',
	private String  colour;// '商品颜色',
	private Integer  inventory;//'商品库存',
	private Integer  sale;//'销售量',
	private Integer  price;//'价钱',
	private String  picture;//图片路径',
	private Date  time ;//'上架时间'
	//无参构造
	public Rouge() {
		super();
		// TODO Auto-generated constructor stub
	}
	//有参构造
	public Rouge(Integer rId, String rName, String styleName, String colour, Integer inventory, Integer sale,
			Integer price, String picture, Date time) {
		super();
		this.rId = rId;
		this.rName = rName;
		this.styleName = styleName;
		this.colour = colour;
		this.inventory = inventory;
		this.sale = sale;
		this.price = price;
		this.picture = picture;
		this.time = time;
	}
	/**
	 * get和set方法
	 * get对应EL表达式取值规范
	 * @return
	 */
	public Integer getrId() {
		return rId;
	}
	public void setrId(Integer rId) {
		this.rId = rId;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
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
		return "Rouge [rId=" + rId + ", rName=" + rName + ", styleName=" + styleName + ", colour=" + colour
				+ ", inventory=" + inventory + ", sale=" + sale + ", price=" + price + ", picture=" + picture
				+ ", time=" + time + "]";
	}
	
	
	
}
