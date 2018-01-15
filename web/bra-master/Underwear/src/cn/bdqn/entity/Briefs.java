package cn.bdqn.entity;
/**
 * 创建内裤实体类
 * @author asus
 *
 */
public class Briefs {
	private Integer briefsId; //内裤id
	private String name;   //名字
	private double price;  //单价
	private Integer quantity; //库存
	
	
	public Briefs() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Briefs(Integer briefsId, String name, double price, Integer quantity) {
		super();
		this.briefsId = briefsId;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}
	
	
	public Integer getBriefsId() {
		return briefsId;
	}
	public void setBriefsId(Integer briefsId) {
		this.briefsId = briefsId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


	@Override
	public String toString() {
		return "Briefs [briefsId=" + briefsId + ", name=" + name + ", price="
				+ price + ", quantity=" + quantity + "]";
	}
	
	
	
	
	
	

}
