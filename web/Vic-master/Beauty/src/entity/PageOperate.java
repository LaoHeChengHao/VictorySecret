package entity;

import java.io.Serializable;

public class PageOperate implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3578760098169755016L;
	
	private int operateId;
	private String operateName;
	
	
	public int getOperateId() {
		return operateId;
	}
	public void setOperateId(int operateId) {
		this.operateId = operateId;
	}
	public String getOperateName() {
		return operateName;
	}
	public void setOperateName(String operateName) {
		this.operateName = operateName;
	}
	@Override
	public String toString() {
		return "PageOperate [operateId=" + operateId + ", operateName="
				+ operateName + "]";
	}
	
	
	
	
	

}
