package trnapp.bookstore.department;

import org.kuali.rice.krad.bo.PersistableBusinessObjectBase;

public class Department extends PersistableBusinessObjectBase {

	private static final long serialVersionUID = -7712034979113761356L;

	private String code;
	private String name;
	private String parentCode;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getParentCode() {
		return parentCode;
	}
	public void setParentCode(String parentCode) {
		this.parentCode = parentCode;
	}

}
