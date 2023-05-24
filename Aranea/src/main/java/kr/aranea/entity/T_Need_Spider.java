package kr.aranea.entity;

public class T_Need_Spider {

	private int ns_seq;
	private int cm_seq;
	private String spider_id;
	private String spider_name;
	private String cm_name;
	private String cm_desc;
	private String cm_category;
	private String cm_price;
	private String loc_name;
	private String user_name;
	private String cm_img1;
	
	public T_Need_Spider() {}

	public T_Need_Spider(int ns_seq, int cm_seq, String spider_id, String spider_name, String cm_name, String cm_desc,
			String cm_category, String cm_price, String loc_name, String user_name, String cm_img1) {
		super();
		this.ns_seq = ns_seq;
		this.cm_seq = cm_seq;
		this.spider_id = spider_id;
		this.spider_name = spider_name;
		this.cm_name = cm_name;
		this.cm_desc = cm_desc;
		this.cm_category = cm_category;
		this.cm_price = cm_price;
		this.loc_name = loc_name;
		this.user_name = user_name;
		this.cm_img1 = cm_img1;
	}

	public int getNs_seq() {
		return ns_seq;
	}

	public void setNs_seq(int ns_seq) {
		this.ns_seq = ns_seq;
	}

	public int getCm_seq() {
		return cm_seq;
	}

	public void setCm_seq(int cm_seq) {
		this.cm_seq = cm_seq;
	}

	public String getSpider_id() {
		return spider_id;
	}

	public void setSpider_id(String spider_id) {
		this.spider_id = spider_id;
	}

	public String getSpider_name() {
		return spider_name;
	}

	public void setSpider_name(String spider_name) {
		this.spider_name = spider_name;
	}

	public String getCm_name() {
		return cm_name;
	}

	public void setCm_name(String cm_name) {
		this.cm_name = cm_name;
	}

	public String getCm_desc() {
		return cm_desc;
	}

	public void setCm_desc(String cm_desc) {
		this.cm_desc = cm_desc;
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

	public String getLoc_name() {
		return loc_name;
	}

	public void setLoc_name(String loc_name) {
		this.loc_name = loc_name;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getCm_img1() {
		return cm_img1;
	}

	public void setCm_img1(String cm_img1) {
		this.cm_img1 = cm_img1;
	}

	
}
