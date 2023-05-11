package kr.aranea.entity;

import java.util.Date;

public class T_review_delete {

	// 거래 후기 삭제 게시글 
	public class t_review_deleted {

	    // 삭제 순번 
	    private Double review_del_seq;

	    // 후기 순번 
	    private Double review_seq;

	    // 거래 순번 
	    private Double deal_seq;

	    // 후기 내용 
	    private String review_content;

	    // 후기 작성일자 
	    private Date review_dt;

	    // 거래 평점 
	    private Double review_rating;

	    // 작성자 아이디 
	    private String user_id;

	    // 삭제 시간 
	    private Date review_del_time;

	    public Double getReviewDelSeq() {
	        return review_del_seq;
	    }

	    public void setReviewDelSeq(Double reviewDelSeq) {
	        this.review_del_seq = review_del_seq;
	    }

	    public Double getReviewSeq() {
	        return review_seq;
	    }

	    public void setReviewSeq(Double reviewSeq) {
	        this.review_seq = review_seq;
	    }

	    public Double getDealSeq() {
	        return deal_seq;
	    }

	    public void setDealSeq(Double dealSeq) {
	        this.deal_seq = deal_seq;
	    }

	    public String getReviewContent() {
	        return review_content;
	    }

	    public void setReviewContent(String reviewContent) {
	        this.review_content = review_content;
	    }

	    public Date getReviewDt() {
	        return review_dt;
	    }

	    public void setReviewDt(Date reviewDt) {
	        this.review_dt = review_dt;
	    }

	    public Double getReviewRating() {
	        return review_rating;
	    }

	    public void setReviewRating(Double reviewRating) {
	        this.review_rating = review_rating;
	    }

	    public String getUserId() {
	        return user_id;
	    }

	    public void setUserId(String userId) {
	        this.user_id = user_id;
	    }

	    public Date getReviewDelTime() {
	        return review_del_time;
	    }

	    public void setReviewDelTime(Date reviewDelTime) {
	        this.review_del_time = review_del_time;
	    }

	    // t_review_deleted 모델 복사
	    public void CopyData(t_review_deleted param)
	    {
	        this.review_del_seq = param.getReviewDelSeq();
	        this.review_seq = param.getReviewSeq();
	        this.deal_seq = param.getDealSeq();
	        this.review_content = param.getReviewContent();
	        this.review_dt = param.getReviewDt();
	        this.review_rating = param.getReviewRating();
	        this.user_id = param.getUserId();
	        this.review_del_time = param.getReviewDelTime();
	    }
	}
}
