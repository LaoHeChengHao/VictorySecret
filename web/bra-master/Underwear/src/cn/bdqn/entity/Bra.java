package cn.bdqn.entity;
/**
 * 创建文胸实体类
 * @author asus
 *
 */
public class Bra {
	private Integer braId; //文胸id
	private String name;   //名字
	private double price;  //单价
	private Integer quantity; //库存
	
	
	public Bra() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Bra(Integer braId, String name, double price, Integer quantity) {
		super();
		this.braId = braId;
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}


	@Override
	public String toString() {
		return "Bra [braId=" + braId + ", name=" + name + ", price=" + price
				+ ", quantity=" + quantity + "]";
	}


	public Integer getBraId() {
		return braId;
	}


	public void setBraId(Integer braId) {
		this.braId = braId;
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
	
	
	
	
	
	
	
	

}
