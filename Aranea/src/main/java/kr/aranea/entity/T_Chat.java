package kr.aranea.entity;

public class T_Chat {
	
	private int chat_seq;
	private String chat_sender;
	private String chat_content;
	private String chat_urlpath;
	private String chat_time;
	
	public T_Chat() {
		
	}

	public T_Chat(int chat_seq, String chat_sender, String chat_content, String chat_urlpath, String chat_time) {
		super();
		this.chat_seq = chat_seq;
		this.chat_sender = chat_sender;
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

	public String getChat_sender() {
		return chat_sender;
	}

	public void setChat_sender(String chat_sender) {
		this.chat_sender = chat_sender;
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
