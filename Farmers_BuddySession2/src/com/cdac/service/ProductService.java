package com.cdac.service;

import java.util.List;

import com.cdac.dto.Products;

public interface ProductService {
	void addProduct(Products product);
	void removeProduct(int productId);
	Products findProduct(int productId);
	void modifyProduct(Products product);
	List<Products> selectAll(int userId);
	List<Products> selectAllProduct(Products product);
	List<Products> selectUserProduct(int productId);
}
