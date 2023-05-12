package kr.aranea.entity;

import java.util.Date;

public class T_User {

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
    private int user_account_balance;

    // 회원 포인트 
    private int user_point;

    // 회원 가입일자 
    private Date user_joindate;

    // 회원 유형 
    private String user_type;

    // 스파이더맨 자격 
    private String spider_yn;
    
    public T_User() {}

	public T_User(String user_id, String user_pw, String user_name, String user_phone, String user_v_account,
			int user_account_balance, int user_point, Date user_joindate, String user_type, String spider_yn) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_phone = user_phone;
		this.user_v_account = user_v_account;
		this.user_account_balance = user_account_balance;
		this.user_point = user_point;
		this.user_joindate = user_joindate;
		this.user_type = user_type;
		this.spider_yn = spider_yn;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_v_account() {
		return user_v_account;
	}

	public void setUser_v_account(String user_v_account) {
		this.user_v_account = user_v_account;
	}

	public int getUser_account_balance() {
		return user_account_balance;
	}

	public void setUser_account_balance(int user_account_balance) {
		this.user_account_balance = user_account_balance;
	}

	public int getUser_point() {
		return user_point;
	}

	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}

	public Date getUser_joindate() {
		return user_joindate;
	}

	public void setUser_joindate(Date user_joindate) {
		this.user_joindate = user_joindate;
	}

	public String getUser_type() {
		return user_type;
	}

	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}

	public String getSpider_yn() {
		return spider_yn;
	}

	public void setSpider_yn(String spider_yn) {
		this.spider_yn = spider_yn;
	}
    
    
}