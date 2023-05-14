package kr.aranea.entity;

//거래 장소 
public class T_Location {

	// 장소 순번
	private int loc_seq;

	// 장소 명
	private String loc_name;

	// 회원 아이디
	private String user_id;

	// 위도
	private Double lat;

	// 경도
	private Double lng;

	public T_Location() {}

	public T_Location(int loc_seq, String loc_name, String user_id, Double lat, Double lng) {
		super();
		this.loc_seq = loc_seq;
		this.loc_name = loc_name;
		this.user_id = user_id;
		this.lat = lat;
		this.lng = lng;
	}

	public int getLoc_seq() {
		return loc_seq;
	}

	public void setLoc_seq(int loc_seq) {
		this.loc_seq = loc_seq;
	}

	public String getLoc_name() {
		return loc_name;
	}

	public void setLoc_name(String loc_name) {
		this.loc_name = loc_name;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public Double getLat() {
		return lat;
	}

	public void setLat(Double lat) {
		this.lat = lat;
	}

	public Double getLng() {
		return lng;
	}

	public void setLng(Double lng) {
		this.lng = lng;
	}

	
	
	
}
