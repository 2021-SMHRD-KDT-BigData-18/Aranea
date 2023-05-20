package kr.aranea.entity;

public class T_Chat {
	
	private int chat_seq;
	private int cm_seq;
	private String chat_sellerid;
	private String chat_buyingid;
	private String chat_content;
	private String chat_urlpath;
	private String chat_time;
	
	public T_Chat() {
		
	}

	public T_Chat(int chat_seq, int cm_seq, String chat_sellerid, String chat_buyingid, String chat_content,
			String chat_urlpath, String chat_time) {
		super();
		this.chat_seq = chat_seq;
		this.cm_seq = cm_seq;
		this.chat_sellerid = chat_sellerid;
		this.chat_buyingid = chat_buyingid;
		this.chat_content = chat_content;
		this.chat_urlpath = chat_urlpath;
		this.chat_time = chat_time;
	}

	public int getChat_seq() {
		return chat_seq;
	}

	public void setChat_seq(int chat_seq) {
		this.chat_seq = chat_seq;
	}

	public int getCm_seq() {
		return cm_seq;
	}

	public void setCm_seq(int cm_seq) {
		this.cm_seq = cm_seq;
	}

	public String getChat_sellerid() {
		return chat_sellerid;
	}

	public void setChat_sellerid(String chat_sellerid) {
		this.chat_sellerid = chat_sellerid;
	}

	public String getChat_buyingid() {
		return chat_buyingid;
	}

	public void setChat_buyingid(String chat_buyingid) {
		this.chat_buyingid = chat_buyingid;
	}

	public String getChat_content() {
		return chat_content;
	}

	public void setChat_content(String chat_content) {
		this.chat_content = chat_content;
	}

	public String getChat_urlpath() {
		return chat_urlpath;
	}

	public void setChat_urlpath(String chat_urlpath) {
		this.chat_urlpath = chat_urlpath;
	}

	public String getChat_time() {
		return chat_time;
	}

	public void setChat_time(String chat_time) {
		this.chat_time = chat_time;
	}
	
	

}
