package com.punjabifashion.beans;

public class Product {
	private int id;
	private String code;
	private String name;
	private String description;
	private String mrp;
	private String discount;
	private int avgRating;
	private int totalRating;
	private String[] sizes;
	private String[] colors;
	private String[] genders;
	private boolean stiched;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMrp() {
		return mrp;
	}
	public void setMrp(String mrp) {
		this.mrp = mrp;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public int getAvgRating() {
		return avgRating;
	}
	public void setAvgRating(int avgRating) {
		this.avgRating = avgRating;
	}
	public int getTotalRating() {
		return totalRating;
	}
	public void setTotalRating(int totalRating) {
		this.totalRating = totalRating;
	}
	public String[] getSizes() {
		return sizes;
	}
	public void setSizes(String[] sizes) {
		this.sizes = sizes;
	}
	public String[] getColors() {
		return colors;
	}
	public void setColors(String[] colors) {
		this.colors = colors;
	}
	public String[] getGenders() {
		return genders;
	}
	public void setGenders(String[] genders) {
		this.genders = genders;
	}
	public boolean isStiched() {
		return stiched;
	}
	public void setStiched(boolean stiched) {
		this.stiched = stiched;
	}
	
	
}
