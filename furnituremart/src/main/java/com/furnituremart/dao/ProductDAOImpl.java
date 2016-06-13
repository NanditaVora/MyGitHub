package com.furnituremart.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.furnituremart.model.Product;
import com.furnituremart.model.ProductList;
import com.furnituremart.service.ProductService;

@Service
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private ProductService productService;

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public String addProduct(Product P) {
		
		return productService.addProduct(P);
	}

	public String editProduct(Product newProduct, int productId) {
		
		
		return productService.updateProduct(newProduct,productId);
	}

	public String deleteProduct(int productID) {
		
		return productService.deleteProduct(productID);
	}
	
	public ProductList getAllProducts() {
		
		
		return new ProductList(productService.fetchAllRecords());
	}
	public Product getProductById(int productId)
	{
		return productService.getProductById(productId);
	}

	 
}
