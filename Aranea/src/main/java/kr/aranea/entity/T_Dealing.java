package kr.aranea.entity;

import java.util.Date;

public class T_Dealing {

	// 거래 순번
	private int deal_seq;

	// 판매자 아이디
	private String seller_id;

	// 구매자 아이디
	private String buyer_id;

	// 상품 순번
	private int cm_seq;

	// 등록 일자
	private Date deal_dt;

	// 스파이더 아이디
	private String spider_id;

	public T_Dealing() {}

	public T_Dealing(int deal_seq, String seller_id, String buyer_id, int cm_seq, Date deal_dt, String spider_id) {
		super();
		this.deal_seq = deal_seq;
		this.seller_id = seller_id;
		this.buyer_id = buyer_id;
		this.cm_seq = cm_seq;
		this.deal_dt = deal_dt;
		this.spider_id = spider_id;
	}

	public int getDeal_seq() {
		return deal_seq;
	}

	public void setDeal_seq(int deal_seq) {
		this.deal_seq = deal_seq;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public String getBuyer_id() {
		return buyer_id;
	}

	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}

	public int getCm_seq() {
		return cm_seq;
	}

	public void setCm_seq(int cm_seq) {
		this.cm_seq = cm_seq;
	}

	public Date getDeal_dt() {
		return deal_dt;
	}

	public void setDeal_dt(Date deal_dt) {
		this.deal_dt = deal_dt;
	}

	public String getSpider_id() {
		return spider_id;
	}

	public void setSpider_id(String spider_id) {
		this.spider_id = spider_id;
	}

	

}
