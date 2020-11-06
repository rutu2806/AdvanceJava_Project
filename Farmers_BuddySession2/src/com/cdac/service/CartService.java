package com.cdac.service;

import com.cdac.dto.Cart;


import java.util.List;

public interface CartService {

	void addProductCart(Cart cart);
	List<Cart> selectAllCart();
	void removeProductCart(int cart_id);
	List<Cart> selectAll(Cart cart);
}
