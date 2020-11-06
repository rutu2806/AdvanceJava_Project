package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Products;

public interface ProductDao {
	void insertProduct(Products product);
	void deleteProduct(int productId);
	Products selectProduct(int productId);
	void updateProduct(Products product);
	List<Products> selectAll(int userId);
	List<Products> selectAllProduct(Products product);
	List<Products> selectUserProduct(int productId);
}
