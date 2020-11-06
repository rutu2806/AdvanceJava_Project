package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Products;

@Repository
public class ProductDaoImple implements ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void insertProduct(Products product) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(product);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}

	@Override
	public void deleteProduct(int productId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.delete(new Products(productId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}

	@Override
	public Products selectProduct(int productId) {
		Products product = hibernateTemplate.execute(new HibernateCallback<Products>() {

			@Override
			public Products doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Products pd = (Products)session.get(Products.class, productId);
				tr.commit();
				session.flush();
				session.close();
				return pd;
			}
			
		});
		return product;
	}

	@Override
	public void updateProduct(Products product) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				
//				Expense ex = (Expense)session.get(Expense.class, expense.getExpenseId());
//				ex.setItemName(expense.getItemName());
//				ex.setPrice(expense.getPrice());
//				ex.setPurchaseDate(expense.getPurchaseDate()); 
				
				session.update(product);
				
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

	@Override
	public List<Products> selectAll(int userId) {
		List<Products> proList = hibernateTemplate.execute(new HibernateCallback<List<Products>>() {

			@Override
			public List<Products> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Products where userId = ?");
				q.setInteger(0, userId);
				List<Products> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return proList;
	}
	
	@Override
	public List<Products> selectAllProduct(Products product) {
		List<Products> proList = hibernateTemplate.execute(new HibernateCallback<List<Products>>() {

			@Override
			public List<Products> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Products");
				List<Products> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return proList;
	}

	@Override
	public List<Products> selectUserProduct(int productId) {
		List<Products> proList = hibernateTemplate.execute(new HibernateCallback<List<Products>>() {

			@Override
			public List<Products> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Products where product_id  = ?");
				q.setInteger(0, productId);
				List<Products> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return proList;
		
		
	}


}
