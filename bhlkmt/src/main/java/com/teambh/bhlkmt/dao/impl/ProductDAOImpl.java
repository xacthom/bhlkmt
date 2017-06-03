package com.teambh.bhlkmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teambh.bhlkmt.dao.ProductDAO;
import com.teambh.bhlkmt.entity.Product;
import com.teambh.bhlkmt.util.HibernateUtil;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public void persist(Product transientInstance) {
		hibernateUtil.persist(transientInstance);
	}

	@Override
	public void remove(Product persistentInstance) {
		hibernateUtil.remove(persistentInstance);
	}

	@Override
	public Product merge(Product detachedInstance) {
		Product result = hibernateUtil.merge(detachedInstance);
		return result;
	}

	@Override
	public Product findById(int id) {
		Product instance = hibernateUtil.findById(id, Product.class);
		return instance;
	}

	@Override
	public List<Product> fetchAll() {
		List<Product> instances = hibernateUtil.fetchAll(Product.class);
		return instances;
	}
}
