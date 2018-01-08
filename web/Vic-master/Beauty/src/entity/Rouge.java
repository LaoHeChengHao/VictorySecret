package entity;

import java.util.Date;

/**
 * 实体类
 * 2.口红
 * @author 施余缘
 *
 */
public class Rouge {
	private Integer rId; //1.产品编号,
	private String  rName;//2.商品名,
	private String  styleName;//3.商品款型,
	private String effect;//4.功效
	private String  colour;//5.商品颜色,
	private String brand;//6.品牌
	private String NetWeight;//7.净含量
	private Integer  inventory;//8.商品库存,
	private Integer  sale;//9.销售量,
	private Double  price;//10.价钱,
	private String  picture;//11.主图片,
	private Integer picturesId;//12.对应图片库数据
	private Date  time ;//13.上架时间
	//无参构造，方便反射
	public Rouge() {
		super();
	}
	//带参构造，方便赋值
	public Rouge(Integer rId, String rName, String styleName, String effect, String colour, String brand,
			String netWeight, Integer inventory, Integer sale, Double price, String picture, Integer picturesId,
			Date time) {
		super();
		this.rId = rId;
		this.rName = rName;
		this.styleName = styleName;
		this.effect = effect;
		this.colour = colour;
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
	 * get与EL表达式中使用的属性名保持一致
	 * @return
	 */
	public Integer getrId() {
		return rId;
	}
	public void setrId(Integer rId) {
		this.rId = rId;
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
		return "Rouge [rId=" + rId + ", rName=" + rName + ", styleName=" + styleName + ", effect=" + effect
				+ ", colour=" + colour + ", brand=" + brand + ", NetWeight=" + NetWeight + ", inventory=" + inventory
				+ ", sale=" + sale + ", price=" + price + ", picture=" + picture + ", picturesId=" + picturesId
				+ ", time=" + time + "]";
	}
	
	
	
}
