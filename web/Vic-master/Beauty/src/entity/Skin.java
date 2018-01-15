package entity;

import java.util.Date;

/**
 * 实体类
 * 1.护肤
 * @author 施余缘
 *
 */
public class Skin {
	private Integer sId; //1.产品编号
	private String  sName;//2.商品名
	private String  styleName;//3.商品款型,
	private String  colour;// 4.商品颜色,
	private String effect;//5.功效
	private String brand;//6.品牌
	private String NetWeight;//7.净含量
	private Integer  inventory;//8.商品库存,
	private Integer  sale;//9.销售量,
	private Double  price;//10.价钱
	private String  picture;//11.主图片
	private String picturesId;//12.对应图片库数据
	private Date  time ;//13.上架时间
	//无参构造
	public Skin() {
		super();
	}
	//带参构造
	public Skin(Integer sId, String sName, String styleName, String colour, String effect, String brand,
			String netWeight, Integer inventory, Integer sale, Double price, String picture, String picturesId,
			Date time) {
		super();
		this.sId = sId;
		this.sName = sName;
		this.styleName = styleName;
		this.colour = colour;
		this.effect = effect;
		this.brand = brand;
		NetWeight = netWeight;
		this.inventory = inventory;
		this.sale = sale;
		this.price = price;
		this.picture = picture;
		this.picturesId = picturesId;
		this.time = time;
	}
	/**
	 * get和set方法
	 * @return
	 */
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
	public String getEffect() {
		return effect;
	}
	public void setEffect(String effect) {
		this.effect = effect;
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
	@Override
	public String toString() {
		return "Skin [sId=" + sId + ", sName=" + sName + ", styleName=" + styleName + ", colour=" + colour + ", effect="
				+ effect + ", brand=" + brand + ", NetWeight=" + NetWeight + ", inventory=" + inventory + ", sale="
				+ sale + ", price=" + price + ", picture=" + picture + ", picturesId=" + picturesId + ", time=" + time
				+ "]";
	}
	
	
}
