package kr.aranea.entity;

public class T_Like {

	private int cm_seq;
	
	private String cm_name;
	
	private String cm_category;
	
	private String cm_price;
	
	private String user_id; 

	private String cm_img1;
	
	public T_Like() {}

	public T_Like(int cm_seq, String cm_name, String cm_category, String cm_price, String user_id, String cm_img1) {
		super();
		this.cm_seq = cm_seq;
		this.cm_name = cm_name;
		this.cm_category = cm_category;
		this.cm_price = cm_price;
		this.user_id = user_id;
		this.cm_img1 = cm_img1;
	}

	public int getCm_seq() {
		return cm_seq;
	}

	public void setCm_seq(int cm_seq) {
		this.cm_seq = cm_seq;
	}

	public String getCm_name() {
		return cm_name;
	}

	public void setCm_name(String cm_name) {
		this.cm_name = cm_name;
	}

	public String getCm_category() {
		return cm_category;
	}

	public void setCm_category(String cm_category) {
		this.cm_category = cm_category;
	}

	public String getCm_price() {
		return cm_price;
	}

	public void setCm_price(String cm_price) {
		this.cm_price = cm_price;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getCm_img1() {
		return cm_img1;
	}

	public void setCm_img1(String cm_img1) {
		this.cm_img1 = cm_img1;
	}

			
}
