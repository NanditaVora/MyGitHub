package com.furnituremart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Digits;

import org.hibernate.validator.constraints.NotEmpty;
 
import org.springframework.web.multipart.MultipartFile;



@Entity
public class Product implements Serializable {
	 
	private static final long serialVersionUID = 1L;
 
	public Product(){
		
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int productId;
	public int getProductId() {
		return productId;
	}
	@NotEmpty(message="Group Name cannot be left Blank")
	private String groupName;
	@NotEmpty(message="Name field cannot be left Blank")
	private String name;
	private String description;
	
	@Transient
	private MultipartFile img;
	@DecimalMin("100.00")
	@Digits(integer=6, fraction=2)
	private int price;
	private int qty;

	public Product(String groupName, String name, String description,int price, int qty, MultipartFile img)
	{
		 
		
		this.groupName=groupName;
		this.name=name;
		this.description=description;
		this.price=price;
		this.qty=qty;
		this.img=img;
	}
	
	 
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
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
	public MultipartFile getImg() {
		return img;
	}
	public void setImg(MultipartFile img) {
		this.img = img;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public String toString()
	{
		
		return "{productID : '" + productId + "'," + "groupName : '" +  groupName + "'," + "name :'" + name + "'," + "description :'" + description + "'," + "price :'" + price + "'," + "qty :'" + qty + "'," + "img :'" +productId + ".jpg'}";
	}
}
