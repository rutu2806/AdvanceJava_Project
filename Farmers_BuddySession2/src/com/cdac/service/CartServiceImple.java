package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.CartDao;
import com.cdac.dto.Cart;
import com.cdac.dto.Products;

@Service
public class CartServiceImple implements CartService {
	
	@Autowired
	private CartDao cartDao;

	@Override
	public void addProductCart(Cart cart) {
		cartDao.insertProductCart(cart);
		
	}
	
	@Override
	public List<Cart> selectAllCart() {
		return cartDao.selectAllCart();
	}
	

	@Override
	public void removeProductCart(int cart_id) {
		cartDao.deleteProductCart(cart_id);
		
	}

	@Override
	public List<Cart> selectAll(Cart cart) {
		return cartDao.selectAllcp(cart);
	}

}
