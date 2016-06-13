package com.furnituremart.model.product;

import org.springframework.stereotype.Component;

@Component("cartHandler")
public class CartHandler {
	
	
	public Cart initFlow()
	{
		return new Cart();
	}

}
