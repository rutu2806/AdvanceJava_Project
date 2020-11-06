package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.ProductDao;
import com.cdac.dto.Products;

@Service
public class ProductServiceImple implements ProductService {
	
	@Autowired
	private ProductDao productDao;

	@Override
	public void addProduct(Products product) {
		productDao.insertProduct(product);
	}

	@Override
	public void removeProduct(int productId) {
		productDao.deleteProduct(productId);
	}

	@Override
	public Products findProduct(int productId) {
		return productDao.selectProduct(productId);
	}

	@Override
	public void modifyProduct(Products product) {
		productDao.updateProduct(product);
	}

	@Override
	public List<Products> selectAll(int userId) {
		return productDao.selectAll(userId);
	}

	@Override
	public List<Products> selectAllProduct(Products product) {
		return productDao.selectAllProduct(product);
	}

	@Override
	public List<Products> selectUserProduct(int productId) {
		return productDao.selectUserProduct(productId);
	}

}
