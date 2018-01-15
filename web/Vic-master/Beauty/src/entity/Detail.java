package entity;

import java.util.Date;

/**
 * 统一化三种商品的实体类
 * @author 施余缘
 *
 */
public class Detail {
	private Integer id ;//1.产品编号
	private String name;//2.商品名
	private String styleName; //3.商品款型
	private String  colour;//4.商品颜色
	private String typeEffect;//5.香水香型/护肤品、口红功效
	private String brand;//6.品牌
	private String netWeight;//7.净含量，香水净含量为X.Xml(毫升)
	private Integer  inventory;//8.商品库存
	private Integer  sale;//9.销售量
	private Double  price; //10.价钱
	private String picture;//11主图片
	private String picturesId;//12.对应图片库数据
	private Date time;//13.上架时间
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getTypeEffect() {
		return typeEffect;
	}
	public void setTypeEffect(String typeEffect) {
		this.typeEffect = typeEffect;
	}
	public String getBrand() {
		return "VICTORIA'S SECRET 维多利亚的秘密";
	}
/*	public void setBrand(String brand) {
		this.brand = brand;
	}*/
	public String getNetWeight() {
		return netWeight;
	}
	public void setNetWeight(String netWeight) {
		this.netWeight = netWeight;
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
	public String getPicturesId() {
		return picturesId;
	}
	public void setPicturesId(String picturesId) {
		this.picturesId = picturesId;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
	public Detail(Integer id, String name, String styleName, String colour, String typeEffect, String brand,
			String netWeight, Integer inventory, Integer sale, Double price, String picture, String picturesId,
			Date time) {
		super();
		this.id = id;
		this.name = name;
		this.styleName = styleName;
		this.colour = colour;
		this.typeEffect = typeEffect;
		this.brand = brand;
		this.netWeight = netWeight;
		this.inventory = inventory;
		this.sale = sale;
		this.price = price;
		this.picture = picture;
		this.picturesId = picturesId;
		this.time = time;
	}
	public Detail() {
		super();
	}
	@Override
	public String toString() {
		return "Detail [id=" + id + ", name=" + name + ", styleName=" + styleName + ", colour=" + colour
				+ ", typeEffect=" + typeEffect + ", brand=" + brand + ", NetWeight=" + netWeight + ", inventory="
				+ inventory + ", sale=" + sale + ", price=" + price + ", picture=" + picture + ", picturesId="
				+ picturesId + ", time=" + time + "]";
	}
	
	
	
}
