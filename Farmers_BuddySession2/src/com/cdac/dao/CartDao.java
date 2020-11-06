package com.cdac.dao;

import java.util.List;
import com.cdac.dto.Products;
import com.cdac.dto.Cart;

public interface CartDao {

	void insertProductCart(Cart cart);
	List<Cart> selectAllCart();
	
	void deleteProductCart(int cart_id);
	List<Cart> selectAllcp(Cart cart);
}
