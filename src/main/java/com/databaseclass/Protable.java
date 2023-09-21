package com.databaseclass;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Productdata")
public class Protable {
	
	@Id
    @Column(name = "SNO")
    private String sno;
	
    @Column(name = "Ttile")
    private String title;
    
    @Column(name = "Size")
    private String size;
    
    @Column(name = "Quantity")
    private String quantity;
    
    @Column(name = "Image")
    private String img;
    
    
	
    public Protable()
	{
		this.title = title;
		this.sno = sno;
		this.quantity = quantity;
		this.size = size;
		this.img = img;
	}



	public String getSno() {
		return sno;
	}



	public void setSno(String sno) {
		this.sno = sno;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getSize() {
		return size;
	}



	public void setSize(String size) {
		this.size = size;
	}



	public String getQuantity() {
		return quantity;
	}



	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}



	public String getImg() {
		return img;
	}



	public void setImg(String img) {
		this.img = img;
	}
    
	
}
