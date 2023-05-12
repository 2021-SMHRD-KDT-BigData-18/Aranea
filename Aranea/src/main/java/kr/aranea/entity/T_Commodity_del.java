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

	public Double getReviewDelSeq() {
		return review_del_seq;
	}

	public void setReviewDelSeq(Double reviewDelSeq) {
		this.review_del_seq = review_del_seq;
	}

	public Date getReviewDt() {
		return review_dt;
	}

	public void setReviewDt(Date reviewDt) {
		this.review_dt = review_dt;
	}

	public String getSellerId() {
		return seller_id;
	}

	public void setSellerId(String sellerId) {
		this.seller_id = seller_id;
	}

	public Date getReviewDelTime() {
		return review_del_time;
	}

	public void setReviewDelTime(Date reviewDelTime) {
		this.review_del_time = review_del_time;
	}

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

	public String getCmDesc() {
		return cm_desc;
	}

	public void setCmDesc(String cmDesc) {
		this.cm_desc = cm_desc;
	}

	public String getCmCategory() {
		return cm_category;
	}

	public void setCmCategory(String cmCategory) {
		this.cm_category = cm_category;
	}

	public String getCmPrice() {
		return cm_price;
	}

	public void setCmPrice(String cmPrice) {
		this.cm_price = cm_price;
	}

	public Double getLocSeq() {
		return loc_seq;
	}

	public void setLocSeq(Double locSeq) {
		this.loc_seq = loc_seq;
	}

	// t_commodity_deleted 모델 복사
	public void CopyData(T_Commodity_del param) {
		this.review_del_seq = param.getReviewDelSeq();
		this.review_dt = param.getReviewDt();
		this.seller_id = param.getSellerId();
		this.review_del_time = param.getReviewDelTime();
		this.cm_seq = param.getCmSeq();
		this.cm_name = param.getCmName();
		this.cm_desc = param.getCmDesc();
		this.cm_category = param.getCmCategory();
		this.cm_price = param.getCmPrice();
		this.loc_seq = param.getLocSeq();
	}
	
	public void CopyData() {}
}
