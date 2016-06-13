package com.furnituremart.model;

import java.util.ArrayList;
import java.util.List;

public class ProductList {
	private List<Product> productList = new ArrayList<Product>();

	public ProductList(List<Product> productList) {
		super();
		this.productList = productList;
	}

	public List<Product> getProductList() {
		
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}
	public String toString()
	{
		
		return productList.toString();
	}

}
