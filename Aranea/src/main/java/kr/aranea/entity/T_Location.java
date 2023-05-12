package kr.aranea.entity;

public class T_Location {

	// 장소 순번
	private Double loc_seq;

	// 장소 명
	private String loc_name;

	// 회원 아이디
	private String user_id;

	// 위도
	private Double lat;

	// 경도
	private Double lng;

	public Double getLocSeq() {
		return loc_seq;
	}

	public void setLocSeq(Double locSeq) {
		this.loc_seq = loc_seq;
	}

	public String getLocName() {
		return loc_name;
	}

	public void setLocName(String locName) {
		this.loc_name = loc_name;
	}

	public String getUserId() {
		return user_id;
	}

	public void setUserId(String userId) {
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

	// t_location 모델 복사
	public void CopyData(T_Location param) {
		this.loc_seq = param.getLocSeq();
		this.loc_name = param.getLocName();
		this.user_id = param.getUserId();
		this.lat = param.getLat();
		this.lng = param.getLng();
	}
	
	public void CopyData() {}
}
