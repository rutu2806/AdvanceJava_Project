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
import com.cdac.dto.Cart;
import com.cdac.dto.Products;

@Repository
public class CartDaoImple implements CartDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void insertProductCart(Cart cart) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(cart);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

	@Override
	public List<Cart> selectAllCart() {
		List<Cart> list = hibernateTemplate.execute(new HibernateCallback<List<Cart>>() {

			public List<Cart> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Cart ");				
				List<Cart> li = q.list();			
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return list;
	}

	@Override
	public void deleteProductCart(int cart_id) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Cart cart = new Cart(cart_id);
				session.delete(cart);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

	@Override
	public List<Cart> selectAllcp(Cart cart) {
		List<Cart> proList = hibernateTemplate.execute(new HibernateCallback<List<Cart>>() {

			@Override
			public List<Cart> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Cart");
				List<Cart> li = q.list();
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
