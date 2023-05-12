package kr.aranea.entity;

import java.util.Date;

public class T_User {

	// 회원 정보 
	public class t_user {

	    // 회원 아이디 
	    private String user_id;

	    // 회원 비밀번호 
	    private String user_pw;

	    // 회원 이름 
	    private String user_name;

	    // 회원 전화번호 
	    private String user_phone;

	    // 회원 가상계좌 
	    private String user_v_account;

	    // 가상계좌 잔고 
	    private Double user_account_balance;

	    // 회원 포인트 
	    private Double user_point;

	    // 회원 가입일자 
	    private Date user_joindate;

	    // 회원 유형 
	    private String user_type;

	    // 스파이더맨 자격 
	    private String spider_yn;

	    public String getUserId() {
	        return user_id;
	    }

	    public void setUserId(String userId) {
	        this.user_id = user_id;
	    }

	    public String getUserPw() {
	        return user_pw;
	    }

	    public void setUserPw(String userPw) {
	        this.user_pw = user_pw;
	    }

	    public String getUserName() {
	        return user_name;
	    }

	    public void setUserName(String userName) {
	        this.user_name = user_name;
	    }

	    public String getUserPhone() {
	        return user_phone;
	    }

	    public void setUserPhone(String userPhone) {
	        this.user_phone = user_phone;
	    }

	    public String getUserVAccount() {
	        return user_v_account;
	    }

	    public void setUserVAccount(String userVAccount) {
	        this.user_v_account = user_v_account;
	    }

	    public Double getUserAccountBalance() {
	        return user_account_balance;
	    }

	    public void setUserAccountBalance(Double userAccountBalance) {
	        this.user_account_balance = user_account_balance;
	    }

	    public Double getUserPoint() {
	        return user_point;
	    }

	    public void setUserPoint(Double userPoint) {
	        this.user_point = user_point;
	    }

	    public Date getUserJoindate() {
	        return user_joindate;
	    }

	    public void setUserJoindate(Date userJoindate) {
	        this.user_joindate = user_joindate;
	    }

	    public String getUserType() {
	        return user_type;
	    }

	    public void setUserType(String userType) {
	        this.user_type = user_type;
	    }

	    public String getSpiderYn() {
	        return spider_yn;
	    }

	    public void setSpiderYn(String spiderYn) {
	        this.spider_yn = spider_yn;
	    }

	    // t_user 모델 복사
	    public void CopyData(t_user param)
	    {
	        this.user_id = param.getUserId();
	        this.user_pw = param.getUserPw();
	        this.user_name = param.getUserName();
	        this.user_phone = param.getUserPhone();
	        this.user_v_account = param.getUserVAccount();
	        this.user_account_balance = param.getUserAccountBalance();
	        this.user_point = param.getUserPoint();
	        this.user_joindate = param.getUserJoindate();
	        this.user_type = param.getUserType();
	        this.spider_yn = param.getSpiderYn();
	    }
	}
}
