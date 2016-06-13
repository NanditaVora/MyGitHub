package com.furnituremart.dao;

import java.util.List;

import com.furnituremart.model.Product;
import com.furnituremart.model.ProductList;

public interface ProductDAO {
	
	String addProduct(Product P);
	String editProduct(Product newProduct,int productId);
	String deleteProduct(int productID);
	ProductList getAllProducts();
	Product getProductById(int productId);

}
