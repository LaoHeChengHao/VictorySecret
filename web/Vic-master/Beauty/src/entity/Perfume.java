package entity;

import java.util.Date;

/**
 * 实体类
 * 3.香水
 * @author 施余缘
 *
 */
public class Perfume {
	private Integer pId ;//1.产品编号
	private String pName;//2.商品名
	private String styleName; //3.商品款型
	private String  colour;//4.商品颜色
	private String type;//5.香型
	private String brand;//6.品牌
	private String NetWeight;//7.净含量，香水净含量为X.Xml(毫升)
	private Integer  inventory;//8.商品库存
	private Integer  sale;//9.销售量
	private Double  price; //10.价钱
	private String picture;//11主图片
	private Integer picturesId;//12.对应图片库数据
	private Date time;//13.上架时间
	//无参构造
	public Perfume() {
		super();
	}

	//带参构造
	
	public Perfume(Integer pId, String pName, String styleName, String colour, String type, String brand,
			String netWeight, Integer inventory, Integer sale, Double price, String picture, Integer picturesId,
			Date time) {
		super();
		this.pId = pId;
		this.pName = pName;
		this.styleName = styleName;
		this.colour = colour;
		this.type = type;
		this.brand = brand;
		NetWeight = netWeight;
		this.inventory = inventory;
		this.sale = sale;
		this.price = price;
		this.picture = picture;
		this.picturesId = picturesId;
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
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getNetWeight() {
		return NetWeight;
	}

	public void setNetWeight(String netWeight) {
		NetWeight = netWeight;
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
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public Integer getPicturesId() {
		return picturesId;
	}
	public void setPicturesId(Integer picturesId) {
		this.picturesId = picturesId;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Perfume [pId=" + pId + ", pName=" + pName + ", styleName=" + styleName + ", colour=" + colour
				+ ", type=" + type + ", brand=" + brand + ", NetWeight=" + NetWeight + ", inventory=" + inventory
				+ ", sale=" + sale + ", price=" + price + ", picture=" + picture + ", picturesId=" + picturesId
				+ ", time=" + time + "]";
	}
	
	
}
