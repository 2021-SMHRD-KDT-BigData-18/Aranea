package kr.aranea.entity;

import java.util.Date;

public class Writing {

	private int num;
	private String id;
	private String img1;
	private String img2;
	private String img3;
	private String title;
	private String category;
	private String address;
	private String condition;
	private String price;
	private String content;
	private int counts;
	
	
	public Writing() {
		
	}


	public Writing(int num, String id, String img1, String img2, String img3, String title, String category,
			String address, String condition, String price, String content, int counts) {
		super();
		this.num = num;
		this.id = id;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.title = title;
		this.category = category;
		this.address = address;
		this.condition = condition;
		this.price = price;
		this.content = content;
		this.counts = counts;
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getImg1() {
		return img1;
	}


	public void setImg1(String img1) {
		this.img1 = img1;
	}


	public String getImg2() {
		return img2;
	}


	public void setImg2(String img2) {
		this.img2 = img2;
	}


	public String getImg3() {
		return img3;
	}


	public void setImg3(String img3) {
		this.img3 = img3;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getCondition() {
		return condition;
	}


	public void setCondition(String condition) {
		this.condition = condition;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getCounts() {
		return counts;
	}


	public void setCounts(int counts) {
		this.counts = counts;
	}


	
	
	
}
