package kr.aranea.entity;

import java.util.Date;

public class T_Commodity_del {

	// 삭제 순번
	private Double review_del_seq;

	// 후기 작성일자
	private Date review_dt;

	// 판매자 아이디
	private String seller_id;

	// 삭제 시간
	private Date review_del_time;

	// 상품 순번
	private Double cm_seq;

	// 상품명
	private String cm_name;

	// 상품 설명
	private String cm_desc;

	// 카테고리
	private String cm_category;

	// 상품 가격
	private String cm_price;

	// 장소 순번
	private Double loc_seq;
	
	public T_Commodity_del() {}

	public T_Commodity_del(Double review_del_seq, Date review_dt, String seller_id, Date review_del_time, Double cm_seq,
			String cm_name, String cm_desc, String cm_category, String cm_price, Double loc_seq) {
		super();
		this.review_del_seq = review_del_seq;
		this.review_dt = review_dt;
		this.seller_id = seller_id;
		this.review_del_time = review_del_time;
		this.cm_seq = cm_seq;
		this.cm_name = cm_name;
		this.cm_desc = cm_desc;
		this.cm_category = cm_category;
		this.cm_price = cm_price;
		this.loc_seq = loc_seq;
	}

	public Double getReview_del_seq() {
		return review_del_seq;
	}

	public void setReview_del_seq(Double review_del_seq) {
		this.review_del_seq = review_del_seq;
	}

	public Date getReview_dt() {
		return review_dt;
	}

	public void setReview_dt(Date review_dt) {
		this.review_dt = review_dt;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public Date getReview_del_time() {
		return review_del_time;
	}

	public void setReview_del_time(Date review_del_time) {
		this.review_del_time = review_del_time;
	}

	public Double getCm_seq() {
		return cm_seq;
	}

	public void setCm_seq(Double cm_seq) {
		this.cm_seq = cm_seq;
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

	public Double getLoc_seq() {
		return loc_seq;
	}

	public void setLoc_seq(Double loc_seq) {
		this.loc_seq = loc_seq;
	}
	
	
}
