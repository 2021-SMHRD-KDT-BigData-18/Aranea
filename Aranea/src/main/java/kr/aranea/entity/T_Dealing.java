package kr.aranea.entity;

import java.util.Date;

public class T_Dealing {

	// 거래 순번
	private Double deal_seq;

	// 판매자 아이디
	private String seller_id;

	// 구매자 아이디
	private String buyer_id;

	// 상품 순번
	private Double cm_seq;

	// 거래 상태(여부)
	private String deal_status;

	// 등록 일자
	private Date deal_dt;

	// 스파이더 아이디
	private String spider_id;

	public Double getDealSeq() {
		return deal_seq;
	}

	public void setDealSeq(Double dealSeq) {
		this.deal_seq = deal_seq;
	}

	public String getSellerId() {
		return seller_id;
	}

	public void setSellerId(String sellerId) {
		this.seller_id = seller_id;
	}

	public String getBuyerId() {
		return buyer_id;
	}

	public void setBuyerId(String buyerId) {
		this.buyer_id = buyer_id;
	}

	public Double getCmSeq() {
		return cm_seq;
	}

	public void setCmSeq(Double cmSeq) {
		this.cm_seq = cm_seq;
	}

	public String getDealStatus() {
		return deal_status;
	}

	public void setDealStatus(String dealStatus) {
		this.deal_status = deal_status;
	}

	public Date getDealDt() {
		return deal_dt;
	}

	public void setDealDt(Date dealDt) {
		this.deal_dt = deal_dt;
	}

	public String getSpiderId() {
		return spider_id;
	}

	public void setSpiderId(String spiderId) {
		this.spider_id = spider_id;
	}

	// t_dealing 모델 복사
	public void CopyData(T_Dealing param) {
		this.deal_seq = param.getDealSeq();
		this.seller_id = param.getSellerId();
		this.buyer_id = param.getBuyerId();
		this.cm_seq = param.getCmSeq();
		this.deal_status = param.getDealStatus();
		this.deal_dt = param.getDealDt();
		this.spider_id = param.getSpiderId();
	}

}
