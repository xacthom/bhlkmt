package com.teambh.bhlkmt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.teambh.bhlkmt.dao.ProductDAO;
import com.teambh.bhlkmt.entity.Product;
import com.teambh.bhlkmt.service.ProductService;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO ProductDAO;

	@Override
	public void persist(Product transientInstance) {
		ProductDAO.persist(transientInstance);
	}

	@Override
	public void remove(Product persistentInstance) {
		ProductDAO.remove(persistentInstance);
	}

	@Override
	public Product merge(Product detachedInstance) {
		Product result = ProductDAO.merge(detachedInstance);
			return result;
	}

	@Override
	public Product findById(int id) {
		Product instance = ProductDAO.findById(id);
			return instance;
	}

	@Override
	public List<Product> fetchAll() {
		List<Product> instances = ProductDAO.fetchAll();
			return instances;
	}
}
