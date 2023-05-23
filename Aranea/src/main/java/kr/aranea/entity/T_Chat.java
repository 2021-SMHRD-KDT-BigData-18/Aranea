package kr.aranea.entity;

public class T_Chat {

	private int chat_seq;
	private String seller_id;
	private String seller_name;
	private String buyer_id;
	private String buyer_name;
	private String chat_urlpath;
	private String chat_content;
	private String chat_time;
	private String myname;
	private String othername;

	public T_Chat() {
	}

	public T_Chat(int chat_seq, String seller_id, String seller_name, String buyer_id, String buyer_name,
			String chat_urlpath, String chat_content, String chat_time, String myname, String othername) {
		super();
		this.chat_seq = chat_seq;
		this.seller_id = seller_id;
		this.seller_name = seller_name;
		this.buyer_id = buyer_id;
		this.buyer_name = buyer_name;
		this.chat_urlpath = chat_urlpath;
		this.chat_content = chat_content;
		this.chat_time = chat_time;
		this.myname = myname;
		this.othername = othername;
	}

	public int getChat_seq() {
		return chat_seq;
	}

	public void setChat_seq(int chat_seq) {
		this.chat_seq = chat_seq;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public String getSeller_name() {
		return seller_name;
	}

	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}

	public String getBuyer_id() {
		return buyer_id;
	}

	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}

	public String getBuyer_name() {
		return buyer_name;
	}

	public void setBuyer_name(String buyer_name) {
		this.buyer_name = buyer_name;
	}

	public String getChat_urlpath() {
		return chat_urlpath;
	}

	public void setChat_urlpath(String chat_urlpath) {
		this.chat_urlpath = chat_urlpath;
	}

	public String getChat_content() {
		return chat_content;
	}

	public void setChat_content(String chat_content) {
		this.chat_content = chat_content;
	}

	public String getChat_time() {
		return chat_time;
	}

	public void setChat_time(String chat_time) {
		this.chat_time = chat_time;
	}

	public String getMyname() {
		return myname;
	}

	public void setMyname(String myname) {
		this.myname = myname;
	}

	public String getOthername() {
		return othername;
	}

	public void setOthername(String othername) {
		this.othername = othername;
	}

	
}
