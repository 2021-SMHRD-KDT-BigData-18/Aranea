package kr.aranea.entity;

import java.util.Date;

public class T_Commodity {

	// 상품 순번
	private int cm_seq;

	// 상품 명
	private String cm_name;

	// 회원 아이디
	private String user_id;

	// 상품 설명
	private String cm_desc;

	// 상품 이미지1
	private String cm_img1;

	// 상품 이미지2
	private String cm_img2;

	// 상품 이미지3
	private String cm_img3;

	// 카테고리
	private String cm_category;

	// 상품 상태
	private String cm_status;

	// 상품 가격
	private String cm_price;

	// 상품 등록일자
	private Date cm_regdate;

	// 장소 순번
	private int loc_seq;
	
	// 찜버튼
	private int cm_like;
	
	// 거래 상태
	private String deal_status;

	
	public T_Commodity() {}


	public T_Commodity(int cm_seq, String cm_name, String user_id, String cm_desc, String cm_img1, String cm_img2,
			String cm_img3, String cm_category, String cm_status, String cm_price, Date cm_regdate, int loc_seq,
			int cm_like, String deal_status) {
		super();
		this.cm_seq = cm_seq;
		this.cm_name = cm_name;
		this.user_id = user_id;
		this.cm_desc = cm_desc;
		this.cm_img1 = cm_img1;
		this.cm_img2 = cm_img2;
		this.cm_img3 = cm_img3;
		this.cm_category = cm_category;
		this.cm_status = cm_status;
		this.cm_price = cm_price;
		this.cm_regdate = cm_regdate;
		this.loc_seq = loc_seq;
		this.cm_like = cm_like;
		this.deal_status = deal_status;
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


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public String getCm_desc() {
		return cm_desc;
	}


	public void setCm_desc(String cm_desc) {
		this.cm_desc = cm_desc;
	}


	public String getCm_img1() {
		return cm_img1;
	}


	public void setCm_img1(String cm_img1) {
		this.cm_img1 = cm_img1;
	}


	public String getCm_img2() {
		return cm_img2;
	}


	public void setCm_img2(String cm_img2) {
		this.cm_img2 = cm_img2;
	}


	public String getCm_img3() {
		return cm_img3;
	}


	public void setCm_img3(String cm_img3) {
		this.cm_img3 = cm_img3;
	}


	public String getCm_category() {
		return cm_category;
	}


	public void setCm_category(String cm_category) {
		this.cm_category = cm_category;
	}


	public String getCm_status() {
		return cm_status;
	}


	public void setCm_status(String cm_status) {
		this.cm_status = cm_status;
	}


	public String getCm_price() {
		return cm_price;
	}


	public void setCm_price(String cm_price) {
		this.cm_price = cm_price;
	}


	public Date getCm_regdate() {
		return cm_regdate;
	}


	public void setCm_regdate(Date cm_regdate) {
		this.cm_regdate = cm_regdate;
	}


	public int getLoc_seq() {
		return loc_seq;
	}


	public void setLoc_seq(int loc_seq) {
		this.loc_seq = loc_seq;
	}


	public int getCm_like() {
		return cm_like;
	}


	public void setCm_like(int cm_like) {
		this.cm_like = cm_like;
	}


	public String getDeal_status() {
		return deal_status;
	}


	public void setDeal_status(String deal_status) {
		this.deal_status = deal_status;
	}


	
	
}
