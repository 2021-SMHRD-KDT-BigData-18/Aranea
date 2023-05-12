package kr.aranea.entity;

import java.util.Date;

public class T_Commodity {

	// 상품 순번
	private Double cm_seq;

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
	private Double loc_seq;

	public Double getCmSeq() {
		return cm_seq;
	}

	public void setCmSeq(Double cmSeq) {
		this.cm_seq = cm_seq;
	}

	public String getCmName() {
		return cm_name;
	}

	public void setCmName(String cmName) {
		this.cm_name = cm_name;
	}

	public String getUserId() {
		return user_id;
	}

	public void setUserId(String userId) {
		this.user_id = user_id;
	}

	public String getCmDesc() {
		return cm_desc;
	}

	public void setCmDesc(String cmDesc) {
		this.cm_desc = cm_desc;
	}

	public String getCmImg1() {
		return cm_img1;
	}

	public void setCmImg1(String cmImg1) {
		this.cm_img1 = cm_img1;
	}

	public String getCmImg2() {
		return cm_img2;
	}

	public void setCmImg2(String cmImg2) {
		this.cm_img2 = cm_img2;
	}

	public String getCmImg3() {
		return cm_img3;
	}

	public void setCmImg3(String cmImg3) {
		this.cm_img3 = cm_img3;
	}

	public String getCmCategory() {
		return cm_category;
	}

	public void setCmCategory(String cmCategory) {
		this.cm_category = cm_category;
	}

	public String getCmStatus() {
		return cm_status;
	}

	public void setCmStatus(String cmStatus) {
		this.cm_status = cm_status;
	}

	public String getCmPrice() {
		return cm_price;
	}

	public void setCmPrice(String cmPrice) {
		this.cm_price = cm_price;
	}

	public Date getCmRegdate() {
		return cm_regdate;
	}

	public void setCmRegdate(Date cmRegdate) {
		this.cm_regdate = cm_regdate;
	}

	public Double getLocSeq() {
		return loc_seq;
	}

	public void setLocSeq(Double locSeq) {
		this.loc_seq = loc_seq;
	}

	// t_commodity 모델 복사
	public void CopyData(T_Commodity param) {
		this.cm_seq = param.getCmSeq();
		this.cm_name = param.getCmName();
		this.user_id = param.getUserId();
		this.cm_desc = param.getCmDesc();
		this.cm_img1 = param.getCmImg1();
		this.cm_img2 = param.getCmImg2();
		this.cm_img3 = param.getCmImg3();
		this.cm_category = param.getCmCategory();
		this.cm_status = param.getCmStatus();
		this.cm_price = param.getCmPrice();
		this.cm_regdate = param.getCmRegdate();
		this.loc_seq = param.getLocSeq();
	}
	
	public void CopyData() {}
}
