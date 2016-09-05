package prms.vo;

import java.io.Serializable;

public class ProjectVO implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int projNo = 1;
	
	private String projName = "";
	
	private int projTotal = 1;
	
	private int projState = 1;

	public int getProjNo() {
		return projNo;
	}

	public void setProjNo(int projNo) {
		this.projNo = projNo;
	}

	public String getProjName() {
		return projName;
	}

	public void setProjName(String projName) {
		this.projName = projName;
	}

	public int getProjTotal() {
		return projTotal;
	}

	public void setProjTotal(int projTotal) {
		this.projTotal = projTotal;
	}

	public int getProjState() {
		return projState;
	}

	public void setProjState(int projState) {
		this.projState = projState;
	}
	
	

}
